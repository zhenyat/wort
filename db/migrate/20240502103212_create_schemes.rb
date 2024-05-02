class CreateSchemes < ActiveRecord::Migration[7.1]
  def change
    create_table :schemes do |t|
      t.string :rule, null: false, index: {unique: true}
      t.string :assoc
      t.string :sample

      t.timestamps
    end
  end
end
