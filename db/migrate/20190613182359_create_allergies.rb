class CreateAllergies < ActiveRecord::Migration[5.2]
  def change
    create_table :allergies do |t|
      t.integer :ingredient_id
      t.integer :user_id

      t.timestamps
    end
  end
end
