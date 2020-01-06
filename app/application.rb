class Application
    def call(env)
        return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
    end

    def pretty_response
        Time.now.hour <= 12 ?  ["Good Morning!"] : ["Good Afternoon!"]
    end
end