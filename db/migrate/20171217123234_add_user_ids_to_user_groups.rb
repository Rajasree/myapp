class AddUserIdsToUserGroups < ActiveRecord::Migration[5.1]
  def change
    add_column :user_groups, :director_id, :integer
    add_column :user_groups, :assistant_director_id, :integer
    add_column :user_groups, :member_id, :integer

    remove_column :user_groups, :user_id
  end
end
