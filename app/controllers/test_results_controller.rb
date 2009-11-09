class TestResultsController < ApplicationController
  def new
    @test_result = TestResult.new
  end

  def create
  end
end
