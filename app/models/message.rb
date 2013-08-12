class Message < ActiveRecord::Base
  attr_accessible :content, :room

  belongs_to :user
end
