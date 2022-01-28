class JobsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @jobs = Job.all
        render 'jobs/index'
    end

    def create
        @job = Job.new(url: params[:url],employer_name: params[:employer_name], employer_description: params[:employer_description], job_title: params[:job_title], 
        job_description: params[:job_description], year_of_experience: params[:year_of_experience], education_requirement: params[:education_requirement], industry: params[:industry],
        base_salary: params[:base_salary], employment_type_id: params[:employment_type_id])
        if @job.save
          render 'jobs/create'
        end
    end

    def jobs_id
        @job = Job.find(params[:id])
        if @job != nil
            render 'jobs/jobs_id'
        end
    end
end

                 