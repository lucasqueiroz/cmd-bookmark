require 'json'

module CMDBookmark
  class FileManagement
    FOLDER = Dir.home.freeze
    FILE_NAME = '.cmd-bookmark'.freeze

    def save_to_file(data = {})
      file = File.open(File.join(FOLDER, FILE_NAME), 'w') do |file|
        file.write(data.to_json)
      end
    end

    def load_from_file
      content = File.read(File.join(FOLDER, FILE_NAME))
      JSON.parse(content)
    end
  end
end