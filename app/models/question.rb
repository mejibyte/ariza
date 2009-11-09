class Question < ActiveRecord::Base
  has_many :answers
  validate :must_have_exactly_three_answers
  validates_presence_of :text

  protected
  def must_have_exactly_three_answers
    errors.add(:answers, "must have exactly three answers") if answers.size != 3
  end
end
