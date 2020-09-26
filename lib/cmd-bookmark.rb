require 'cli/ui'
require 'optparse'
require_relative 'cli/installer'

module CMDBookmark
  ::CLI::UI::StdoutRouter.enable
  options = {}

  OptionParser.new do |opts|
    opts.banner = 'Usage: cmd-bookmark [options]'

    opts.on('-i', '--install', 'Install command line') do
      CLI::Installer::install
    end
  end.parse!

  unless CLI::Installer::is_installed?
    abort(::CLI::UI.fmt('{{x}} You must install the CMD Bookmark utility first!'))
  end
end