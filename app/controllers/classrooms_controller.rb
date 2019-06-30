require 'pry'
class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    @students = @classroom.students
  end

  def index
    @classrooms = Classroom.all
  end

  def new
    @classroom = Classroom.new()

  end
end

# def classroom_params
#   params.require(:student).permit(:name, :birthday, :hometown)
# end