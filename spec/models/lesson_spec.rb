require 'spec_helper'

describe Lesson do
  it { should validate_presence_of :name }

  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'Ruby', :text => 'easier than JavaScript', :number => 4})
      lesson_a = Lesson.create({:name => 'Rails', :text => 'for Ruby', :number => 7})
      lesson_b = Lesson.create({:name => 'JavaScript', :text => 'very hard', :number => 6})
      current_lesson.next.should eq lesson_b
    end
  end

  context '#previous' do
    it 'returns the lesson with the next-lowest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'Ruby', :text => 'easier than JavaScript', :number => 4})
      previous_lesson = Lesson.create({:name => 'Rails', :text => 'for Ruby', :number => 1})
      current_lesson.previous.should eq previous_lesson
    end
  end

  it { should validate_uniqueness_of :name}

  it { should validate_uniqueness_of :number}

  it { should belong_to :section}
end
