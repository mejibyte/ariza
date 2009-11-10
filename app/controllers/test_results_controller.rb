class TestResultsController < ApplicationController
  before_filter :load_questions
  ensure_application_is_installed_by_facebook_user :only => :new

  def new
    @test_result = TestResult.new
  end

  def create
    @test_result = TestResult.new
    @test_result.answer_ids = (params[:answers] || {}).collect { |k, v| v }
    if @test_result.valid?
      render :action => "show"
    else
      flash[:error] = "Please answer all questions"
      render :action => "new"
    end
  end

  protected
  def load_questions
    @questions = Question.all(:include => :answers)
  end
end
