class Article < ApplicationRecord
  Kinds = %w[like dislike neutral].freeze
  KindsSpanish = {"like" => "Me gusta", "dislike" => "No me gusta", "neutral" => "Neutral"}.freeze

  
  belongs_to :client
  has_many :reactions, dependent: :destroy
  has_many :opinions, dependent: :destroy
end
