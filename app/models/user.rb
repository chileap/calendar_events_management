# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  last_name              :string
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :string           default("user")
#  sign_in_count          :integer          default(0), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  extend Enumerize
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable, :trackable

  # Enums
  enumerize :role, in: [:user, :admin], default: :user, predicates: true, scope: true

  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
end
