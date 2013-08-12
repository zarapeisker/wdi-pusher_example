class MainController < ApplicationController
  def index
    @messages = Message.order("created_at DESC")
  end

  def chat
    @message = params[:message][:text]
    @user = params[:user][:username]
    Message.create(content: @message, room: 'chat')
    User.create(username: @user)
    Pusher['chat'].trigger('new_message', {
      message: @message,
      user: @user
    })
    render nothing: true
  end

  def other_chat
    @message = params[:message][:text]
    @user = params[:user][:username]
    Message.create(content: @message, room: 'other_chat')
    User.create(username: @user)
    Pusher['other_chat'].trigger('new_message', {
      message: @message,
      user: @user
    })
    render nothing: true
  end
end
