class CreateStds < ActiveRecord::Migration
  def change
    create_table :stds do |t|
      t.string :name
      t.string :sirname
      t.string :classes
      t.string :email
      t.string :rollno
      t.string :contact
      t.string :dob
      t.string :gender

      t.timestamps
    end
  end
end
