# bazel-skia
Builds of Skia consumable by Bazel
# ob1-bazel

## Testing in Docker

### Build The Container
```sh 
docker build -t github.com/offbyonestudios/bazel-skia .
```

### Developing
```sh
docker run -it -v $(pwd):/usr/local/src/bazel-skia github.com/offbyonestudios/bazel-deps /bin/bash
```