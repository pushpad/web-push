# frozen_string_literal: true

module WebPush
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'tasks/web_push.rake'
    end
  end
end
