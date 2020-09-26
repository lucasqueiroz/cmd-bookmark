$LOAD_PATH << '.'

require 'optparse'

require_relative 'cli/installer'

module CMDBookmark
  options = {}

  OptionParser.new do |opts|
    opts.banner = 'Usage: cmd-bookmark [options]'

    opts.on('-i', '--install', 'Install command line') do
      CLI::Installer::install
    end
  end.parse!
end