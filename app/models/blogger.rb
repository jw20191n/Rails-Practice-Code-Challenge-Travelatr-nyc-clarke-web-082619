class Blogger < ApplicationRecord
    has_many :posts
    has_many :destination, through: :posts

    validates :name, uniqueness: true
    validates :age, numericality: { greater_than: 0}
    validates :bio, length: { minimum: 30 }
end
