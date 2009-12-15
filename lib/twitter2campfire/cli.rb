require 'thor'

class Twitter2Campfire
  class CLI < Thor
    desc "go /path/to/config/file", "Run twitter2campfire"
    def go(path_to_config_file)
      config     = YAML.load(File.read(path_to_config_file))
      cache_file = config['cache_file'] || "/var/lib/twitter2campfire.cache"

      campfire = Tinder::Campfire.new config['subdomain']
      campfire.login config['username'], config['password']
      t = Twitter2Campfire.new("http://search.twitter.com", campfire,
                              config['room'], cache_file, {})
      t.publish_entries
    end
  end
end
