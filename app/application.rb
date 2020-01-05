class Application
    
    def call (env)
        resp = Rack::Response.new
        t = Time.now
        hour = t.hour
        if hour < 12
            resp.write "Good morning!"
        else
            resp.write "Good afternoon!"
        end

        resp.finish
    end

end