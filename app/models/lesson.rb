class Lesson < ActiveRecord::Base

  validates :name, :presence => true

  def next
    Lesson.find_by_number(self.number + 1)
  end

  def previous
    Lesson.find_by_number(self.number - 1)
  end

end
