class CreateVowelsChanges < ActiveRecord::Migration[7.1]
  def change
    create_table :vowels_changes do |t|
      t.string :scheme, null: false, index: {unique: true}
      t.string :assoc
      t.string :sample

      t.timestamps
    end
  end
end
