class CreatePersonalPronouns < ActiveRecord::Migration[7.1]
  def change
    create_table :personal_pronouns do |t|
      t.references :case, null: false, foreign_key: true
      t.references :number, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true
      t.references :gender, null: false, foreign_key: true
      t.string :de, null: false
      t.string :en, null: false
      t.string :ru, null: false

      t.timestamps
    end
  end
end
