node[:deploy].each do |application, deploy|
  Dir[ "#{deploy[:deploy_to]}/shared/log/*" ].each do |path|
  file path do
    owner "www-data"
    group "www-data"
  end if File.file?(path)
  directory path do
    owner "www-data"
    group "www-data"
  end if File.directory?(path)
end
