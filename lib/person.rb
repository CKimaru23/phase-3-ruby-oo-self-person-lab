class Person
  attr_reader :name, :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def bank_account
    @bank_account
  end

  def bank_account=(value)
    @bank_account = value
  end

  def happiness
    @happiness
  end

  def happiness=(value)
    @happiness = [0, [10, value].min].max
  end

  def hygiene
    @hygiene
  end

  def hygiene=(value)
    @hygiene = [0, [10, value].min].max
  end

  def clean?
    hygiene > 7
  end

  def happy?
    happiness > 7
  end

  def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

   private

  def clamp_happiness
    self.happiness = [10, [0, happiness].max].min
  end

  def clamp_hygiene
    self.hygiene = [10, [0, hygiene].max].min
  end
end

person = Person.new("Collins")
puts person.name # => "Collins"
puts person.bank_account # => 25
puts person.happiness # => 8
puts person.hygiene # => 8
