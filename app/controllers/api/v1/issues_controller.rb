class Api::V1::IssuesController < ApplicationController

  def index
    @issues = Issue.all
    render json: @issues

  end

  # def show
  #   @issue = Issue.find(params[:id])
  #   render json: @issue
  # end

  def destroy
    @issue = Issue.find(params[:id])
    @issue.destroy
    render json: @issue
  end

end
