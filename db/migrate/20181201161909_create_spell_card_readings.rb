class CreateSpellCardReadings < ActiveRecord::Migration[5.2]
  def change
    create_table :spell_card_readings do |t|
      t.references :spell_card, foreign_key: true
      t.string :reading

      t.timestamps
    end
  end
end
