class Restaurant < ApplicationRecord
    CATEGORIES = %w(chinese italian japanese french belgian)
    
    validates :name, presence: true
    validates :address, presence: true
    validates :category, presence: true
    validates :category, inclusion: { in: CATEGORIES, message: "%{value} is not an accepted category" }
    
    has_many :reviews, dependent: :destroy
end
