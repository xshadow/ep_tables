author:
  name: 'shadow'
  email: 'shadow@systemli.org'
name: 'ep_tables_ssl'
description: 'Adds tables to etherpad-lite - full ssl support'
version: '0.0.3'
repository:
  type: 'git'
  url: 'git://github.com/xshadow/ep_tables.git'
scripts:
  prepublish: """
    ./node_modules/.bin/livescript -j package.ls > package.tmp &&
    mv package.tmp package.json &&
    ./node_modules/.bin/livescript -bc -o static/js src/js
  """
engines: {node: '*'}
dependencies: {}
devDependencies:
  LiveScript: \1.1.x
optionalDependencies: {}
