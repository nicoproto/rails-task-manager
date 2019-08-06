class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.create(task_strong_params)
    redirect_to tasks_path
  end

  def edit
  end

  def update
    task.completed = params[:task][:completed].to_i == 1
    task.update(task_strong_params)

    redirect_to task_path
  end

  def destroy
    task.destroy
    redirect_to tasks_path
  end

  def task_strong_params
    params.require(:task).permit(:title, :details)
  end

  def set_task
    @task = Task.find(params[:id].to_i)
  end
end
