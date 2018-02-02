class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    job = Job.create(params[:job].permit!)
    redirect_to root_path if job.persisted?
  end

end
