require 'messenger/sse'
require 'messenger/sse'
class SensorController < ApplicationController
  include ActionController::Live
  def index
 end
  def temperature
    response.headers['Content-Type'] = 'text/event-stream'
    sse = Messenger::SSE.new(response.stream)
    begin
      loop do
        sse.write({ :temperature => sprintf('%00.01f', 100*rand)}, :event => 'update')
        sleep 0.5
      end 
      rescue
        ensure
        sse.close
      end
  end
end
