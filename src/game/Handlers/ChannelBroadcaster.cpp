#include <thread>
#include <chrono>
#include "ChannelBroadcaster.h"
#include "ChannelMgr.h"
#include "World.h"

ChannelBroadcaster::ChannelBroadcaster()
{
	StartThread();
}

ChannelBroadcaster::~ChannelBroadcaster()
{
	Stop();
}

void ChannelBroadcaster::StartThread()
{
	Worker = new std::thread([this]()
	{
		ThreadProc();
	});
}

void ChannelBroadcaster::Stop()
{
	if (Worker == nullptr)
	{
		return;
	}
	
	if (Worker->joinable())
	{
		Worker->join();
	}

	delete Worker;
	Worker = nullptr;
}

void ChannelBroadcaster::EnableSendingMessages()
{
	bShouldSentMessages.store(true);
	while (!bIsWorking.load() && !sWorld.IsStopped())
	{
		std::this_thread::sleep_for(std::chrono::milliseconds(0));
	}
}

void ChannelBroadcaster::DisableSendingMessages()
{
	bShouldSentMessages.store(false);
	while (bIsWorking.load())
	{
		std::this_thread::sleep_for(std::chrono::milliseconds(0));
	}
}

void ChannelBroadcaster::EnqueueMessage(std::string&& Message, const std::string& ChannelName, ObjectGuid PlayerGuid, uint32 Language, Team ChannelTeam, bool bSkipChecks)
{
	std::lock_guard guard(MessageQueueGuard);
	MessageQueue.emplace(ChannelMessage{std::move(Message), ChannelName, PlayerGuid, Language, ChannelTeam, bSkipChecks });
}

void ChannelBroadcaster::ThreadProc()
{
	while (!sWorld.IsStopped())
	{
		while (bShouldSentMessages.load() && !sWorld.IsStopped())
		{
			bIsWorking.store(true);

			bool bIsEmpty = false;

			{
				std::lock_guard guard(MessageQueueGuard);

				bIsEmpty = MessageQueue.empty();
				if (!bIsEmpty)
				{
					constexpr int32 MessageLimit = 5;
					int32 MessageIterator = 0;
					do 
					{
						ChannelMessage& ChanMsg = MessageQueue.front();

						ChannelMgr* ChannelManager = channelMgr(ChanMsg.ChannelTeam);
						Channel* TargetChannel = ChannelManager->GetOrCreateChannel(ChanMsg.ChannelName);
						TargetChannel->Say(ChanMsg.PlayerGuid, ChanMsg.Message.c_str(), ChanMsg.Language, ChanMsg.bSkipChecks);

						MessageQueue.pop();
						bIsEmpty = MessageQueue.empty();
						MessageIterator++;
					} while (!bIsEmpty && MessageIterator < MessageLimit);
				}
			}
			if (bIsEmpty)
			{
				std::this_thread::sleep_for(std::chrono::microseconds(500)); // 0.5 ms.
				continue;
			}
		}
		bIsWorking.store(false);

		std::this_thread::sleep_for(std::chrono::milliseconds(1));
	}
}
