class Note < ApplicationRecord

  default_scope { order(created_at: :desc) }

  belongs_to :user
  validates :content, :user_id, presence: true
end
