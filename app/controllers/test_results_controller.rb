class TestResultsController < ApplicationController
  before_filter :load_questions
  def new
    @test_result = TestResult.new
  end

  def create
    @test_result = TestResult.new
    @test_result.answer_ids = (params[:answers] || {}).collect { |k, v| v }
    if @test_result.valid?
      render :text => @test_result.points
    else
      render :action => "new"
    end
  end

  protected
  def load_questions
    @questions = Question.all(:include => :answers)
  end
end
