
## Download data
Get the data into "data folder":
The challenge is on this [link](https://spacenet.ai/sn7-challenge/ "link to challenge")

You can see the dataset with an aws account though this command:
```bash
	aws s3 ls s3://spacenet-dataset/spacenet/SN7_buildings/
```
The tarballs for all the data are here:
```bash
	aws s3 ls s3://spacenet-dataset/spacenet/SN7_buildings/tarballs/
```
You can copy them like this into your current folder (ca. 12GB):
```bash
	aws s3 cp s3://spacenet-dataset/spacenet/SN7_buildings/tarballs/ .
```

The data folder should be organized like this:

```
root/
├─ data/
│  ├─ output_csvs/
│  ├─ sample/
│  ├─ test_public
│  ├─ train/
├─ notebooks/
│  ├─ ..........
│  ├─ ..........
├─ (this) README.me
```
