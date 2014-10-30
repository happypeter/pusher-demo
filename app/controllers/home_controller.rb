class HomeController < ApplicationController
  def hello
    Pusher.trigger('peter_channel', 'peter_event', {message: 'heee'})
  end
end
