# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

desc 'Views methods.'
command 'views' do |g|
  g.desc 'Open a view for a user.'
  g.long_desc %( Open a view for a user. )
  g.command 'open' do |c|
    c.flag 'trigger_id', desc: 'Exchange a trigger to post to the user.'
    c.flag 'view', desc: 'The view payload. This must be a JSON-encoded string.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.views_open(options))
    end
  end

  g.desc 'Push a view onto the stack of a root view.'
  g.long_desc %( Push a view onto the stack of a root view. )
  g.command 'push' do |c|
    c.flag 'trigger_id', desc: 'Exchange a trigger to post to the user.'
    c.flag 'view', desc: 'The view payload. This must be a JSON-encoded string.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.views_push(options))
    end
  end

  g.desc 'Update an existing view.'
  g.long_desc %( Update an existing view. )
  g.command 'update' do |c|
    c.flag 'view', desc: 'The view payload. This must be a JSON-encoded string.'
    c.flag 'external_id', desc: 'A unique identifier of the view set by the developer. Must be unique for all views on a team. Max length of 255 characters. Either view_id or external_id is required.'
    c.flag 'hash', desc: 'A string that represents view state to protect against possible race conditions.'
    c.flag 'view_id', desc: 'A unique identifier of the view to be updated. Either view_id or external_id is required.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.views_update(options))
    end
  end
end
