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

end
