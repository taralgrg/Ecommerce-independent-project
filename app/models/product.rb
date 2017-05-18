class Product < ApplicationRecord
  has_many :order_items, dependent: :destroy
  has_attached_file :image, styles: { large: "600x600", medium: "300x300", thumb: "150x150#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  belongs_to :user
  # has_many :materials, inverse_of: :product, dependent: :destroy
  # accepts_nested_attributes_for :materials, reject_if: :all_blank, allow_destroy: true
  # has_many :ingredients, inverse_of: :product, dependent: :destroy
  # accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
  # has_many :sizes, inverse_of: :product, dependent: :destroy
  # accepts_nested_attributes_for :sizes, reject_if: :all_blank, allow_destroy: true
  # has_many :images, inverse_of: :product, dependent: :destroy
  # accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true
  # belongs_to :category
end
