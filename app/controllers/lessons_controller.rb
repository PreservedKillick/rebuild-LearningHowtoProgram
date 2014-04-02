class LessonsController < ApplicationController

  def index
    @lessons = Lesson.order(:number)
    render('lessons/index.html.erb')
  end

  def new
    @lessons = Lesson.order(:number)
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

  def edit
    @lesson = Lesson.find(params[:id])
    render('lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(params[:lesson])
    redirect_to("/lessons/#{@lesson.id}")
  end

  def destroy
    @lesson = Lesson.find(params[:id]).destroy
    redirect_to("/lessons")
  end
end
