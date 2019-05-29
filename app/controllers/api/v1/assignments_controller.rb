class Api::V1::AssignmentsController < ApplicationController


  def index
    @assignments = Assignment.all
    render json: @assignments
  end

  def update
    @assignment = Assignment.find(params[:id])
    @assignment.completed = params["completed"]
    @assignment.save
    render json: @assignment
  
  end


  def create 
    @assignment = Assignment.create(assignment_params) 
    render json: @assignment 
  end 




  private
  def assignment_params
    params.require(:assignment).permit(:title, :description, :issue_id, :employee_id)
  end

end
