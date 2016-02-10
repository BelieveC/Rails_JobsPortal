class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job
      t.string :company
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
