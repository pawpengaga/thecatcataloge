class Article < ApplicationRecord
  belongs_to :client
  has_many :reactions
  has_many :opinions
end
