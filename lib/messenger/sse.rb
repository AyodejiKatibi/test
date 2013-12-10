require 'json'

module Messenger
 class SSE
 
  def initialize io
   @io = io
  end

  #optional property with key value pairs
  def write object, options = {}
   options.each do |k,v|
    @io.write "#{k}: #{v}\n"
   end
   @io.write "data: #{JSON.dump(object)}\n\n"
  end

  def close
   @io.close
  end
 end
end
    