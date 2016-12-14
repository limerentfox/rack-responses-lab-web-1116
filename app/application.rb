class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now.hour

    if time >= 12
      resp.write "Good Afternoon!\n"
      resp.write "It is #{time}:#{Time.now.min}\n"

    else
      resp.write "Good Morning!\n"
      resp.write "It is #{time}:#{Time.now.min}\n"
    end
    resp.finish
  end

end
