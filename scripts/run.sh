# Launches the grep-utility inside docker container.
#
# Parameters:
#
#   $1 - The query to search for.
#   $2 - The directory inside of container.
#
# Usage:
#
#       ./scripts/run.sh <query> <directory>
#
# If the query is not provided, the script will launch unit tests and exit.

docker run --rm --mount type=bind,source="$(pwd)"/test/ut_dir,target=/app,readonly grep-utility:latest "${@}"