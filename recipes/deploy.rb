#bash 'apt-get y update' do
#  code 'apt-get -y update'
#  user "root"
#end
#bash 'apt-get install --only-upgrade git-core' do
#  code 'apt-get install -y --only-upgrade git-core'
#  user "root"
#end

#bash 'apt-cache git-core' do
#  code 'apt-cache policy git-core'
#  user "root"
#end

directory  "/srv/www"  do
    mode '0775'
    user 'deploy'
    group 'www-data'
    recursive true
    action :create
end

#directory  "/srv/www/tagr_cms/current/html/uploads/tmp"  do
#    mode '0775'
#    user 'deploy'
#    group 'www-data'
#    recursive true
#    action :create
#end
#directory  "/secure-folder/tagrimages"  do
#    mode '0775'
#    user 'deploy'
#    group 'www-data'
#    recursive true
#    action :create
#end
#
#template "create_thumbs.sh" do
#    path "/root/create_thumbs.sh"
#    source "create_thumbs.sh.erb"
#    owner "root"
#    group "root"
#    mode 0755
#end
#cron 'create_thumbs.sh' do
#    action :create
#    minute '*/1'
#    command '/root/create_thumbs.sh  >> /var/log/apache2/create_thumbs.log 2>&1'
#    user 'root'
#    only_if {File.exists?('/root/create_thumbs.sh')}
#end
