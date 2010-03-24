# encoding: utf-8
if ("".respond_to?(:encoding) && "".encoding.name == "UTF-*") || (!"".respond_to?(:encoding) && !['u','UTF8'].include?($KCODE))
  raise("twitter-text requires the $KCODE variable be set to 'UTF8' or 'u'")
end

# Needed for auto-linking
require 'action_view'

require 'regex'
require 'autolink'
require 'extractor'
require 'unicode'
require 'validation'
