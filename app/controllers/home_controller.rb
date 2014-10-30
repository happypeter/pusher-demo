class HomeController < ApplicationController
  def hello
    Pusher.trigger_async('peter_channel', 'peter_event', {message: 'heee'})
  end
end
