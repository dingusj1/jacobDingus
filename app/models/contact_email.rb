class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors[attribute] << (options[:message] || "is not an email") unless
      value =~ /^[a-zA-Z0-9\+\.]+\@[a-zA-Z0-9]+\.[a-zA-Z0-9]{2,}$/
  end
end

class TextValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors[attribute] << (options[:message] || "is not text") unless
      value =~ /^[a-zA-Z0-9\s\.\\\:]*$/
  end
end

class ContactEmail < ActiveRecord::Base
  validates_presence_of :name, :address, :subject, :body
  validates :name, :text => true
  validates :address, :email => true
  validates :subject, :text => true
end
