Aws.config.update({
	region: 'ap-southeast-2',
	credentials: Aws::Credentials.new(ENV["AWS_ACCESS_KEY"], ENV["AWS_SECRET_ACCESS_KEY"])
})

S3_BUCKET = Aws::S3::Resource.new.bucket(ENV["AWS_S3_BUCKET"])