class Comment < ActiveRecord::Base
  belongs_to :post
  
  validates :name, :email, :body, presence: { message: 'Please fill in' }
  validates :name, length: { minimum: 2, maximum: 20 }
  validates :body, length: { maximum: 500 }
end
