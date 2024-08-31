# Cfn_sample_ec2stac

Cfn のネステッドスタックとクロススタック参照のサンプル（ec2）

## 準備

templates/と param/のファイルをあらかじめ S3 の cfn-nested-sample/ec2 に置いておく。

```bash
aws s3 cp ./templates/ec2.yaml s3://cfn-nested-sample/ec2/
aws s3 cp ./templates/key-pair.yaml s3://cfn-nested-sample/ec2/
aws s3 cp ./param/parameters.json s3://cfn-nested-sample/ec2/
aws s3 cp ./param/user-data.sh s3://cfn-nested-sample/ec2/
```

## デプロイ

```bash
aws cloudformation create-stack \
  --stack-name Ec2Stack \
  --template-body file://root-template.yaml \
  --parameters file://param/parameters.json \
  --capabilities CAPABILITY_NAMED_IAM

```

## 削除

```bash
aws cloudformation delete-stack --stack-name Ec2Stack
```
