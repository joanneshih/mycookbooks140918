
node[:deploy].each do |application, deploy|
  execute "chmod 777 #{deploy[:deploy_to]}/shared/log/*.log" 
    not_if "test -f #{deploy[:deploy_to]}/shared/log/"
  end
end
