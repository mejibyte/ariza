class Answer < ActiveRecord::Base
  belongs_to :question
  has_and_belongs_to_many :test_results
  validates_presence_of :text, :points
  validates_numericality_of :points, :only_integer => true
end
