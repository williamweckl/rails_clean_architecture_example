require "core"

module Domains::AccountManagement
  class Engine < ::Rails::Engine

    isolate_namespace Domains::AccountManagement

  end
end

require_relative "../account_management/entities/account"
require_relative "../account_management/entities/customer"

