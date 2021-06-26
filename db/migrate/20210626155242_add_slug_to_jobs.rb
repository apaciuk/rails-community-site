class AddSlugToJobs < ActiveRecord::Migration[6.0]
  def self_up
    add_column :jobs, :slug, :string
    add_index :jobs, :slug
  end

  def self_down
    remove_column :jobs, :slug, :string
    remove_index :jobs, :slug
  end
end
