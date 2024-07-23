
Redmine::Plugin.register :vendor_master do
    name 'Vendor Master plugin'
    author 'Vaibhav Petkar'
    description 'This is a plugin for managing vendors'
    version '0.0.1'
    url 'http://gitbhub.com/example/vendor_master_plugin'
    author_url 'htts://github.com/example/vendor_master_plugin'
  
    menu :admin_menu, :vendor_management, { controller: 'vendor_masters', action: 'index' }, caption: 'Vendor Management', if: Proc.new { User.current.admin? }

  requires_redmine :version_or_higher => '4.0.0'
end