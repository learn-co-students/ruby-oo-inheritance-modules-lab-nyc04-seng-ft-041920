module Memorable
    module ClassMethods

        def reset_all
            self.all.clear          # Clears self.all

        end

        def count
            self.all.count          # Counts total elements in self.all
        end

    end

    module InstanceMethods

        def initialize
            self.class.all << self # Shovels self into self.all 
        end
        
    end
end