
module http

main() {
  local base_url; base_url="${BTPROXY_URL:-}"

  if [ -z "$base_url" ]; then
    echo "ERROR: BTPROXY_URL is not set" >&2
    echo "  e.g. export BTPROXY_URL=http://192.168.1.1:8080" >&2
    exit 1
  fi

  local cmd; cmd="${1:-}"
  shift || true

  case "$cmd" in
    ping)
      btproxy_http_get "$base_url/ping"
      ;;
    health)
      btproxy_http_get "$base_url/health"
      ;;
    status)
      btproxy_http_get "$base_url/status"
      ;;
    list)
      btproxy_http_get "$base_url/devices"
      ;;
    read)
      local mac; mac="${1:-}"
      local uuid; uuid="${2:-}"
      if [ -z "$mac" ] || [ -z "$uuid" ]; then
        echo "Usage: btproxy read <mac> <uuid>" >&2
        exit 1
      fi
      btproxy_http_get_auth "$base_url/$mac/$uuid"
      ;;
    write)
      local mac; mac="${1:-}"
      local uuid; uuid="${2:-}"
      if [ -z "$mac" ] || [ -z "$uuid" ]; then
        echo "Usage: btproxy write <mac> <uuid> <hex bytes...>" >&2
        exit 1
      fi
      shift 2
      local body; body="$*"
      if [ -z "$body" ]; then
        echo "Usage: btproxy write <mac> <uuid> <hex bytes...>" >&2
        echo "  e.g. btproxy write AA:BB:CC:DD:EE:FF 00002a37-0000-1000-8000-00805f9b34fb A0 81 D0" >&2
        exit 1
      fi
      btproxy_http_post_auth "$base_url/$mac/$uuid" "$body"
      ;;
    ""|help|--help|-h)
      echo "btproxy - CLI for the BTProxy Android app"
      echo ""
      echo "Usage: btproxy <command> [args...]"
      echo ""
      echo "Commands:"
      echo "  ping                          Liveness check (no auth)"
      echo "  health                        Health status and connected device count"
      echo "  status                        Server status with connected MAC addresses"
      echo "  list                          List connected BLE device MAC addresses"
      echo "  read  <mac> <uuid>            Read a BLE GATT characteristic"
      echo "  write <mac> <uuid> <hex...>   Write a BLE GATT characteristic"
      echo ""
      echo "Environment:"
      echo "  BTPROXY_URL    Base URL of the BTProxy server (required)"
      echo "                 e.g. export BTPROXY_URL=http://192.168.144.7:8080"
      echo "  BTPROXY_TOKEN  Auth token for authenticated commands (default: secret)"
      echo ""
      echo "Examples:"
      echo "  btproxy list"
      echo "  btproxy read AA:BB:CC:DD:EE:FF 00002a37-0000-1000-8000-00805f9b34fb"
      echo "  btproxy write AA:BB:CC:DD:EE:FF 00002a37-0000-1000-8000-00805f9b34fb A0 81 D0"
      ;;
    *)
      echo "ERROR: unknown command '$cmd'" >&2
      echo "Run 'btproxy help' for usage." >&2
      exit 1
      ;;
  esac
}