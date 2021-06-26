class AlterUsers < ActiveRecord::Migration[6.0]
  class AlterUsers < ActiveRecord::Migration[6.0]
    def self.up
     add_column :users, :moderator, :boolean, default: false
     add_foreign_key :users, :jobs
  
         
    end
    def self.down
      remove_column :users, :moderator
      remove_foreign_key :users, :jobs
    end
  end
  
end
