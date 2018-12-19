class CreatePromises < ActiveRecord::Migration[5.1]
  def change
    create_table :promises do |t|
      t.string :description
      t.string :author

      t.timestamps
    end
  end
end
