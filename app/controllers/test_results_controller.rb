class TestResultsController < ApplicationController
  def new
    @test_result = TestResult.new
    @questions = Question.all(:include => :answers)
  end

  def create
    @test_result = TestResult.new
    @test_result.answer_ids = params[:answers].collect { |k, v| v }
    if @test_result.valid?
      render :text => "Ok"
    else
      render :text => "WTF"
    end
  end
end
