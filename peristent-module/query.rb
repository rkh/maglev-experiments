raise "please run some_class.rb first" unless Maglev::PERSISTENT_ROOT[:some_instance]
Maglev::PERSISTENT_ROOT[:some_instance].got_instance_methods?
