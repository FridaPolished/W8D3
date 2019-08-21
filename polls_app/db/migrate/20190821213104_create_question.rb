class CreateQuestion < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :question, null: false
      t.integer :poll_id, null: false
    end
    add_index(:questions, :poll_id)
    add_index(:questions, :question)
  end 
end
