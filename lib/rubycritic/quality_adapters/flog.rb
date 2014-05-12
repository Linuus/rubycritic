module Rubycritic
  module QualityAdapter

    class Flog
      def initialize(paths)
        @flog = ::Rubycritic::Analyser::Flog.new
        @paths = paths
      end

      def complexity
        @paths.map do |path|
          @flog.reset
          @flog.flog(path)
          @flog.total_score.round
        end
      end
    end

  end
end