FROM alpine:3.20

# renovate: datasource=repology depName=alpine_3_20/curl versioning=loose
ENV CURL_VERSION="8.7.0-r0"
# renovate: datasource=repology depName=alpine_3_20/python3-dev versioning=loose
ENV PYTHON3_DEV_VERSION="3.11.3-r1"
# renovate: datasource=repology depName=alpine_3_20/py3-pip versioning=loose
ENV PY3_PIP_VERSION="24.0-r2"

# renovate: datasource=pypi depName=requests
ENV PYTHON_REQUESTS_VERSION="2.22.0"

# renovate: datasource=npm depName=express
ENV NPM_EXPRESS_VERSION="3.0.0"

# Install required packages
RUN apk add --no-cache \
    curl="${CURL_VERSION}" \
    python3-dev="${PYTHON3_DEV_VERSION}" \
    py3-pip="$PY3_PIP_VERSION"

# Install python packages
RUN pip3 install --no-cache-dir \
    requests=="${PYTHON_REQUESTS}"
