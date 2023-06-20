require "fileutils"
preload_app true
timeout 5
worker_processes 4
listen "/tmp/nginx.socket", backlog: 1024

before_fork { |server, worker| FileUtils.touch("/tmp/app-initialized") }
