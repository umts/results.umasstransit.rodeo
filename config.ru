# frozen_string_literal: true

module NotFound
  def self.call(_)
    body = File.read('404.html')
    return [404, { 'Content-Type' => 'text/html' }, body.lines]
  end
end

run Rack::Static.new(NotFound, urls: [''], root: '.', index: 'index.html', cascade: true)
