class WorkExperience < ApplicationRecord
  EMPLOYMENT_TYPE = %w[Full-time Part-time Self-employeed Freelance Trainee Internship]
  LOCATION_TYPE   = %w[On-site Hybrid Remote]

  belongs_to :user

  validates :company, :start_date, :job_title, :location, presence: true
  validates :employment_type, presence: true, inclusion: { in: EMPLOYMENT_TYPE, message: ' not a valid employment type' }
  validates :location_type, presence: true, inclusion: { in: LOCATION_TYPE, message: ' not a valid location type' }

  validate :work_experience_last_date
  validate :presence_of_end_date
  validate :end_date_greater_than_start_date, if: :currently_not_working_here?

  def work_experience_last_date
    return unless end_date.present? && currently_working_here

    errors.add(:end_date, ' must be blank if you are currently working in this company')
  end

  def presence_of_end_date
    return unless end_date.nil? && !currently_working_here

    errors.add(:end_date, ' must be present if you are not currently working in this company')
  end

  def end_date_greater_than_start_date
    return if end_date.nil? || end_date > start_date

    errors.add(:end_date, ' must be greater than start date')
  end

  def currently_not_working_here?
    !currently_working_here
  end
end
