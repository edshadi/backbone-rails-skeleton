desc "Renaming Rails App"
task :rename, [:message]  => :environment  do |t, args|
  file_names = %w{config/application.rb
                  config/environment.rb
                  config.ru
                  Rakefile
                  config/routes.rb
                  config/environments/development.rb
                  config/environments/production.rb
                  config/environments/test.rb
                  config/initializers/secret_token.rb
                  config/initializers/session_store.rb
                  app/views/layouts/application.html.haml
                  config/database.yml}
  file_names.each do |file|
    text = File.read(file)
    replace = ''
    case file
    when 'config/database.yml'
      replace = text.gsub(/\S+_dev/, "#{args.message.downcase}_dev").gsub(/\S+_test/, "#{args.message.downcase}_test")
    when 'config/initializers/session_store.rb'
      replace = text.gsub(/\w+_session/, "_#{args.message.downcase}_session").gsub(/#{Rails.application.class.parent}/, args.message.capitalize)
    else
      replace = text.gsub /#{Rails.application.class.parent}/, args.message.capitalize
    end
    File.open(file, "w") {|file| file.puts replace}
  end
end
