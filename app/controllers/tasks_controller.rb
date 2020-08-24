class TasksController < ApplicationController

	before_action :set_goals

	def create
		
		@task = @Goals.task.create(params)

		redirect_to @goals
	end



	private

	def set_goals
		@goals = Goals.find(params[:goal_id])
	end

	def task_params
		@task = @Goals.task.create(params[:task].permit(:content))

	end




end
