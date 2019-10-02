replace into migrations values (20191002110137);

-- Remove speed boosters entirely, for now:
delete from miraclerace_gameobject where raceid in (1, 2);
