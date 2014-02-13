require 'yaml'
require 'pp'

yaml = YAML.load_file('image-defs.yml')

docker_namespace = yaml['username']

namespace docker_namespace do
  yaml['images'].each do |name, tags|
    namespace name do
      tags.each do |tag_name, commit_sha|
        desc "Build #{docker_namespace}/#{name}:#{tag_name} from commit #{commit_sha}"
        task tag_name do
          system("docker build -t #{docker_namespace}/#{name}:#{tag_name} #{name}/")
        end
      end
    end
  end
end

