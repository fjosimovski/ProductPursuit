class Post < ActiveRecord::Base
  belongs_to :user
  validates :description, presence: true, length: { maximum: 60 }
  validates :url, presence:true
  validates :user_id, presence: true
end
