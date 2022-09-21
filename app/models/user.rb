# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  USER_ROLES = {
    'normal_user': 'normal_user',
    'manager': 'manager',
    'admin': 'admin'
  }.freeze
  enum user_role: USER_ROLES
  has_one_attached :image
  has_rich_text :notes
  belongs_to :company
  validates :user_role, presence: true

  def is_normal_user?
    user_role == 'normal_user'
  end

  def is_manager?
    user_role == 'manager'
  end

  def is_admin?
    user_role == 'admin'
  end
end
