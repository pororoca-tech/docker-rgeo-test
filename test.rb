require 'rgeo'
require 'rgeo-geojson'

raise 'This is not right' unless RGeo::Geos.capi_supported?

puts 'hello world of CAPI'
