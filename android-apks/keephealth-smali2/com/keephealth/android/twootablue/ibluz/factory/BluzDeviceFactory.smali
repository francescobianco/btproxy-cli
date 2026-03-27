.class public Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;
.super Ljava/lang/Object;
.source "BluzDeviceFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory$ConnectionType;,
        Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory$DiscoveryType;,
        Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory$EdrKeyUUIDS;,
        Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory$BleKeyUUIDS;,
        Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory$ConnectionState;
    }
.end annotation


# static fields
.field private static bleUUIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private static mEdrUUIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private static sUUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDevice(Landroid/content/Context;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    .registers 2

    .line 76
    const-string v0, "SPP"

    invoke-static {p0, v0}, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->getDevice(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object p0

    return-object p0
.end method

.method public static getDevice(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    .registers 6

    .line 124
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 127
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "type:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ggrr4"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v0, "SPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    .line 129
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    sget-object v0, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->sUUID:Ljava/util/UUID;

    invoke-direct {p1, p0, v2, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;-><init>(Landroid/content/Context;ZLjava/util/UUID;)V

    return-object p1

    .line 130
    :cond_2d
    const-string v0, "BLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 131
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    sget-object v0, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->bleUUIDs:Ljava/util/Map;

    invoke-direct {p1, p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    return-object p1

    .line 132
    :cond_3d
    const-string v0, "SPP_ONLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4e

    .line 133
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    sget-object v0, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->sUUID:Ljava/util/UUID;

    invoke-direct {p1, p0, v3, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;-><init>(Landroid/content/Context;ZLjava/util/UUID;)V

    return-object p1

    .line 134
    :cond_4e
    const-string v0, "BLE_BR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 135
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    sget-object v0, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->bleUUIDs:Ljava/util/Map;

    invoke-direct {p1, p0, v0, v2, v3}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;-><init>(Landroid/content/Context;Ljava/util/Map;ZZ)V

    return-object p1

    .line 136
    :cond_5e
    const-string v0, "EDR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 137
    const-string p1, "edr"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    sget-object v0, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->mEdrUUIDs:Ljava/util/Map;

    invoke-direct {p1, p0, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    return-object p1

    :cond_73
    return-object v1
.end method

.method public static getDeviceQ32(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    .registers 4

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type2:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ggrr8"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v0, "BLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 149
    new-instance p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    sget-object v0, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->bleUUIDs:Ljava/util/Map;

    invoke-direct {p1, p0, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    return-object p1

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setUUID(Ljava/util/Map;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .line 96
    sput-object p0, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->bleUUIDs:Ljava/util/Map;

    return-void
.end method

.method public static setUUID(Ljava/util/Map;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;Z)V"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setUUID"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1d

    .line 109
    sput-object p0, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->mEdrUUIDs:Ljava/util/Map;

    goto :goto_20

    .line 111
    :cond_1d
    invoke-static {p0}, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->setUUID(Ljava/util/Map;)V

    :goto_20
    return-void
.end method

.method public static setUUID(Ljava/util/UUID;)V
    .registers 1

    .line 86
    sput-object p0, Lcom/keephealth/android/twootablue/ibluz/factory/BluzDeviceFactory;->sUUID:Ljava/util/UUID;

    return-void
.end method
