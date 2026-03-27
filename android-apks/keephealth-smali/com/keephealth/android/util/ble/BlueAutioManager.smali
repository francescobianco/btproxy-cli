.class public Lcom/keephealth/android/util/ble/BlueAutioManager;
.super Ljava/lang/Object;
.source "BlueAutioManager.java"


# static fields
.field private static currentBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private static final disconnectProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private static mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/BlueAutioManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 43
    new-instance v0, Lcom/keephealth/android/util/ble/BlueAutioManager$1;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/BlueAutioManager$1;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/ble/BlueAutioManager;->disconnectProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/bluetooth/BluetoothAdapter;
    .registers 1

    .line 22
    sget-object v0, Lcom/keephealth/android/util/ble/BlueAutioManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public static disconnect(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 35
    sput-object p1, Lcom/keephealth/android/util/ble/BlueAutioManager;->mContext:Landroid/content/Context;

    .line 36
    sget-object v0, Lcom/keephealth/android/util/ble/BlueAutioManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    sput-object p0, Lcom/keephealth/android/util/ble/BlueAutioManager;->currentBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 38
    sget-object p0, Lcom/keephealth/android/util/ble/BlueAutioManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    sget-object v0, Lcom/keephealth/android/util/ble/BlueAutioManager;->disconnectProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 40
    sget-object p0, Lcom/keephealth/android/util/ble/BlueAutioManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method
