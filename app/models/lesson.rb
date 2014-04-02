

class Lesson < ActiveRecord::Base

  belongs_to :section
  validates :name, :presence => true, :uniqueness => true
  validates :number, :uniqueness => true

  def next
    Lesson.where("number > #{self.number}").sort_by {|x| x.number}.first
  end

  def previous
    Lesson.where("number < ?", self.number).order(:number).last
  end

end
