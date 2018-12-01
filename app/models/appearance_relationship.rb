class AppearanceRelationship < ApplicationRecord
  belongs_to :spell_card
  belongs_to :game_title
end
