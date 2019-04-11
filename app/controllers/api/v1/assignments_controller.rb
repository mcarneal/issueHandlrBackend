class Api::V1::AssignmentsController < ApplicationController


  def index
    @assignments = Assignment.all
    render json: @assignments

  end
end
