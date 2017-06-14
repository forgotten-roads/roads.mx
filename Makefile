publish-all:
	@aws --profile=frmx s3 cp site/ s3://roads.mx/ --recursive

publish:
	@for f in `git status|grep modified|awk '{print $$2}'|egrep '^site/'` ; do \
		aws --profile=frmx s3 \
			cp "$$f" s3://roads.mx/`echo $$f|sed -e 's/^site\///'` ; \
	done
