class CreateAppearanceRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :appearance_relationships do |t|
      t.references :spell_card, foreign_key: true
      t.references :game_title, foreign_key: true

      t.timestamps
    end

    add_index :appearance_relationships, [:spell_card_id, :game_title_id], unique: true, name: 'appearance__relationships_uniqueness_index'
  end
end
