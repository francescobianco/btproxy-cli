
btproxy_http_get() {
  local url; url="$1"
  curl -s "$url"
}

btproxy_http_get_auth() {
  local url; url="$1"
  local token; token="${BTPROXY_SECRET:-${BTPROXY_TOKEN:-secret}}"
  curl -s -H "X-BtProxy: $token" "$url"
}

btproxy_http_post_auth() {
  local url; url="$1"
  local body; body="$2"
  local token; token="${BTPROXY_SECRET:-${BTPROXY_TOKEN:-secret}}"
  curl -s -X POST -H "X-BtProxy: $token" -H "Content-Type: text/plain" --data "$body" "$url"
}