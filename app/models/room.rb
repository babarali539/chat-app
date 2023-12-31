class Room < ApplicationRecord
  has_many :participants, dependent: :destroy
  has_many :messages, dependent: :destroy

  validates_uniqueness_of :name

  scope :public_rooms, -> { where(is_private: false) }

  after_create_commit { broadcast_if_public }

  def broadcast_if_public
    if is_private
      broadcast_append_to 'rooms'
    else
      broadcast_append_to 'rooms'
    end
  end

  def self.create_private_room(users, room_name)
    single_room = Room.create(name: room_name, is_private: true)
    users.each do |user|
      Participant.create(user: user, room_id: single_room.id)
    end
    single_room
  end
end
