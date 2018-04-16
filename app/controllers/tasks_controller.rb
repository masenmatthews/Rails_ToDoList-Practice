class TasksController < ApplicationController
      def create
      @list = List.find(params[:list_id])
      @task = @list.tasks.new(task_params)
      if @task.save
        redirect_to list_path(@task.list)
      else
        render :new
      end
    end
    def update
      @task= Task.find(params[:id])
      if @task.update(list_params)
        redirect_to tasks_path
      else
        render :edit
      end
    end
    def destroy
      @task = Task.find(params[:id])
      @task.destroy
      redirect_to tasks_path
    end
  private
    def task_params
      params.require(:task).permit(:description)
    end
  end
