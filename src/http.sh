
_btproxy_http_curl_flags() {
  local debug; debug="${1:-0}"
  if [ "$debug" = "1" ]; then
    echo "-v"
  else
    echo "-s"
  fi
}

btproxy_http_get() {
  local url; url="$1"
  local debug; debug="${2:-0}"
  local flags; flags=$(_btproxy_http_curl_flags "$debug")
  curl $flags "$url" 2>&1
}

btproxy_http_get_auth() {
  local url; url="$1"
  local debug; debug="${2:-0}"
  local token; token="${BTPROXY_SECRET:-${BTPROXY_TOKEN:-secret}}"
  local flags; flags=$(_btproxy_http_curl_flags "$debug")
  curl $flags -H "X-BtProxy: $token" "$url" 2>&1
}

btproxy_http_post_auth() {
  local url; url="$1"
  local body; body="$2"
  local debug; debug="${3:-0}"
  local token; token="${BTPROXY_SECRET:-${BTPROXY_TOKEN:-secret}}"
  local flags; flags=$(_btproxy_http_curl_flags "$debug")
  curl $flags -X POST -H "X-BtProxy: $token" -H "Content-Type: text/plain" --data "$body" "$url" 2>&1
}