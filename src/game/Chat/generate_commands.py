#!/usr/bin/env python3

import re
import html
import sys
import os
from typing import Dict, List, Tuple, Optional, Set

# Define account types mapping
ACCOUNT_TYPES = {
    "SEC_PLAYER": 0,
    "SEC_MODERATOR": 1,
    "SEC_TICKETMASTER": 2,
    "SEC_GAMEMASTER": 3,
    "SEC_BASIC_ADMIN": 4, 
    "SEC_DEVELOPER": 5,
    "SEC_ADMINISTRATOR": 6,
    "SEC_CONSOLE": 7,
    "0": 0  # Handle numeric security level
}

# Account type names for display
ACCOUNT_TYPE_NAMES = {
    0: "Player",
    1: "Moderator",
    2: "Ticket Master",
    3: "Game Master",
    4: "Basic Admin",
    5: "Developer",
    6: "Administrator",
    7: "Console"
}

class Command:
    def __init__(self, name, security_level, allow_console, handler=None, help_text="", table_name=None):
        self.name = name
        self.security_level = security_level
        self.allow_console = allow_console
        self.handler = handler
        self.help_text = help_text
        self.table_name = table_name  # Name of the table if this command has subcommands
        self.children = []  # List of subcommands
        self.parent = None  # Reference to parent command
        self.level = 0  # Indentation level

    def __repr__(self):
        return f"Command('{self.name}', sec={self.security_level}, console={self.allow_console}, children={len(self.children)})"
    
    def get_full_name(self):
        """Get the full command path (parent command + this command)."""
        if self.parent and self.parent.name:
            prefix = self.parent.get_full_name()
            if self.name:
                return f"{prefix} {self.name}"
            return prefix
        return self.name

def extract_command_tables(cpp_content):
    """Extract all command tables from the C++ code."""
    # First, find all command table definitions
    table_definitions = {}
    table_pattern = r'static\s+ChatCommand\s+(\w+)(?:CommandTable)?\[\]\s*=\s*\{([^;]+?)(?:\s*\};\s*)'
    
    for match in re.finditer(table_pattern, cpp_content, re.DOTALL):
        table_name = match.group(1)
        # Standardize the table name to include CommandTable suffix
        if not table_name.endswith("CommandTable") and not table_name.endswith("Table"):
            table_name = table_name + "CommandTable"
        
        table_content = match.group(2)
        table_definitions[table_name] = table_content
    
    # Find the getCommandTable function to identify the root command table
    root_table_match = re.search(r'ChatCommand\s*\*\s*ChatHandler::getCommandTable\(\)\s*\{(.*?)\s*return\s+(\w+);', cpp_content, re.DOTALL)
    root_table_name = "commandTable"  # Default
    if root_table_match:
        root_table_name = root_table_match.group(2)
    
    # Process each table to extract commands
    command_tables = {}
    for table_name, table_content in table_definitions.items():
        command_tables[table_name] = parse_command_table(table_content, table_name)
    
    # Build the command hierarchy
    root_commands = command_tables.get(root_table_name, [])
    connect_command_hierarchy(root_commands, command_tables)
    
    return root_commands

def parse_command_table(table_content, table_name):
    """Parse a command table content into a list of Command objects."""
    commands = []
    
    # Split the table content into individual command entries
    # Each entry follows pattern: { "name", SEC_LEVEL, console_bool, handler_func, "help_text", subcommand_table }
    entries = []
    
    # Handle nested braces for proper extraction
    depth = 0
    start = 0
    
    for i, char in enumerate(table_content):
        if char == '{':
            if depth == 0:
                start = i
            depth += 1
        elif char == '}':
            depth -= 1
            if depth == 0 and i > start:
                entries.append(table_content[start:i+1])
    
    for entry in entries:
        # Skip the null terminator entry
        if "nullptr" in entry and not re.search(r'"[^"]*"', entry):
            continue
        
        # Extract name
        name_match = re.search(r'"([^"]*)"', entry)
        if not name_match:
            continue
        name = name_match.group(1)
        
        # Skip nullptr entry
        if name == "nullptr":
            continue
        
        # Extract security level
        sec_level_match = re.search(r',\s*(SEC_\w+|0)\s*,', entry)
        security_level = sec_level_match.group(1) if sec_level_match else "SEC_PLAYER"
        
        # Extract console flag
        console_match = re.search(r',\s*(true|false)\s*,', entry)
        allow_console = console_match and console_match.group(1) == "true"
        
        # Extract handler
        handler_match = re.search(r',\s*(true|false)\s*,\s*(?:nullptr|&ChatHandler::Handle(\w+)Command)\s*,', entry)
        handler = handler_match.group(2) if handler_match and handler_match.group(2) else None
        
        # Extract help text
        help_match = re.search(r',\s*"([^"]*)"', entry)
        help_text = help_match.group(1) if help_match else ""
        
        # Extract subcommand table reference
        # Look for a table reference in the last field
        table_ref_match = re.search(r',\s*([a-zA-Z0-9_]+(?:CommandTable|Table))\s*(?:,|\})', entry)
        subcommand_table = table_ref_match.group(1) if table_ref_match else None
        
        command = Command(name, security_level, allow_console, handler, help_text, subcommand_table)
        commands.append(command)
    
    return commands

def connect_command_hierarchy(commands, command_tables):
    """Connect commands to their subcommands based on table references."""
    for command in commands:
        if command.table_name and command.table_name in command_tables:
            children = command_tables[command.table_name]
            command.children = children
            
            # Set parent reference for each child
            for child in children:
                child.parent = command
            
            # Process children's children recursively
            connect_command_hierarchy(children, command_tables)

def generate_command_list(commands):
    """Generate the hierarchical command list with required account types."""
    result = []
    
    # Process commands and their subcommands
    process_command_level(commands, result, 0)
    
    return result

def process_command_level(commands, result, level):
    """Process commands at a specific hierarchy level."""
    for cmd in commands:
        # Skip empty named commands (default handlers)
        if cmd.name == "":
            continue
            
        # Get the full command path
        full_name = cmd.get_full_name()
        
        # Get the security level in readable format
        security_level = ACCOUNT_TYPES.get(cmd.security_level, 0)
        security_name = ACCOUNT_TYPE_NAMES.get(security_level, "Unknown")
        
        # Add indentation based on level
        indent = "  " * level
        
        # Add command to result
        result.append(f"{indent}{full_name} (Requires: {security_name})")
        
        # Process subcommands
        if cmd.children:
            process_command_level(cmd.children, result, level + 1)

def generate_html(command_list):
    """Generate HTML output for the command list."""
    html_output = """<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>World of Warcraft Server Command List</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f5f5f5;
        }
        
        h1, h2 {
            color: #1a237e;
        }
        
        .command-list {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
            padding: 20px;
            margin-bottom: 30px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        
        pre {
            font-family: monospace;
            background-color: #f8f8f8;
            padding: 15px;
            border-radius: 4px;
            border: 1px solid #e0e0e0;
            overflow-x: auto;
        }
        
        .search-container {
            margin-bottom: 20px;
        }
        
        #searchInput {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        
        .highlight {
            background-color: yellow;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>World of Warcraft Server Command List</h1>
    <p>Generated from command table in Chat.cpp</p>
    
    <div class="search-container">
        <input type="text" id="searchInput" placeholder="Search for commands...">
    </div>
    
    <div class="command-list">
        <pre id="commandText">"""
    
    # Add all commands to the HTML
    for cmd in command_list:
        html_output += cmd + "\n"
    
    html_output += """</pre>
    </div>
    
    <script>
        document.getElementById('searchInput').addEventListener('keyup', function() {
            const searchTerm = this.value.toLowerCase();
            const text = document.getElementById('commandText').innerText;
            const lines = text.split('\\n');
            
            let newText = '';
            for (const line of lines) {
                if (line.toLowerCase().includes(searchTerm)) {
                    // Create a highlighted version of the line
                    const lowerLine = line.toLowerCase();
                    const index = lowerLine.indexOf(searchTerm);
                    if (index !== -1) {
                        const before = line.substring(0, index);
                        const matched = line.substring(index, index + searchTerm.length);
                        const after = line.substring(index + searchTerm.length);
                        newText += `${before}<span class="highlight">${matched}</span>${after}\\n`;
                    } else {
                        newText += line + '\\n';
                    }
                }
            }
            
            if (searchTerm === '') {
                document.getElementById('commandText').innerHTML = text;
            } else {
                document.getElementById('commandText').innerHTML = newText || 'No matching commands found.';
            }
        });
    </script>
</body>
</html>"""
    
    return html_output

def main():
    # Parse command line arguments
    if len(sys.argv) > 1:
        file_path = sys.argv[1]
    else:
        file_path = 'Chat.cpp'  # Default file name
    
    if not os.path.exists(file_path):
        print(f"Error: File '{file_path}' not found.")
        print("Usage: python script.py [path_to_Chat.cpp]")
        sys.exit(1)
    
    print(f"Parsing commands from '{file_path}'...")
    
    # Read the content of Chat.cpp
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except UnicodeDecodeError:
        try:
            with open(file_path, 'r', encoding='latin-1') as f:
                content = f.read()
        except Exception as e:
            print(f"Error reading file: {str(e)}")
            sys.exit(1)
    
    # Extract command tables and build hierarchy
    commands = extract_command_tables(content)
    if not commands:
        print("Error: Failed to extract command tables.")
        sys.exit(1)
    
    print(f"Successfully extracted command tables")
    
    # Generate the command list
    command_list = generate_command_list(commands)
    
    # Generate HTML
    html_output = generate_html(command_list)
    
    # Output file name
    output_file = 'wow_command_list.html'
    
    # Write to output file
    try:
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write(html_output)
        print(f"HTML command list generated successfully: {output_file}")
    except Exception as e:
        print(f"Error writing output file: {str(e)}")
        sys.exit(1)

if __name__ == "__main__":
    try:
        main()
    except Exception as e:
        print(f"Unexpected error: {str(e)}")
        import traceback
        traceback.print_exc()
        sys.exit(1)