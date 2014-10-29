class HomeController < ApplicationController
  def hello
    Pusher['test_channel'].trigger('my_event', {
      message: 'hello world'
    })
  end
end
