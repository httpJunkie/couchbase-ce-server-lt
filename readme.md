# Build Custom Couchbase Server

```bash
docker pull couchbase:community-6.6.0
```
or

```bash
docker pull couchbase:community-7.0.0-beta
```

Let's clone an existing repo to get a `Dockerfile` and `configuration.sh` file that we can use to build a custom image:

```bash
git clone https://github.com/httpJunkie/couchbase-ce-server-lt && cd couchbase-ce-server-lt && chmod +x configure.sh
```

Build a new image from the `Dockerfile` which uses official `couchbase:community-6.5.0` image as its base.

```bash
docker build -t couchbase-ce-server-lt .
```

Run that new image:

```bash
docker run -d -p 8091-8094:8091-8094 -p 11210:11210 -e CB_ADMIN_USER=Administrator -e CB_ADMIN_PASS=password -e CB_BUCKET=default -e CB_BUCKET_PASS= --network="bridge" --name cbce650 couchbase-ce-server-lt
```  
  
At this point, we can visit [localhost:8091](http://localhost:8091) and login with the `Administrator` & `password` username/pass.

We should have 1 server, 1 node, 1 bucket named `default`!
