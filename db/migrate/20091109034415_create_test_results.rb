class CreateTestResults < ActiveRecord::Migration
  def self.up
    create_table :test_results do |t|
      t.integer :uid

      t.timestamps
    end

    create_table :answers_test_results, :id => false do |t|
      t.integer :answer_id
      t.integer :test_result_id
    end
  end

  def self.down
    drop_table :test_results
    drop_table :answers_test_results
  end
end
