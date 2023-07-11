class Reaction < ApplicationRecord
  belongs_to :article
  belongs_to :client
  belongs_to :opinion
end
