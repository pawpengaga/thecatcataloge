class Article < ApplicationRecord
  belongs_to :client
  has_many :reactions, dependent: :destroy
  has_many :opinions, dependent: :destroy
end
