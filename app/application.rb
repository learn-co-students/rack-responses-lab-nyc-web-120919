require 'pry'

class Application

    
    def call(env)
        resp = Rack::Response.new
    
        my_time = Time.now.hour.to_i
        if my_time >= 12 
            resp.write "/Afternoon/i"
        else
            resp.write "Good Morning"
        end 
        resp.finish
    end

end 