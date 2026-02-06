# Ay's Valentine Lover's Concept - Docker Setup

This project contains the Docker configuration to run the Ay's Valentine Lover's Concept website.

## Prerequisites

- Docker installed on your system
- Docker Compose installed

## Project Structure

```
.
├── ays-flowers.html      # Your website HTML file
├── Dockerfile            # Docker image configuration
├── docker-compose.yml    # Docker Compose orchestration
└── README.md            # This file
```

## Quick Start

### 1. Build and Start the Container

To build and start the container in detached mode:

```bash
docker-compose up -d --build
```

### 2. Access the Website

Once the container is running, open your browser and visit:

```
http://localhost:5057
```

### 3. Stop the Container

To stop the running container:

```bash
docker-compose down
```

### 4. View Logs

To view the container logs:

```bash
docker-compose logs -f
```

### 5. Rebuild After Changes

If you make changes to the HTML file, rebuild and restart:

```bash
docker-compose down
docker-compose up -d --build
```

## Port Configuration

- **External Port (Host)**: 5057
- **Internal Port (Container)**: 5000

The website is accessible on port 5057 from your host machine, which maps to port 5000 inside the container.

## Container Details

- **Base Image**: nginx:alpine (lightweight Nginx web server)
- **Container Name**: ays-valentine-lovers-concept
- **Restart Policy**: unless-stopped (automatically restarts unless manually stopped)
- **Network**: flower-network (custom bridge network)

## Troubleshooting

### Port Already in Use

If port 5057 is already in use, you can change it in `docker-compose.yml`:

```yaml
ports:
  - "YOUR_PORT:5000"
```

### Container Not Starting

Check the logs:

```bash
docker-compose logs
```

### Permission Issues

On Linux, you may need to run Docker commands with `sudo`:

```bash
sudo docker-compose up -d --build
```

## Production Deployment

For production, consider:

1. Using a reverse proxy (like Traefik or Nginx Proxy)
2. Adding SSL/TLS certificates
3. Implementing proper logging and monitoring
4. Setting up automated backups

## Support

For issues or questions about the website, contact:
- Email: aysflowershop@gmail.com
- Phone: 07056537373983
