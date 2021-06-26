class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :link_to_apply
      t.string :company_name
      t.string :company_website
      t.string :headquarters
      t.string :role_type
      t.string :compensation_range
      t.string :compensation_type
      t.string :upsell_type
      t.boolean :remote
      t.string :years_of_experience
      t.string :status, default: "pending"
      t.datetime :published_at
      t.datetime :featured_until
      t.boolean :featured, default: false
      t.integer :estimated_hours
      t.integer :price
      t.references :user
     

      t.timestamps
    end
  end
end
