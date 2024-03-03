class CreatePossessivePronouns < ActiveRecord::Migration[7.1]
  def change
    create_table :possessive_pronouns do |t|
      t.references :personal_pronoun, null: false, foreign_key: true
      t.references :number, null: false, foreign_key: true
      t.references :gender, null: false, foreign_key: true
      t.integer :kind, null: false, limit: 1, default: 0
      t.string :integer
      t.string :de, null: false
      t.string :en, null: false
      t.string :ru, null: false
      t.string :ending

      t.timestamps
    end
  end
end
