uri = URI.parse(ENV["REDIS_TO_GO_URL"] || "redis://localhost:6379/" )
REDIS = Redis.new('localhost', :port => 6379, :password => uri.password)
