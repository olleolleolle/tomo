module Tomo
  module Commands
    class Default
      # rubocop:disable Metrics/MethodLength
      def parser
        Tomo::CLI::Parser.new do |parser|
          parser.banner = "Usage: tomo COMMAND [options]"
          parser.usage = <<~USAGE
            Tomo is an extensible tool for deploying projects to remote hosts via SSH.
            Please specify a COMMAND, which can be:

            #{commands.map { |key| "  - #{key}" }.join("\n")}

            For additional help, run:

              tomo COMMAND -h
          USAGE
          parser.on("-v", "--version") do
            Version.new.call({})
            exit
          end
        end
      end
      # rubocop:enable Metrics/MethodLength

      private

      def commands
        Tomo::CLI::COMMANDS.keys - ["help"]
      end
    end
  end
end
