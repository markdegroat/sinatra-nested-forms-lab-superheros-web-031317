class Member
  @@ALL = []

  attr_accessor :name, :power, :bio

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    @@ALL << self
  end

  def self.all
    @@ALL
  end
end
