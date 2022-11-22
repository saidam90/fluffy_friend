class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :category
      t.string :breed
      t.string :name
      t.integer :age
      t.string :location
      t.string :photo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
