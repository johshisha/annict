# frozen_string_literal: true

namespace :program do
  task generate: :environment do
    ProgramGeneratorService.execute!
    SyobocalEpisodeTitleFetcherService.execute!
  end
end
