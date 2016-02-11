class AddColumnCategoryIdToJobs < ActiveRecord::Migration
  def up
    add_column :jobs, :category_id, :integer
  end
  def down
    remove_column :jobs, :category_id
  end
end
