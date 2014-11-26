class WorkerName < ActiveJob::Base
  queue_as :worker_names

  def perform(args)
    p args
    #do something
  end
end
