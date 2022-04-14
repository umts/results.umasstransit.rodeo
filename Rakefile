# frozen_string_literal: true

require 'haml'

desc "Create a new directory for this year's archive"
task :new, [:year] do |_t, args|
  args.with_defaults(year: Time.now.year.to_s)
  puts args[:year]
  Dir.mkdir File.join(__dir__, args[:year])
end

desc 'Build the index.html from the template'
task :index do
  template = File.read('index.html.haml')
  years = Dir.glob('*').select { |f| f =~ /\d{4}/ }

  File.open(File.join(__dir__, 'index.html'), 'w') do |output|
    output.write Haml::Engine.new(template).render(self, years: years)
  end
end
