class TasksController < ApplicationController
  before_action :set_task, only: [ :show, :edit, :update, :destroy ]

  def index
    @tasks = Task.where(done: false)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def show
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.delete
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :done)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
