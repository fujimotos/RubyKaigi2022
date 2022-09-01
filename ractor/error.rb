require 'yajl'

Ractor.new { Yajl::Parser.new }.take

# (irb):14:in `new': ractor unsafe method called from not main ractor (Ractor::UnsafeError)
#         from (irb):14:in `block in <top (required)>'
# <internal:ractor>:694:in `take': thrown by remote Ractor. (Ractor::RemoteError)
#         from (irb):14:in `<main>'
#         from /usr/local/lib/ruby/gems/3.2.0+2/gems/irb-1.4.1/exe/irb:11:in `<top (required)>'
#         from /usr/local/bin/irb:25:in `load'
#         from /usr/local/bin/irb:25:in `<top (required)>'
#         from /usr/local/lib/ruby/3.2.0+2/bundler/cli/exec.rb:58:in `load'
#         from /usr/local/lib/ruby/3.2.0+2/bundler/cli/exec.rb:58:in `kernel_load'
#         from /usr/local/lib/ruby/3.2.0+2/bundler/cli/exec.rb:23:in `run'
#         from /usr/local/lib/ruby/3.2.0+2/bundler/cli.rb:485:in `exec'
#         from /usr/local/lib/ruby/3.2.0+2/bundler/vendor/thor/lib/thor/command.rb:27:in `run'
#         from /usr/local/lib/ruby/3.2.0+2/bundler/vendor/thor/lib/thor/invocation.rb:127:in `invoke_command'
#         from /usr/local/lib/ruby/3.2.0+2/bundler/vendor/thor/lib/thor.rb:392:in `dispatch'
#         from /usr/local/lib/ruby/3.2.0+2/bundler/cli.rb:31:in `dispatch'
#         from /usr/local/lib/ruby/3.2.0+2/bundler/vendor/thor/lib/thor/base.rb:485:in `start'
#         from /usr/local/lib/ruby/3.2.0+2/bundler/cli.rb:25:in `start'
#         from /usr/local/lib/ruby/gems/3.2.0+2/gems/bundler-2.4.0.dev/libexec/bundle:48:in `block in <top (required)>'
#         from /usr/local/lib/ruby/3.2.0+2/bundler/friendly_errors.rb:120:in `with_friendly_errors'
#         ... 3 levels...
# (irb):14:in `new': ractor unsafe method called from not main ractor (Ractor::UnsafeError)
#         from (irb):14:in `block in <top (required)>'
