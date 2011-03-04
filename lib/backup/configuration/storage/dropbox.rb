# encoding: utf-8

module Backup
  module Configuration
    module Storage
      class Dropbox < Base
        class << self

          ##
          # Dropbox user credentials
          attr_accessor :email, :password

          ##
          # Dropbox API credentials
          attr_accessor :api_key, :api_secret

        end
      end
    end
  end
end