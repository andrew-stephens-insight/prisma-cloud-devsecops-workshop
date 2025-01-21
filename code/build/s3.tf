provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "c4a45e26-6ab8-44e1-9630-12ccbec680e5"
    git_commit           = "64278794306b81664740f6fe945e1606019c1cf2"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-01-21 17:41:09"
    git_last_modified_by = "66266842+andrew-stephens-insight@users.noreply.github.com"
    git_modifiers        = "66266842+andrew-stephens-insight"
    git_org              = "andrew-stephens-insight"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
