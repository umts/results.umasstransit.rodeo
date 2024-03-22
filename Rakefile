# frozen_string_literal: true

require 'tilt/haml'

desc "Create a new directory for this year's archive"
task :new, [:year] do |_t, args|
  args.with_defaults(year: Time.now.year.to_s)
  puts args[:year]
  Dir.mkdir File.join(__dir__, args[:year])
end

desc 'Build the index.html from the template'
task :index do
  years = Dir.glob('*').select { |f| f =~ /\d{4}/ }

  File.open(File.join(__dir__, 'index.html'), 'w') do |output|
    output.write Tilt::HamlTemplate.new('index.html.haml').render(self, years: years)
  end
end
