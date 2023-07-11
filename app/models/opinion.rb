class Opinion < ApplicationRecord
  belongs_to :article
  belongs_to :client
  has_many :reactions
end
