class CreatePamatatTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :pamatat_tasks do |t|
      t.string :task
      t.date :date
      t.boolean :complete
      t.boolean :important

      t.timestamps
    end
  end
end
