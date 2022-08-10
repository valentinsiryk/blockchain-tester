# Multi-stage Dockerfile for building docker image with compiled Go binary application

# Stage 1:
# - uses golang official image as base
# - gets all dependencies
# - compiles source code into executable binary

# Stage 2:
# - uses lightweight image as base
# - uses binary from Stage 1 as entrypoint

# Other stages (e.g. tests, lints)