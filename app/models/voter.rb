class Voter < ActiveRecord::Base
  has_many :vote_record
end
