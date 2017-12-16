class TodosController < ApplicationController

	def create
		@task = Task.find(params[:task_id])
		@user = current_user

		unless @task.completed?(@user)
			@user.tasks << @task
		else
			@user.tasks.delete(@task)
		end

		
		redirect_to root_path
		
	end

	def index	
		@user = current_user
		@tasks = @user.tasks
	end

	def faltantes
		@user = current_user
		@tasks = Task.where.not(id: @user.tasks.ids)
	end
end
