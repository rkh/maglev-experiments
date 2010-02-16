raise "please run mixin.rb first" unless defined? Mixin

class SomeClass
  include Mixin
end

SomeClass.got_class_methods?

Maglev::PERSISTENT_ROOT[:some_instance] = SomeClass.new
Maglev.commit_transaction
