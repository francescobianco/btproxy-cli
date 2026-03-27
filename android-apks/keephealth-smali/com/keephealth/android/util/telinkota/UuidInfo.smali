.class public Lcom/keephealth/android/util/telinkota/UuidInfo;
.super Ljava/lang/Object;
.source "UuidInfo.java"


# static fields
.field public static final BATTERY_LEVEL_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field public static final BATTERY_SERVICE_UUID:Ljava/util/UUID;

.field public static final CFG_DESCRIPTOR_UUID:Ljava/util/UUID;

.field public static final OTA_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field public static final OTA_SERVICE_UUID:Ljava/util/UUID;

.field public static final VERSION_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field public static final VERSION_SERVICE_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-string v0, "00010203-0405-0607-0809-0a0b0c0d1912"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/telinkota/UuidInfo;->OTA_SERVICE_UUID:Ljava/util/UUID;

    .line 31
    const-string v0, "00010203-0405-0607-0809-0a0b0c0d2b12"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/telinkota/UuidInfo;->OTA_CHARACTERISTIC_UUID:Ljava/util/UUID;

    .line 33
    const-string v0, "0000d0ff-3c17-d293-8e48-14fe2e4da212"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/telinkota/UuidInfo;->VERSION_SERVICE_UUID:Ljava/util/UUID;

    .line 35
    const-string v0, "0000ffd4-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/telinkota/UuidInfo;->VERSION_CHARACTERISTIC_UUID:Ljava/util/UUID;

    .line 37
    const-string v0, "0000180f-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/telinkota/UuidInfo;->BATTERY_SERVICE_UUID:Ljava/util/UUID;

    .line 39
    const-string v0, "00002A19-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/telinkota/UuidInfo;->BATTERY_LEVEL_CHARACTERISTIC_UUID:Ljava/util/UUID;

    .line 41
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/telinkota/UuidInfo;->CFG_DESCRIPTOR_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
