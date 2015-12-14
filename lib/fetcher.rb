require "net/http"
require "json"

class Fetcher

  def fetch
    response
  end

  def as_a_list(friends=nil, result=[])
    friends ||= response["friends"]

    friends.each do |friend|
      result << friend
      as_a_list(friend["friends"], result)
    end

    result
  end

  private

  def response
    JSON.parse(raw_response)
  end

  def raw_response
    #@raw_response ||= Net::HTTP.get(uri)
    raise "Really expensive operation"
  end

  def uri
    @uri ||= URI("http://mentoring-server.herokuapp.com/recursion/friends/1.json")
  end

end
