module CMDBookmark
  class CMD
    attr_reader :command, :name, :description

    def initialize(command, name: '', description: '')
      :command = command
      :name = name || command
      :description = description
    end
  end
end