class JobsController < ApplicationController
  
  before_action :find_job, only: [:show,:update,:destroy,:edit]
  def index
    @job = Job.all.order("created_at DESC")
  end
  
  def show
   
  end
   
  def new
    @job = Job.new
  end
  
  def create
    @job = Job.new(jobs_params)
    if @job.save
      redirect_to @job
    else
      render('new')
    end
  end
  
  def edit
    
  end
  
  def update
    if @job.update(jobs_params)
      redirect_to @job
    else
      render('edit')
    end
  end
  
  def destroy
    @job.destroy
    redirect_to root_path
  end
  
  
  private
    def jobs_params
     params.require(:job).permit(:job, :description, :company, :url) 
    end
    
    def find_job
      @job = Job.find(params[:id])
    end
end
