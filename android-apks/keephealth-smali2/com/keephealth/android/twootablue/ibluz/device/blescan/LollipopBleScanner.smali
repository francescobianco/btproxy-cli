.class public Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;
.super Lcom/keephealth/android/twootablue/ibluz/device/blescan/BaseBleScanner;
.source "LollipopBleScanner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.keephealth.android.twootablue.ibluz.device.blescan.LollipopBleScanner"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private mScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

.field private scanCallback:Landroid/bluetooth/le/ScanCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BaseBleScanner;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mBluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 23
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 24
    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    .line 25
    new-instance v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner$1;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;)V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 50
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    .line 51
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_21

    .line 53
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mBluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    :cond_21
    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;)Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    return-object p0
.end method


# virtual methods
.method public onBleScanFailed(Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;)V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    invoke-interface {v0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;->onBleScanFailed(Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;)V

    return-void
.end method

.method public onStartBleScan()V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mBluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    .line 62
    :try_start_f
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mBluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Landroid/bluetooth/le/ScanCallback;)V

    const/4 v1, 0x1

    .line 63
    iput-boolean v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->isScanning:Z
    :try_end_19
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_19} :catch_24
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_1a

    goto :goto_35

    .line 68
    :catch_1a
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->isScanning:Z

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    sget-object v1, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->BLUETOOTH_OFF:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    invoke-interface {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;->onBleScanFailed(Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;)V

    goto :goto_35

    .line 65
    :catch_24
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->isScanning:Z

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    sget-object v1, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->BLUETOOTH_OFF:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    invoke-interface {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;->onBleScanFailed(Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;)V

    goto :goto_35

    .line 72
    :cond_2e
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    sget-object v1, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;->BLUETOOTH_OFF:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;

    invoke-interface {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;->onBleScanFailed(Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;)V

    :goto_35
    return-void
.end method

.method public onStopBleScan()V
    .registers 3

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->isScanning:Z

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mBluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 82
    :try_start_11
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->mBluetoothScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_18} :catch_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_18

    :catch_18
    :cond_18
    return-void
.end method
