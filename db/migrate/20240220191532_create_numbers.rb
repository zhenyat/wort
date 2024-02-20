class CreateNumbers < ActiveRecord::Migration[7.1]
  def change
    create_table :numbers do |t|
      t.string :de
      t.string :en
      t.string :ru
      t.string :abbr_de
      t.string :abbr_en
      t.string :abbr_ru

      t.timestamps
    end
  end
end
