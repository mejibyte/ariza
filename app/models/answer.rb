class Answer < ActiveRecord::Base
  belongs_to :question
  validates_presence_of :text, :points
  validates_numericality_of :points, :only_integer => true
end
