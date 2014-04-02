class LessonsController < ApplicationController

  def index
    @lessons = Lesson.order(:number)
    render('lessons/index.html.erb')
  end

  def new
    @lessons = Lesson.all
    render('lessons/new.html.erb')
  end

  def create
    @lesson = Lesson.create(params[:lesson])
    redirect_to("/lessons/#{@lesson.id}")
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end
end
