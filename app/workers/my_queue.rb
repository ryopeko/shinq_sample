class MyQueue < ActiveJob::Base
  queue_as :my_queues

  def perform(args)
    p args
  end
end
