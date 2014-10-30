class HomeController < ApplicationController
  def hello
    Pusher['peter_channel'].trigger('peter_event', {
      message: 'hello peter'
    })
  end
end
