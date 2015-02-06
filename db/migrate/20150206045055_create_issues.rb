class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :url
      t.integer :user_id
      t.string :content
      t.string :email
      t.string :status

      t.timestamps
    end
  end
end
