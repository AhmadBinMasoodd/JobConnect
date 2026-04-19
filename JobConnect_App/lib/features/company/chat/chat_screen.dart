import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/common/widgets/textfields/custom_text_field.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';

import 'widgets/chat_conversation_card.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> conversations = [
      {
        'name': 'John Doe',
        'lastMessage': 'Thanks for your interest!',
        'timeText': '2h ago',
        'unreadCount': 2,
        'avatarText': 'TC',
        'isOnline': true,
      },
      {
        'name': 'Sarah Wilson',
        'lastMessage': 'When can you start?',
        'timeText': '5h ago',
        'unreadCount': 0,
        'avatarText': 'SX',
        'isOnline': false,
      },
      {
        'name': 'Mike Johnson',
        'lastMessage': 'Great portfolio!',
        'timeText': '1d ago',
        'unreadCount': 1,
        'avatarText': 'DA',
        'isOnline': true,
      },
    ];

    return Scaffold(
      appBar: UAppBar(
        showBackArrow: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Message',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: UColors.white,
                    fontFamily: 'Arimo',
                  ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: UColors.primaryColor,
            padding: UPadding.screenPadding,
            child: const CustomTextField(
              isLabel: false,
              hintText: 'Search Conversation',
              prefixIcon: Icons.search,
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: UPadding.screenPadding,
              itemCount: conversations.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 24,
                    ),
                    decoration: BoxDecoration(
                      color: UColors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: UColors.lightGray),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.archive_outlined,
                          color: UColors.gray,
                          size: 24,
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            'Archived Chats',
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: UColors.mutedColorDark,
                                  fontFamily: 'Arimo',
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        const Icon(
                          Icons.chevron_right,
                          color: UColors.gray,
                        ),
                      ],
                    ),
                  );
                }

                final Map<String, dynamic> chat = conversations[index - 1];
                return ChatConversationCard(
                  name: chat['name'] as String,
                  lastMessage: chat['lastMessage'] as String,
                  timeText: chat['timeText'] as String,
                  avatarText: chat['avatarText'] as String,
                  unreadCount: chat['unreadCount'] as int,
                  isOnline: chat['isOnline'] as bool,
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: index == 0 ? USizes.spaceBtwSections : USizes.md,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
