# your code goes here
require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
  
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
      @name = name
      @bank_account = bank_account
      @happiness = happiness
      @hygiene = hygiene
    end

    def happiness=(value)
      if value > 10
        @happiness = 10
      elsif value < 0
        @happiness = 0
      else
        @happiness = value
      end
    end

    def hygiene=(value)

      if value > 10
        @hygiene = 10
      elsif value < 0
        @hygiene = 0
      else
        @hygiene = value
      end
    end

    def happy?
        if @happiness <= 7
            false
        else
            true
        end
    end

    def clean?
        if @hygiene <= 7
            false
        else
            true
        end
    end

    def get_paid(amount)
        @bank_account = @bank_account + amount
        "all about the benjamins"
    end

    def take_bath
        @hygiene = @hygiene + 4
        self.hygiene = @hygiene
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        @hygiene = @hygiene - 3
        self.hygiene = @hygiene
        @happiness = @happiness + 2
        self.happiness = @happiness
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
      friend.happiness += 3
      self.happiness += 3
      if self.name == "Felix"
        "Hi Penelope! It's Felix. How are you?"
      else
        "Hi Felix! It's Penelope. How are you?"
      end
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
            'blah blah blah blah blah'
        end
    end
        
end