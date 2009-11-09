class TestResult < ActiveRecord::Base
  has_and_belongs_to_many :answers

  validate :must_have_exactly_one_answer_for_each_question


  protected

  def has_exactly_one_answer_for_each_question?
    Question.all.each do |question|
      return false if (answers & question.answers).size != 1
    end
    return true
  end

  def must_have_exactly_one_answer_for_each_question
    unless has_exactly_one_answer_for_each_question?
      errors.add(:answers, "must have exactly one answer for each question")
    end
  end
end
