class MessagesBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message, received_id, conversation_id, current_user)
    ActionCable.server.broadcast "user_conversation_#{received_id}", {conversation_id: conversation_id,
                                                                      messages: render_message(message, current_user),
                                                                      box_chat: render_box(conversation_id, received_id, current_user)}
  end

  private

  def render_message(message, current_user)
    ApplicationController.renderer.render(partial: 'messages/message', locals: {message: message, current_user: current_user})
  end

  def render_box(conversation_id, received_id, current_user)
    conversation = Conversation.find(conversation_id)
    received = User.find(received_id)
    ApplicationController.renderer.render(partial: 'conversations/chat_box', locals: {conversation: conversation, received: received, current_user: current_user})
  end
end
