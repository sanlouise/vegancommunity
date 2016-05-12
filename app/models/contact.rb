class Contact < ActiveRecord::Base 
    
  validates :name, presence: true, length: { in: 2..100 }
  validates :comments, presence: true, length: { in: 10..5000 }
  
  VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, presence: true,
            length: { maximum: 125 },
            format: { with: VALID_EMAIL_REGEX }

end