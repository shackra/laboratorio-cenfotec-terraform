resource "local_file" "state_demo" {
  filename = "local"
  content = "Archivo de estado: local"
}

resource "aws_s3_bucket" "remote_state" {
  bucket = "terralabs-remote-state-eljorge"

  tags = {
    Environment = "dev"
  }
}

resource "aws_s3_bucket_public_access_block" "access" {
  bucket = aws_s3_bucket.remote_state.id

  block_public_acls = false

}
