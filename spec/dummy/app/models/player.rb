class Player < ActiveRecord::Base
  # attributes
  attr_accessible :email,
                  :firstname,
                  :lastname,
                  :mobile

  # validations
  validates :email, :presence => true,
                    :uniqueness => true
  validates :firstname, :presence => true
  validates :lastname, :presence => true
end
