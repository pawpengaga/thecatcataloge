class Article < ApplicationRecord
  Kinds = %w[like neutral dislike].freeze
  KindsSpanish = {"like" => "Me gusta", "neutral" => "Normal", "dislike" => "No me gusta"}.freeze

  
  belongs_to :client
  has_many :reactions, dependent: :destroy
  has_many :opinions, dependent: :destroy
end
