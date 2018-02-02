class JobsController < ApplicationController

  before_action :find_job, only: [:show, :destroy]

  def index
    @jobs = Job.all
  end

  def show;end

  def new
    @job = Job.new
  end

  def create
    job = Job.create(params[:job].permit!)
    redirect_to root_path if job.persisted?
  end

  def destroy
    @job.destroy
  end

  private

  def find_job
    @job = Job.find(params[:id])
  end

end
