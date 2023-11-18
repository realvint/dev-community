class WorkExperiencesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_work_experience, only: %i[edit update destroy]

  def index; end

  def new
    @work_experience = current_user.work_experiences.new
  end

  def create
    @work_experience = current_user.work_experiences.new(work_experience_params)
    @work_experience.save

    respond_to do |format|
      format.turbo_stream
    end
  end

  def edit; end

  def update
    @work_experience.update(work_experience_params)

    respond_to do |format|
      format.turbo_stream
    end
  end

  def destroy; end

  private

  def set_work_experience
    @work_experience = current_user.work_experiences.find(params[:id])
  end

  def work_experience_params
    params.require(:work_experience).permit(:start_date,
                                            :end_date,
                                            :currently_working_here,
                                            :company,
                                            :employment_type,
                                            :location,
                                            :location_type,
                                            :description,
                                            :job_title)
  end
end
