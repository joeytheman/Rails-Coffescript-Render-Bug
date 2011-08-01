class Chicken < ActiveRecord::Base
validates_length_of :name, :minimum => 40
end
