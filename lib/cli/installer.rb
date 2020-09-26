module CMDBookmark
  module CLI
    class Installer
      class << self
        def install
          return if is_installed?
    
          path = '/usr/local/bin'
          puts 'Installing CMD Bookmark...'
          print "Please choose the installation folder (defaults to #{path}): "
          tmp_path = gets.chomp || path
          while not File.directory?(tmp_path) and not tmp_path.empty?
            puts 'Invalid installation folder!'
            print "Please choose the installation folder (defaults to #{path}): "
            tmp_path = gets.strip
          end
          path = tmp_path
          puts 'CMD Bookmark was installed!'
        end
      
        private
  
        def is_installed?
          `which cmd-bookmark`
          $?.success?
        end
      end
    end
  end
end