include_recipe 'rabbitmq'
include_recipe 'rabbitmq::mgmt_console'

rabbitmq_user "nova" do
  password "nova"
  action :add

  permissions ".* .* .*"
  action :set_permissions

  tag "administrator"
  action :set_tags
end
