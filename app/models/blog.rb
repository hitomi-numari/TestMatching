class Blog < ApplicationRecord
  belongs_to :user
  has_many :apply_to_blogs, dependent: :destroy
  has_many :favorite_users, through: :apply_to_blogs, source: :user
end
