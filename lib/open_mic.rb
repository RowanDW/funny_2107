class OpenMic

  attr_reader :location, :date, :performers
  def initialize(info)
    @location = info[:location]
    @date = info[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    all_jokes = @performers.map do |user|
      user.jokes
    end
    all_jokes.flatten!
    all_jokes != all_jokes.uniq
  end
end
