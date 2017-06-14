publish:
	@aws --profile=frmx s3 cp site/ s3://roads.mx/ --recursive
