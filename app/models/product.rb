class Product < ApplicationRecord
    has_many_attached :images do |attachable|
      attachable.variant :thumb, resize_to_limit: [50, 50]
    end

    belongs_to :category

    validates :price, numericality: { greater_than_or_equal_to: 0, precision: 2 }
  end
  