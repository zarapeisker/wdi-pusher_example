class MainController < ApplicationController
  def index
  end

  def send_message
    @message = params[:message][:text]

    render nothing: true
  end
end
