class StudentsController < ApplicationController
  def new
  	@student = Std.new
  end

  def create
  	
  end

  def index
  	@students = Student.all
  end
end
