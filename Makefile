.PHONY: css

css:
	sassc -m sass/style.scss css/style.css

css-watch:
	while true; do \
		make css; \
		inotifywait -qre close_write sass/; \
	done
