class CreateSpellCards < ActiveRecord::Migration[5.2]
  def change
    create_table :spell_cards do |t|
      t.string :sign_name
      t.string :spell_name

      t.timestamps
    end

    add_index :spell_cards, [:sign_name, :spell_name], unique: true
  end
end
