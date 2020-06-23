require "thor"


Dir["#{APP_ROOT}/lib/zaf_react/cli/*.rb"].each { |file| require file }


module ZAFReact
  class CLI < Thor
  end
end


ZAFReact::CLI.source_root("./")
