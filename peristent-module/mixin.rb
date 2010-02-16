Maglev.persistent do
  module Mixin
    
    module InstanceMethods
      def got_instance_methods?
        true
      end
    end
    
    module ClassMethods
      def got_class_methods?
        true
      end
    end
    
    def self.included(klass)
      super
      klass.maglev_persistable
      Maglev.persistent do
        klass.send :include, InstanceMethods
        klass.extend ClassMethods
      end
    end
    
  end
end

Maglev.commit_transaction
