class CreateStandrds < ActiveRecord::Migration
  def change
    create_table :standrds do |t|
      t.string :name

      t.timestamps
    end
  end
end
