require 'spec_helper'

describe Lesson do
  it { should validate_presence_of :name }

  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'Ruby', :text => 'easier than JavaScript', :number => 4})
      next_lesson = Lesson.create({:name => 'Rails', :text => 'for Ruby', :number => 5})
      current_lesson.next.should eq next_lesson
    end
  end

  context '#previous' do
    it 'returns the lesson with the next-lowest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'Ruby', :text => 'easier than JavaScript', :number => 4})
      previous_lesson = Lesson.create({:name => 'Rails', :text => 'for Ruby', :number => 3})
      current_lesson.previous.should eq previous_lesson
    end
  end
end
