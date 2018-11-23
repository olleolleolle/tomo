module Jam
  autoload :CLI, "jam/cli"
  autoload :Colors, "jam/colors"
  autoload :Commands, "jam/commands"
  autoload :Current, "jam/current"
  autoload :Error, "jam/error"
  autoload :Framework, "jam/framework"
  autoload :Host, "jam/host"
  autoload :Logger, "jam/logger"
  autoload :Path, "jam/path"
  autoload :Paths, "jam/paths"
  autoload :Plugin, "jam/plugin"
  autoload :Plugins, "jam/plugins"
  autoload :Project, "jam/project"
  autoload :Remote, "jam/remote"
  autoload :RemoteExecutionError, "jam/errors/remote_execution_error"
  autoload :Result, "jam/result"
  autoload :Script, "jam/script"
  autoload :ShellBuilder, "jam/shell_builder"
  autoload :SSH, "jam/ssh"
  autoload :TaskLibrary, "jam/task_library"
  autoload :UnknownTaskError, "jam/errors/unknown_task_error"
  autoload :VERSION, "jam/version"

  class << self
    attr_accessor :logger

    def load_project!(environment:, settings: {})
      Framework.new.load_project!(environment: environment, settings: settings)
    end
  end

  self.logger = Logger.new
end
