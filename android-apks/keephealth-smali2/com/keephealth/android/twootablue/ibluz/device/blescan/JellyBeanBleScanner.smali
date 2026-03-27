.class public Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;
.super Lcom/keephealth/android/twootablue/ibluz/device/blescan/BaseBleScanner;
.source "JellyBeanBleScanner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.keephealth.android.twootablue.ibluz.device.blescan.JellyBeanBleScanner"


# instance fields
.field private leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field public mBluetooth:Landroid/bluetooth/BluetoothAdapter;

.field private mScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;)V
    .registers 4

    .line 21
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BaseBleScanner;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 13
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;->mScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    .line 14
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner$1;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;)V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 22
    iput-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;->mScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    .line 23
    const-string p2, "bluetooth"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    .line 24
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;)Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;->mScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    return-object p0
.end method


# virtual methods
.method public onBleScanFailed(Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;)V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;->mScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    invoke-interface {v0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;->onBleScanFailed(Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;)V

    return-void
.end method

.method public onStartBleScan()V
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_12

    .line 32
    :try_start_4
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;->isScanning:Z
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_19

    :catch_d
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_19

    .line 37
    :cond_12
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;->mScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    sget-object v1, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->BLUETOOTH_OFF:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    invoke-interface {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;->onBleScanFailed(Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;)V

    :goto_19
    return-void
.end method

.method public onStopBleScan()V
    .registers 3

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;->isScanning:Z

    .line 46
    :try_start_3
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_11

    .line 47
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_11
    :goto_11
    return-void
.end method
