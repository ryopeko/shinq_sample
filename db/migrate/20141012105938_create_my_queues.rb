class CreateMyQueues < ActiveRecord::Migration
  def change
    create_table :my_queues, {id: false, options: "ENGINE=QUEUE"} do |t|
      t.string :job_id, null: false
      t.string :title
      t.text :desc

      t.datetime :enqueued_at, null: false
    end
  end
end
