class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string :person
      t.integer :amount
      t.string :description
      t.boolean :solved

      t.timestamps
    end
  end
end
