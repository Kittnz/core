#pragma once


struct ChannelMessage
{
	std::string Message;
	std::string ChannelName;
	ObjectGuid PlayerGuid;

	uint32 Language;
	Team ChannelTeam;
	bool bSkipChecks;
};

class ChannelBroadcaster
{
public:

	ChannelBroadcaster();
	~ChannelBroadcaster();

	void EnableSendingMessages();
	void DisableSendingMessages();

	void EnqueueMessage(std::string&& Message, const std::string& ChannelName, ObjectGuid PlayerGuid, uint32 Language, Team ChannelTeam, bool bSkipChecks);

protected:

	void StartThread();
	void Stop();

	void ThreadProc();

	std::queue<ChannelMessage> MessageQueue;
	std::mutex MessageQueueGuard;

	std::thread* Worker = nullptr;
	
	char CacheLineDelimiter[4096];

	std::atomic_bool bShouldSentMessages = false;
	std::atomic_bool bIsWorking = false;
};