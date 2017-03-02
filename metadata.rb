name 'win_base'
maintainer 'John Snow'
maintainer_email 'jsnow@chef.io'
license 'all_rights'
description 'Installs/Configures win_base'
long_description 'Installs/Configures win_base'
version '0.2.1'

depends 'push-jobs'
depends 'audit'
depends 'powershell'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/TheLunaticScripter/win_base/issues' if respond_to?(:issues_url)

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/TheLunaticScripter/win_base' if respond_to?(:source_url)
