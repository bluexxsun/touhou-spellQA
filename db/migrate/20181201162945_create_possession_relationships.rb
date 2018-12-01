class CreatePossessionRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :possession_relationships do |t|
      t.references :spell_card, foreign_key: true
      t.references :character, foreign_key: true

      t.timestamps
    end

    add_index :possession_relationships, [:spell_card_id, :character_id], unique: true, name: 'possession_relationships_uniqueness_index' 
  end
end
