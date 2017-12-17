class CreateUserGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :user_groups do |t|
      t.string :name
      t.belongs_to :user

      t.timestamps
    end
  end
end
