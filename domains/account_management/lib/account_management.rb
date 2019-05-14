require_relative "../account_management/entities/account"
# require "account_management/interactors"
# require "account_management/repositories"

module Domains
  module AccountManagement
    class Engine < ::Rails::Engine

      isolate_namespace AccountManagement

    end
  end
end
