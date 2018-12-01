class PossessionRelationship < ApplicationRecord
  belongs_to :spell_card
  belongs_to :character
end
