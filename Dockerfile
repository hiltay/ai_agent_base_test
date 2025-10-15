# Container image that runs your code
FROM macroverse-cn-beijing.cr.volces.com/macroverse/ai-agent-base:v1

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY . .

RUN uv sync

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["uv", "run", "main.py"]