class User < ApplicationRecord
  devise :database_authenticatable,
         :registerable,
         :rememberable,
         :validatable,
         :trackable

  PROFILE_TITLE = [
    'Junior Ruby on Rails Developer',
    'Middle Ruby on Rails Developer',
    'Senior Ruby on Rails Developer',
    'Full Stack Ruby on Rails Developer',
    'Senior Java Developer',
    'Senior Front End Developer'
  ].freeze

  has_many :work_experiences, dependent: :destroy

  def name
    "#{first_name} #{last_name}".strip
  end

  def address
    "#{city}, #{state}, #{country}, #{pincode}"
  end

  def self.ransackable_attributes(auth_object = nil)
    %w[city country]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
