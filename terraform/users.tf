resource "aws_iam_user" "readonly" {
  name = "readonly-user"
}

resource "aws_iam_user_policy_attachment" "readonly_policy" {
  user       = aws_iam_user.readonly.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}

resource "aws_iam_user" "readwrite" {
  name = "readwrite-user"
}

resource "aws_iam_user_policy_attachment" "readwrite_policy" {
  user       = aws_iam_user.readwrite.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

