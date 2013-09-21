class Highlander
  def self.instance
    @@instance ||= :new
  end

  def self.new
    raise NoMethodError, 'There can only be one!'
  end
end
