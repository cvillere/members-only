class Post < ApplicationRecord

  validates :author, presence: true
  validates :title, presence: true
  validates :body, presence: true

  belongs_to :user

end
