class Job < ApplicationRecord
  belongs_to :user
  has_rich_text :description
  has_rich_text :company_description
  has_one_attached :company_logo
end
