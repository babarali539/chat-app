class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @room = Room.new
    @rooms = Room.public_rooms
    @users = User.all_except(current_user)
  end

  def create
    @room = Room.create(name: params['room']['name'])
  end

  def show
    @single_room = Room.find(params[:id])
    @rooms = Room.public_rooms
    @users = User.all_except(current_user)
    @room = Room.new
    @message = Message.new

    @messages = @single_room.messages.order(created_at: :desc)
    render 'index'
  end
end
