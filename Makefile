help:
	@echo "Usage: make install"

staging:
	sed 's|"sistema-de-ensino/somos-portais": "dev-master",|"sistema-de-ensino/somos-portais": "dev-staging",|g' composer.json > composer.json.new
	mv composer.json.new composer.json
	cp Dockerfile.staging Dockerfile

master:
	sed 's|"sistema-de-ensino/somos-portais": "dev-staging",|"sistema-de-ensino/somos-portais": "dev-master",|g' composer.json > composer.json.new
	mv composer.json.new composer.json

clean: check_clean
	git clean -ffxd

check_clean:
	@bash -c 'echo -n "Are you sure? [y/N] " && read ans && [ $${ans:-N} == y ]'

install:
	composer update
	rm -rf wp-admin wp-includes wp/composer.json wp/wp-content
	mv wp/* .
	cp docker/wp-config.php .
	rm -rf wp

build:
	cp wp-content/themes/somos-portais/browserSync-sample.json wp-content/themes/somos-portais/browserSync.json
	cp Dockerfile.build wp-content/themes/somos-portais/
	cd wp-content/themes/somos-portais && docker build --no-cache -t tema-somos-portais -f Dockerfile.build .
	docker run --rm -v ${PWD}/wp-content/themes/somos-portais:/usr/src/app tema-somos-portais bash -c 'yarn install; yarn build'
	rm wp-content/themes/somos-portais/browserSync.json
