# TLBB Server Fake Portable - Docker

# Installation

1. **Install Docker**

**Windows 10 x64** (Reset computer if required)

```
https://download.docker.com/win/stable/InstallDocker.msi
```

**Mac**

```
https://download.docker.com/mac/stable/Docker.dmg
```

**Linux**

```
https://docs.docker.com/compose/install/#alternative-install-options
```

2. **Clone this Repo**

**Download**

```
https://github.com/DevTLBB/TLBB-Docker/archive/master.zip
```

**OR Clone**

```
git clone https://github.com/DevTLBB/TLBB-Docker.git tlbb-docker
```

3. **Run**

**Open *CMD/Terminal/Bash* at tlbb-docker folder then type command bellow**

```
docker-compose up -d
```

**Wait 2-5 minutes**

4. **Insert Server and Run**

**Copy /tlbb.tar.gz(extracted) Server to /workspace folder**

**Copy /ubuntu/config/*.ini files to /workspace/Server/Config**

**Run command bellow to Run Server**

- Run ./shm start

```
docker-compose exec ubuntu /bin/bash
cd Server
./shm start
```
- Run ./World

```
docker-compose exec ubuntu /bin/bash
cd Server
./World
```
- Run ./Login

```
docker-compose exec ubuntu /bin/bash
cd Server
./Login
```
- Run ./Server

```
docker-compose exec ubuntu /bin/bash
cd Server
./Server
```
- Run Billing.exe

```
Open folder BillingGUI or Billing at root then run billing.exe to connect Login
```
