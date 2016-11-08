class TasksController < ApplicationController
 def index
 @task = Task.all         # GET /restaurants
  end

  def show
  @task = Task.find(params[:id])         # GET /restaurants/:id
  end

  def new
  @task = Task.new    # GET /restaurants/new
  end

  def create
   @task = Task.new(task_params)
   @task.save
   # Will raise ActiveModel::ForbiddenAttributesError
   redirect_to task_path(@task)        # POST /restaurants
  end

  def edit          # GET /restaurants/:id/edit
  @task = Task.find(params[:id])
  end

  def update
  @task = Task.find(params[:id])
    @task.update(task_params)
    # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to task_path(@task)        # PATCH /restaurants/:id
  end

  def destroy
  @task = Task.find(params[:id])
  @task.destroy
  redirect_to tasks_path       # DELETE /restaurants/:id
  end

  def task_params
  # *Strong params*: You need to *whitelist* what can be updated by the user
  # Never trust user data!
  params.require(:task).permit(:title, :description)
  end


end
