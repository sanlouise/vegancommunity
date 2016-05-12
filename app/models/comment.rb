class Comment < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :recipe
  
  validates :user_id, presence: true, numericality: {only_integer: true}
  validates :recipe_id, presence: true, numericality: { only_integer: true }
  validates :body, presence: true, length: { in: 2..500 }
  
end