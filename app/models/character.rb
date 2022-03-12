class Character < ActiveRecord::Base
    # A character belongs to an actor and belongs to a show.
    belongs_to :actor
    belongs_to :show

    def build_show(show_arg)
        self.show = Show.new(show_arg)
    end

    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end

    def build_network(network_arg)
        self.network = Network.new(network_arg)
    end
    
end