class Reaction < ApplicationRecord
  belongs_to :article
  belongs_to :client

  validates :client_id, uniqueness: { scope: :article_id }
end
