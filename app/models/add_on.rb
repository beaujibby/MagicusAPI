class AddOn < ApplicationRecord
  belongs_to :game
  monetize :cost_cents
end
