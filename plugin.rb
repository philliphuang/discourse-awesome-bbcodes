# name: discourse-awesome-bbcodes-MSPA-Edition
# about: BBCode tags with multiline support. MSPA Edit.
# version: 0.4.0.MSPA
# authors: David Montoya, Charles-Pierre Astolfi, Phillip Huang
# url: https://github.com/philliphuang/discourse-awesome-bbcodes

register_asset 'javascripts/awesome-bbcodes.js', :server_side

# Typeface fonts
register_asset 'stylesheets/typefaces.scss'

# Discourse BBCodes
register_asset 'stylesheets/discourse.scss'

# Details Stylesheet
register_asset 'stylesheets/details.scss'

# Include fonts in asset pipeline
plugin_path = File.expand_path(File.dirname(__FILE__))
Rails.configuration.assets.paths << File.join(plugin_path, "assets", "fonts")
Dir.glob("#{plugin_path}/assets/fonts/*").each do |path|
  Rails.configuration.assets.precompile << path
end
