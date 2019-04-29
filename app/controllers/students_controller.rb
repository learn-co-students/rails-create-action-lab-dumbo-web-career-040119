class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    first = params[:first_name]
    last = params[:last_name]
    @student = Student.create(first_name: first, last_name: last)
    redirect_to @student
  end

end
