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
    @student = Student.new
    if @student.save
      redirect_to @house
    else
      render :new
    end
  end




end
