.class public interface abstract Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;
.super Ljava/lang/Object;
.source "BluetoothUUID.java"


# static fields
.field public static final READ:Ljava/util/UUID;

.field public static final READ_ECG:Ljava/util/UUID;

.field public static final READ_FFD2:Ljava/util/UUID;

.field public static final SERVICE:Ljava/util/UUID;

.field public static final SERVICE_ACTIVE_UPLOAD:Ljava/util/UUID;

.field public static final SERVICE_ACTIVE_UPLOAD_READ:Ljava/util/UUID;

.field public static final SERVICE_ACTIVE_UPLOAD_WRITE:Ljava/util/UUID;

.field public static final SERVICE_ECG:Ljava/util/UUID;

.field public static final SERVICE_FFD2:Ljava/util/UUID;

.field public static final SERVICE_PAIR:Ljava/util/UUID;

.field public static final WRITE:Ljava/util/UUID;

.field public static final WRITE_ECG:Ljava/util/UUID;

.field public static final WRITE_FFD2:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const-string v0, "000ff00-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    .line 11
    const-string v0, "0000ff04-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_PAIR:Ljava/util/UUID;

    .line 12
    const-string v0, "0000ff01-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    .line 13
    const-string v0, "0000ff02-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    .line 14
    const-string v0, "0000ef00-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ECG:Ljava/util/UUID;

    .line 15
    const-string v0, "0000ef02-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE_ECG:Ljava/util/UUID;

    .line 16
    const-string v0, "0000ef01-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_ECG:Ljava/util/UUID;

    .line 17
    const-string v0, "0000ffd1-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE_FFD2:Ljava/util/UUID;

    .line 18
    const-string v0, "0000ffd2-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_FFD2:Ljava/util/UUID;

    .line 19
    const-string v0, "0000ffd0-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    .line 20
    const-string v0, "0000fc00-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ACTIVE_UPLOAD:Ljava/util/UUID;

    .line 21
    const-string v0, "0000fc01-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ACTIVE_UPLOAD_READ:Ljava/util/UUID;

    .line 22
    const-string v0, "0000fc02-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_ACTIVE_UPLOAD_WRITE:Ljava/util/UUID;

    return-void
.end method
