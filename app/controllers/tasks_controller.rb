class TasksController < ApplicationController
  def create
    @meeting = Meeting.find(params[:meeting_id])
    @task = @meeting.tasks.create(task_params)
    redirect_to meeting_path @meeting
  end

  private
    def task_params
      params.require(:task).permit(:autor, :body)
    end
end
