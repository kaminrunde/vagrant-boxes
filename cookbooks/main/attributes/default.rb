# configure Prefork Attributes
default['apache']['prefork']['startservers'] = 1
default['apache']['prefork']['minspareservers'] = 1
default['apache']['prefork']['maxspareservers'] = 30
default['apache']['prefork']['maxclients'] = 225
default['apache']['prefork']['maxrequestsperchild'] = 4000
