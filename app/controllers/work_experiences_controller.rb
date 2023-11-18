class WorkExperiencesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_work_experience, only: %i[edit update destroy]

  def index; end

  def new
    @work_experience = current_user.work_experiences.new
  end

  def create; end

  def edit; end

  def update; end

  def destroy; end

  private

  def set_work_experience
    @work_experience = current_user.work_experiences.find(params[:id])
  end

  def work_experience_params
    params.require(:work_experience).permit(:start_date,
                                            :last_date,
                                            :currently_working_here,
                                            :company,
                                            :employment_type,
                                            :location,
                                            :location_type,
                                            :description,
                                            :job_title)
  end
end
