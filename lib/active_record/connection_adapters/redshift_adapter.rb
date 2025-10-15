# frozen_string_literal: true

require 'pg'

require_relative "../tasks/redshift_tasks"

error_message = 'no compatible version of ActiveRecord detected'

case [ActiveRecord::VERSION::MAJOR, ActiveRecord::VERSION::MINOR]
when [8, 1]
  require_relative 'redshift_8_1_adapter'
when [8, 0]
  require_relative 'redshift_8_0_adapter'
when [7, 2]
  require_relative 'redshift_7_2_adapter'
when [7, 1]
  require_relative 'redshift_7_1_adapter'
when [7, 0]
  require_relative 'redshift_7_0_adapter'
else
  raise 'no compatible version of ActiveRecord detected'
end
