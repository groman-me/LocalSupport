if ENV['RACK_ENV'] != 'production'
  unless Rails.env.production?
    require 'coveralls/rake/task'
    Coveralls::RakeTask.new
    task :test_with_coveralls => [:spec, :cucumber, 'coveralls:push']
  end
rescue LoadError => e
  Rails.logger.error e
end
