resource "aws_iam_role" "example_role" {
  name = var.role_name
  assume_role_policy = var.assume_role_policy
}

resource "aws_iam_policy" "readonly" {
  name   = var.policy_name
  policy = file(var.policy_path)
}

resource "aws_iam_role_policy_attachment" "attach_readonly" {
  role       = aws_iam_role.example_role.name
  policy_arn = aws_iam_policy.readonly.arn
}

resource "aws_kms_key" "default" {
  description         = var.kms_description
  enable_key_rotation = var.enable_key_rotation
}

resource "aws_shield_protection" "web_app" {
  name         = var.shield_name
  resource_arn = var.resource_arn
}
