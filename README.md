<h1 align="center">
	Spacenet Challenge #7
</h1>

<h3 align="center">
	Containarized data exploration and implementation of Spacenet Cahllenge #7
</h3>
<br>

<p align="center">
	<img src="https://img.shields.io/github/repo-size/agustingenoud/spacenet-challenge?color=green"/>
</p>

<p align="center">
	<a href="#tech-stack">Tech Stack</a> •
	<a href="#installation">Installation</a> 
</p>

## Tech Stack
<img src="https://img.shields.io/badge/Bash-05122A?style=flat&logo=gnu-bash" alt="bash Badge" height="25">&nbsp;
<img src="https://img.shields.io/badge/Docker-05122A?style=flat&logo=docker" alt="docker Badge" height="25">&nbsp;
<img src="https://img.shields.io/badge/Python-05122A?style=flat&logo=python" alt="python Badge" height="25">&nbsp;

## Installation
To Install this project, follow the steps above:


Clone this repository

```bash
  git clone git@github.com:agustingenoud/spacenet-challenge.git
```


Get the data into "data folder":
The challenge is on this [link](https://spacenet.ai/sn7-challenge/ "link to challenge")

You can see the dataset with an aws account though this command:

	`aws s3 ls s3://spacenet-dataset/spacenet/SN7_buildings/`

The tarballs for all the data are here:
	`aws s3 ls s3://spacenet-dataset/spacenet/SN7_buildings/tarballs/`

You can copy them like this into your current folder (ca. 12GB):
	`aws s3 cp s3://spacenet-dataset/spacenet/SN7_buildings/tarballs/ .`


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


To START run:
```bash
./control-env start
```
It will check your system for docker images and if not It will build them,
run the containers and open your prefered web browser with the notebook files.


To STOP run:
```bash
./control-env stop
```

To clean your system from the builded images run:
```bash
./control-env clean
```
