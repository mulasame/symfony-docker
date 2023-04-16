#syntax=docker/dockerfile:1.4


FROM hashicorp/terraform:1.4

# # https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli#enable-tab-completion
# RUN <<EOF
#     touch ~/.bashrc
#     terraform -install-autocomplete
# EOF

# tflint
ADD https://github.com/terraform-linters/tflint/releases/latest/download/tflint_linux_amd64.zip /usr/local/bin
RUN <<EOF
    unzip /usr/local/bin/tflint_linux_amd64.zip -d /usr/local/bin
    rm /usr/local/bin/tflint_linux_amd64.zip
EOF

ENTRYPOINT [ "sh" ]