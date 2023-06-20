require "fileutils"
listen "/tmp/nginx.socket"
before_fork { |server, worker| FileUtils.touch("/tmp/app-initialized") }
