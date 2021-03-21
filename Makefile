
default:
	echo pass

NAME=dokku-vouch-devtest
TAG=0.1

docker-build:
	docker build -t  $(NAME):$(TAG) .

docker-run:
	docker -D run --rm  -it \
			--env VOUCH_PORT=9090 -p 9090:9090  \
			--name tmp-vouch \
			--env-file env \
	    $(NAME):$(TAG) sh

