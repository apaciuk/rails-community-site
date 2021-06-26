class Job < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: :slugged

  belongs_to :user
  has_rich_text :description
  has_rich_text :company_description
  has_one_attached :company_logo

  COMPENSATION_TYPES = [
    "Contract",
    "Full-time"
  ]

  COMPENSATION_RANGES = [
    "50,000 - 60,000",
    "60,000 - 70,000",
    "70,000 - 80,000",
    "80,000 - 90,000",
    "90,000 - 100,000",
    "110,000 - 120,000",
    "120,000 - 130,000",
    "130,000 - 140,000",
    "140,000 - 150,000",
    "160,000 - 170,000",
    "170,000 - 180,000",
    "180,000 - 190,000",
    "190,000 - 200,000",
    "200,000 - 210,000",
    "210,000 - 220,000",
    "220,000 - 230,000",
    "230,000 - 240,000",
    "240,000 - 250,000",
    "greater than 250,000",
  ].freeze

  HOURLY_RANGES = [
    "less than 10",
    "10-30",
    "30-60",
    "60-90",
    "more than 100",
  ].freeze

  JOB_STATUSES = {
    pending: "pending",
    published: "published",
    archived: "archived"
  }.freeze

  YEARS_OF_EXPERIENCE_RANGE = ["1","2","3","4","5","6","8","9","10","more than 10"].freeze

  def pending?
    self.status == Job::JOB_STATUSES[:pending]
  end

  def published?
    self.status == Job::JOB_STATUSES[:published]
  end

  def published?
    self.status == Job::JOB_STATUSES[:archived]
  end


  def should_generate_new_friendly_id?
    if !slug?
      title_changed?
    else
      false
    end
  end

end