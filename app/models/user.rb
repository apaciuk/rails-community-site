class User < ApplicationRecord
  include SimpleDiscussion::ForumUser

  def name
    "#{first_name} #{last_name}"
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :masqueradable, :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable

  has_one_attached :avatar
  has_person_name

  has_many :notifications, as: :recipient
  has_many :services
  has_many :jobs
end


  #t.string "email", default: "", null: false
  #t.string "encrypted_password", default: "", null: false
  #t.string "reset_password_token"
  #t.datetime "reset_password_sent_at"
  #t.datetime "remember_created_at"
  #t.string "first_name"
  #t.string "last_name"
  #t.datetime "announcements_last_read_at"
  #t.boolean "admin", default: false
  #t.datetime "created_at", precision: 6, null: false
  #t.datetime "updated_at", precision: 6, null: false
  #t.boolean "moderator", default: false
  #t.index ["email"], name: "index_users_on_email", unique: true
  #t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true


