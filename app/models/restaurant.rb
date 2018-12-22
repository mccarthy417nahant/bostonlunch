class Restaurant < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :reviews

  validates :name, :address, :phone, :website, :image, presence: true
  validates :phone, format: {with: /\A\(\d{3}\) \d{3}-\d{4}\z/,
    message: "must be in the format (987) 654-3210"}
  validates :website, format: {with: /\Ahttps?:\/\/.*\z/,
    message: "must start with http:// or https://"}
  validates :address, format: {with: /\A\d+[^,]+,[^,]+, [A-Z]{2} \d{5}\z/,
    message: "must be in the format 77 Summer Street, Boston, MA 02110"}


end
