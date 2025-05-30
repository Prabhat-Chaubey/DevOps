1.Create your own Dockerfile based on alpine:3.17 image and install nginx using the following command apk add nginx=1.22.1-r1.

  - Creating own Docker file :
```
    # Use Alpine Linux 3.17 as base image
    FROM alpine:3.17
 ```

 ```
    # Install specific version of nginx
    RUN apk add --no-cache nginx=1.22.1-r1

```

```
    # Default command to run when container starts (optional)
    CMD ["nginx", "-g", "daemon off;"]
```

2.Build it with docker build command with name my_own_image.
```
docker build -t my_own_image .

```
 - -t my_own_image → Tags the image with the name my_own_image.
 - . → Tells Docker to use the Dockerfile in the current directory.

   
3.Inspect history of this image after the building.
```
docker history my_own_image

```
4.Use command docker tag for this new image and give it a new name my_new_image:1.0.0. Compare these 2 images.
  - Now tag your image my_own_image with a new name my_new_image:1.0.0:
  ```
docker tag my_own_image my_new_image:1.0.0
```
5.Run container from one of these images and check the version of installed nginx with nginx -v.

```
docker run --rm my_own_image nginx -v

```
  - --rm automatically deletes the container after it exits.
  - nginx -v prints the installed version.
