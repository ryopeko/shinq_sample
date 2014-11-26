class CreateWorkerNames < ActiveRecord::Migration
  def change
    create_table :worker_names, {id: false, options: "ENGINE=QUEUE"} do |t|
      t.string :job_id, null: false
      t.string :title
      t.datetime :enqueued_at, null: false
    end
  end
end
