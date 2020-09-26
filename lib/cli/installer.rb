require 'cli/ui'

module CMDBookmark
  module CLI
    class Installer
      DEFAULT_PATH = '/usr/local/bin'.freeze

      class << self
        def install
          if is_installed?
            puts ::CLI::UI.fmt('{{x}} CMD Bookmark is already installed!')
            return
          end

          path = ::CLI::UI.ask('Installation folder:', default: DEFAULT_PATH)
          while not File.directory?(path)
            puts ::CLI::UI.fmt('{{x}} Invalid installation folder!')
            path = ::CLI::UI.ask('Installation folder:', default: DEFAULT_PATH)
          end
          puts ::CLI::UI.fmt('{{v}} CMD Bookmark was installed!')
        end
      
        def is_installed?
          `which cmd-bookmark`
          $?.success?
        end
      end
    end
  end
end