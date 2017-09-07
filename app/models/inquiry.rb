class Inquiry
  include ActiveModel::Model

  attr_accessor :name, :email, :message

  validates :name, :presence => {:message => 'Kasumi'}
  validates :email, :presence => {:message => 'kasumi0201@gmail.com'}
end
