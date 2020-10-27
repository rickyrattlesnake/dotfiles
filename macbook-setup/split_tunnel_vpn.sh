#!/bin/sh

addresses=(
  dev.airtasker.com
  stage.airtasker.com
  airtasker.com
  airtasker.ap-southeast-2.snowflakecomputing.com
  api.k8s.airtasker.com
  api.k8s.dev.airtasker.com
  api.k8s.stage.airtasker.com
  api.k8s.airtasker.co.uk
  api.k8s.dev.airtasker.co.uk
  perf-api.k8s.stage.airtasker.com
  perf-bff-client.k8s.stage.airtasker.com
  dev-jumpbox.airtasker.com
  stage-jumpbox.airtasker.com
  jumpbox.airtasker.com
  bastion-k8s-dev-airtasker-9e1d5k-1854383840.ap-southeast-2.elb.amazonaws.com
  bastion-k8s-dev-airtasker-93k8bu-1748252562.eu-west-2.elb.amazonaws.com
  bastion-k8s-stage-airtask-56ja37-796835860.ap-southeast-2.elb.amazonaws.com
  bastion-k8s-airtasker-com-ep8bho-281724116.ap-southeast-2.elb.amazonaws.com
  bastion-k8s-airtasker-co--7oi6st-501037875.eu-west-2.elb.amazonaws.com
  a38f6ef97db2c11e88c630220c4aa3fd-1429172549.ap-southeast-2.elb.amazonaws.com
  a5af5bc6bc07911e8aaeb063c6ef8d93-1710224560.ap-southeast-2.elb.amazonaws.com
  a5b128d36c07911e8aaeb063c6ef8d93-1040698240.ap-southeast-2.elb.amazonaws.com
  a6674e778c07f11e8b6760a83c534e0a-1169330415.ap-southeast-2.elb.amazonaws.com
  a66911d3ac07f11e8b6760a83c534e0a-1089824834.ap-southeast-2.elb.amazonaws.com
  a6d5bdd419bcc11e9bf2e0206f6789bd-2014583511.ap-southeast-2.elb.amazonaws.com
  a78fe7ab8244011e9a46506ba1ec2249-1146695791.ap-southeast-2.elb.amazonaws.com
  a921d3ba4ed4c11e8a2e106c4326fbb9-1735207890.ap-southeast-2.elb.amazonaws.com
  acc3c1d562b5811e9bf2e0206f6789bd-1605619724.ap-southeast-2.elb.amazonaws.com
  addf34a1a3fc111e99e2d02ee4ddfe6d-1030981168.ap-southeast-2.elb.amazonaws.com
  adf0bcdf13fc211e997cc0a0512aceaa-736448002.ap-southeast-2.elb.amazonaws.com
  ae2b5fd88d0ff11e8bdfe061c507f0a2-1446989723.ap-southeast-2.elb.amazonaws.com
  addb5e809752a11e98da10a4db127be5-116733224.eu-west-2.elb.amazonaws.com
  a6a62621f1ea611e9943506280fa5b13-2125177002.eu-west-2.elb.amazonaws.com
  aad50c86cd1b911e892840ad7001c4e6-1468263552.eu-west-2.elb.amazonaws.com
  ac5c85e7ee3b011e89e1e0a5ce321283-1155902734.eu-west-2.elb.amazonaws.com

  #ES
  8393ea6894504671a6f3032f2965fc9d.ap-southeast-2.aws.found.io # dev
  0bd4d0db5c164752b634e73ede3f91ce.ap-southeast-2.aws.found.io # stage
  37c303ef4eff4da1b81f9ea55be0109e.ap-southeast-2.aws.found.io # perf
  b4bd77060c6d4edf8524cdc0a6adefd9.ap-southeast-2.aws.found.io # prod

  # Braze API
  rest.iad-03.braze.com
)

# To Add routes
# dig +short ${addresses[@]} | xargs -I{} /sbin/route add -host {} -interface $1

# To Delete routes
dig +short ${addresses[@]} | xargs -I{} /sbin/route delete -host {}
