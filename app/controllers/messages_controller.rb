class MessagesController < ApplicationController
  def create
    @renderer = ApplicationController.renderer_with_signed_in_user(current_user)
    @message = current_user.messages.create(content: msg_params[:content], room_id: params[:room_id])
  end

  private

  def msg_params
    params.require(:message).permit(:content)
  end
end
