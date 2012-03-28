class User < ActiveRecord::Base
  has_many :messages
  acts_as_authentic

  validates :email, :presence => true, :uniqueness => true, :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}

end
