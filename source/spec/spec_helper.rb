require_relative '../config/environment'
require 'rspec'

I18n.enforce_available_locales = false
ActiveRecord::Base.logger = nil
