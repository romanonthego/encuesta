class CreateQuizes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
