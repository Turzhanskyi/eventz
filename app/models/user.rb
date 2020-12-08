# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  has_many :registrations, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :Liked_events, through: :likes, source: :event

  validates :name, presence: true

  validates :email, format: { with: /\S+@\S+/ },
                    uniqueness: { case_sensitive: false }
end
