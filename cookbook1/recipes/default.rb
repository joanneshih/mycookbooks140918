node[:deploy].each do |app_name, deploy|
    Chef::Log.debug("Node: #{deploy[:deploy_to]}")
    permissions_command = "sudo chmod -Rf 777 shared/log/"

    bash "change_permissions" do
        Chef::Log.debug("Setting permissions on #{deploy[:deploy_to]}/shared/log/")
        cwd "#{deploy[:deploy_to]}/shared"
        code <<-EOH
            #{permissions_command}
        EOH
    end
end

