class Book < ApplicationRecord
    has_many :reviews, dependent: :destroy
    
    validates :title, presence: true, length: { maximum: 255 }
    validates :author, presence: true
    validates :published_date, presence: true, format: { with: /\A\d{4}-\d{2}-\d{2}\z/, message: "should be in the format YYYY-MM-DD" }
    validates :genre, presence: true
end
