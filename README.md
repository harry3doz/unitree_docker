# unitree_docker

## build image

```bash
docker build -t unitree-ros2:humble .
```

## run containers using docker compose
```bash
docker compose up
```
After executing docker compose, 2 containers are starting for now:
- unitree-ros2 (humble workspace with unitree_ros2_to_real)
- ros1-bridge (for subscribing ros1 topics, such as camera pintcloud)
