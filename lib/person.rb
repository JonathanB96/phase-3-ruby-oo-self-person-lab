# your code goes here
class Person
    attr_reader :name, :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(value)
      @bank_account = value  
    end

    def happiness=(value)
        @happiness = value
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness= 0        
        end
    end

    def hygiene=(value)       
        @hygiene= value
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene= 0        
        end

    end
    
    def clean?    

        if @hygiene>7
             return true
         else return false
        end
    end

    def happy?
                  
        if @happiness>7
            return true
        else return false
        end

    end

    def get_paid(amount)
        @bank_account+=amount
        return "all about the benjamins"        
        
    end

    def take_bath
        new_value = @hygiene+=4
        self.hygiene=(new_value)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        new_happiness= @happiness+=2
        self.happiness=(new_happiness)
        new_hygiene=@hygiene-=3 
        self.hygiene=(new_hygiene)
        return "♪ another one bites the dust ♫"
        
    end
    def call_friend(friend)
        new_happiness = @happiness+=3 
        self.happiness=(new_happiness)
        friend.happiness=(friend.happiness+3) 

        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness=(@happiness-2)
            friend.happiness=(friend.happiness-2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(@happiness+1)
            friend.happiness=(friend.happiness+1)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

    end







end