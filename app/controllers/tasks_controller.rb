class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @new_task = Task.new(task_params)
    @new_task.save
    redirect_to task_path(@new_task)
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def task_params
    params.require(:task).permit(:name, :description)
  end
end
