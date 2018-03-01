ENV = dev
CD = cd terraform
BUCKET_NAME = soudegesu-sample-${ENV}
VARS = ${ENV}.tfvars

workspace:
	@${CD} && \
		terraform workspace new ${ENV}

remote:
	@${CD} && \
		terraform init \
		-input=true \
		-reconfigure \
		-backend-config "bucket=${BUCKET_NAME}"

deploy:
	@${CD} && \
		sh ../build.sh && \
		terraform workspace select ${ENV} && \
		terraform apply \
        -var-file=${VARS}


