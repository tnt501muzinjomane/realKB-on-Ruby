class Category < ActiveRecord::Base
has_many:problems
validates_presence_of :name, :user_id
end
