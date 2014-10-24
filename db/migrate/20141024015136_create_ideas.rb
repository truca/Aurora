class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :description
      t.boolean :display

      t.timestamps
    end
  end
end
