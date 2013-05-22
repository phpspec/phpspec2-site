set :application, "phpspec_site"
set :repository,  "git@github.com:phpspec/phpspec2-site.git"
set :deploy_to, "/var/www/www.phpspec.net"
set :current, "#{deploy_to}/current"
set :user, "deploy"
set :pre_build_unused_files, ['_static', '_templates', 'conf.py', 'index.html',
  'index.txt', 'Makefile', 'README.md', 'docs', 'REVISION', '_build/public']
set :post_build_unused_files, ['_build', '_sources', 'log', 'index.rst', 'tmp',
  'public', 'objects.inv', 'docs']
set :scm, :git

ssh_options[:forward_agent] = true
default_run_options[:pty] = true

role :web, "www.phpspec.net"

after "deploy", "compile_sphinx_files"

task :compile_sphinx_files do
  run "cd #{current} && make html"
  remove_pre_build_unused_files
  run "cp -r #{current}/_build/html/* #{current}/."
  remove_post_build_unused_files
end

def remove_pre_build_unused_files()
  fetch(:pre_build_unused_files).each do |path|
    run "rm -fr #{current}/#{path}"
  end
end

def remove_post_build_unused_files()
  fetch(:post_build_unused_files).each do |path|
    run "rm -fr #{current}/#{path}"
  end
end
