include_attribute 'push-jobs'

override['push_jobs']['allow_unencrypted'] = true

case node['platform_family']
when 'windows'
  default['push_jobs']['package_url']      = 'https://packages.chef.io/files/stable/push-jobs-client/2.1.4/windows/2012/push-jobs-client-2.1.4-1-x86.msi'
  default['push_jobs']['package_checksum'] = '3b979f8d362738c8ac126ace0e80122a4cbc53425d5f8cf9653cdd79eca16d62'
end
