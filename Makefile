BUILD_CMD=docker build -t
BUILD_NS=shanesveller
CLEAN_CMD=docker rmi
UNTAGGED_FILTER=docker images | grep '<none>' | awk '{print $$3}'
VERSION_NUMBER=201402

all: img-base img-minecraft img-mumble img-ruby-base

img-base:
	$(BUILD_CMD) $(BUILD_NS)/base base/

img-mumble: img-base
	$(BUILD_CMD) $(BUILD_NS)/mumble mumble/

img-minecraft: img-base
	$(BUILD_CMD) $(BUILD_NS)/minecraft minecraft/

img-ruby-base: img-base
	$(BUILD_CMD) $(BUILD_NS)/ruby-base ruby-base/

img-rvm-base: img-base
	$(BUILD_CMD) $(BUILD_NS)/rvm-base rvm-base/

clean-all:
	docker rm `docker ps -a -q`
	docker rmi `docker images -a -q`

clean-untagged:
	$(CLEAN_CMD) `$(UNTAGGED_FILTER)` || true

