node[:deploy].each do |application, deploy|
  share_file= "#{deploy[:deploy_to]}/shared/log/*"
  execute "chmod -R g+rw #{share_root}" do
  end
end 