require_relative "./fetcher"

class Finder
  def find_by_name(name, friends = nil)
    friends ||= fetcher.fetch["friends"]
    target = nil

    friends.find do |friend|
      target = friend if friend["name"] == name
      target ||= find_by_name(name, friend["friends"])
    end

    target
  end

  private

  def fetcher
    @fetcher = Fetcher.new
  end

end
