.class Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;
.super Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;
.source "BluetoothLeScannerImplLollipop.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;
    }
.end annotation


# instance fields
.field _callback:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;

.field _settings:Landroid/bluetooth/le/ScanSettings;

.field final_filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;",
            "Landroid/bluetooth/le/ScanCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mWrappers2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/le/ScanCallback;",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private offloadedFilteringSupported:Z

.field scanner:Landroid/bluetooth/le/BluetoothLeScanner;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;-><init>()V

    .line 59
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mWrappers:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mWrappers2:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mCallbacks:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;)Ljava/util/Map;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mWrappers2:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->offloadedFilteringSupported:Z

    return p0
.end method


# virtual methods
.method public flushPendingScanResults(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    if-eqz p1, :cond_49

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mWrappers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    if-eqz v0, :cond_41

    .line 131
    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->getScanSettings()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedScanBatchingSupported()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getUseHardwareBatchingIfSupported()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->flushPendingScanResults(Landroid/bluetooth/le/ScanCallback;)V

    goto :goto_40

    .line 135
    :cond_35
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mWrappers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->flushPendingScanResults()V

    :goto_40
    return-void

    .line 128
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback not registered!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 4

    return-void
.end method

.method startScanInternal(Ljava/util/List;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;",
            ">;",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;",
            ")V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->offloadedFilteringSupported:Z

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->scanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_5f

    .line 84
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;-><init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;Ljava/util/List;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V

    .line 85
    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;-><init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$1;)V

    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->_callback:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;

    .line 86
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0, v1, p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->toImpl(Landroid/bluetooth/BluetoothAdapter;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;)Landroid/bluetooth/le/ScanSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->_settings:Landroid/bluetooth/le/ScanSettings;

    if-eqz p1, :cond_40

    .line 88
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getUseHardwareFilteringIfSupported()Z

    move-result p2

    if-eqz p2, :cond_40

    .line 89
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->toImpl(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 91
    :cond_40
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mWrappers:Ljava/util/Map;

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mCallbacks:Ljava/util/Map;

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->_callback:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mWrappers2:Ljava/util/Map;

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->_callback:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iput-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->final_filters:Ljava/util/List;

    .line 97
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->scanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->_settings:Landroid/bluetooth/le/ScanSettings;

    iget-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->_callback:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;

    invoke-virtual {p1, v2, p2, p3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    return-void

    .line 82
    :cond_5f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "BT le scanner not available"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopScan(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mWrappers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    if-nez v0, :cond_b

    return-void

    .line 105
    :cond_b
    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->close()V

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mWrappers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanCallback;

    .line 108
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mWrappers2:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p1

    if-nez p1, :cond_2e

    return-void

    .line 114
    :cond_2e
    invoke-virtual {p1, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    return-void
.end method

.method toImpl(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;)Landroid/bluetooth/le/ScanFilter;
    .registers 7

    .line 247
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 248
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v1

    .line 249
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v1

    .line 250
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->getServiceUuidMask()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v1

    .line 251
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->getManufacturerId()I

    move-result v2

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->getManufacturerData()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->getManufacturerDataMask()[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 253
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 254
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->getServiceData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->getServiceDataMask()[B

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 256
    :cond_45
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object p1

    return-object p1
.end method

.method toImpl(Landroid/bluetooth/BluetoothAdapter;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;)Landroid/bluetooth/le/ScanSettings;
    .registers 6

    .line 229
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getScanMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedScanBatchingSupported()Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getUseHardwareBatchingIfSupported()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 232
    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getReportDelayMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 234
    :cond_20
    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->disableUseHardwareCallbackTypes()V

    .line 236
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object p1

    return-object p1
.end method

.method toImpl(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;

    .line 242
    invoke-virtual {p0, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->toImpl(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;)Landroid/bluetooth/le/ScanFilter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method
