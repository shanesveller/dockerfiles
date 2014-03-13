BUILD_CMD=docker build -rm -t
BUILD_NS=shanesveller
CLEAN_CMD=docker rmi
UNTAGGED_FILTER=docker images | grep '<none>' | awk '{print $$3}'
BASE_VERSION_NUM=0.9.8

all: img-base img-java-base img-ruby-base img-rvm-base img-minecraft img-mumble

img-base:
	$(BUILD_CMD) $(BUILD_NS)/base:latest base/
	$(BUILD_CMD) $(BUILD_NS)/base:$(BASE_VERSION_NUM) base/

img-java-base: img-base
	$(BUILD_CMD) $(BUILD_NS)/java-base java-base/

img-mumble: img-base
	$(BUILD_CMD) $(BUILD_NS)/mumble mumble/

img-minecraft: img-java-base
	$(BUILD_CMD) $(BUILD_NS)/minecraft minecraft/

img-ruby-base: img-base
	$(BUILD_CMD) $(BUILD_NS)/ruby-base ruby-base/

img-rvm-base: img-base
	$(BUILD_CMD) $(BUILD_NS)/rvm-base rvm-base/

img-octopress:
	$(BUILD_CMD) $(BUILD_NS)/shanesveller-dot-com github.com/shanesveller/shanesveller-dot-com

img-chef-base: img-base
	$(BUILD_CMD) $(BUILD_NS)/rvm-base rvm-base/

clean-all:
	docker rm `docker ps -a -q` || true
	docker rmi `docker images -a -q` || true

clean-untagged:
	docker rm `docker ps -a -q` || true
	$(CLEAN_CMD) `$(UNTAGGED_FILTER)` || true

