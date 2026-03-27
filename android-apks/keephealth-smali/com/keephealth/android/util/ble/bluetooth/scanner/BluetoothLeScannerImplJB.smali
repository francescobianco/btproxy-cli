.class Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;
.super Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;
.source "BluetoothLeScannerImplJB.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mPowerSaveHandler:Landroid/os/Handler;

.field private mPowerSaveRestInterval:J

.field private mPowerSaveScanInterval:J

.field private mPowerSaveScanRunnable:Ljava/lang/Runnable;

.field private mPowerSaveSleepRunnable:Ljava/lang/Runnable;

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


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;-><init>()V

    .line 53
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB$1;-><init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveSleepRunnable:Ljava/lang/Runnable;

    .line 68
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB$2;-><init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveScanRunnable:Ljava/lang/Runnable;

    .line 87
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mWrappers:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;)Landroid/bluetooth/BluetoothAdapter;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;)J
    .registers 3

    .line 47
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveRestInterval:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;)J
    .registers 3

    .line 47
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveScanInterval:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;)Landroid/os/Handler;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;)Ljava/lang/Runnable;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveScanRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;)Ljava/lang/Runnable;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveSleepRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private setPowerSaveSettings()V
    .registers 12

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mWrappers:Ljava/util/Map;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mWrappers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    move-wide v4, v2

    move-wide v6, v4

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    .line 123
    invoke-virtual {v8}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->getScanSettings()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    move-result-object v8

    .line 124
    invoke-virtual {v8}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->hasPowerSaveMode()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 125
    invoke-virtual {v8}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getPowerSaveRest()J

    move-result-wide v9

    cmp-long v9, v4, v9

    if-lez v9, :cond_36

    .line 126
    invoke-virtual {v8}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getPowerSaveRest()J

    move-result-wide v4

    .line 128
    :cond_36
    invoke-virtual {v8}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getPowerSaveScan()J

    move-result-wide v9

    cmp-long v9, v6, v9

    if-lez v9, :cond_14

    .line 129
    invoke-virtual {v8}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getPowerSaveScan()J

    move-result-wide v6

    goto :goto_14

    .line 133
    :cond_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_89

    cmp-long v0, v4, v2

    if-gez v0, :cond_72

    cmp-long v0, v6, v2

    if-gez v0, :cond_72

    .line 135
    iput-wide v4, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveRestInterval:J

    .line 136
    iput-wide v6, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveScanInterval:J

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveHandler:Landroid/os/Handler;

    if-nez v0, :cond_5c

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveHandler:Landroid/os/Handler;

    goto :goto_68

    .line 140
    :cond_5c
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    :goto_68
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveSleepRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveScanInterval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_88

    :cond_72
    const-wide/16 v0, 0x0

    .line 145
    iput-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveScanInterval:J

    iput-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveRestInterval:J

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveHandler:Landroid/os/Handler;

    if-eqz v0, :cond_88

    .line 147
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mPowerSaveSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_88
    :goto_88
    return-void

    :catchall_89
    move-exception v1

    .line 133
    :try_start_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v1
.end method


# virtual methods
.method public flushPendingScanResults(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    if-eqz p1, :cond_13

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mWrappers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->flushPendingScanResults()V

    return-void

    .line 178
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 11

    .line 192
    new-instance v6, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    invoke-static {p3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->parseFromBytes([B)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    move-object v0, v6

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;IJ)V

    .line 193
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mWrappers:Ljava/util/Map;

    monitor-enter p1

    .line 194
    :try_start_13
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mWrappers:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    .line 195
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    const/4 v0, 0x1

    .line 196
    invoke-virtual {p3, v6, v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->handleScanResult(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;I)V

    goto :goto_1d

    .line 198
    :cond_2e
    monitor-exit p1

    return-void

    :catchall_30
    move-exception p2

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_30

    throw p2
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

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mWrappers:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mWrappers:Ljava/util/Map;

    monitor-enter v0

    .line 104
    :try_start_10
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mWrappers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    .line 106
    new-instance v2, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;-><init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;Ljava/util/List;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V

    .line 107
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mWrappers:Ljava/util/Map;

    invoke-interface {p1, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_39

    .line 110
    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->setPowerSaveSettings()V

    if-eqz v1, :cond_38

    const/4 p1, 0x2

    .line 114
    new-array p1, p1, [Ljava/util/UUID;

    const/4 p2, 0x0

    sget-object p3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    aput-object p3, p1, p2

    const/4 p2, 0x1

    sget-object p3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_PAIR:Ljava/util/UUID;

    aput-object p3, p1, p2

    .line 115
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2, p1, p0}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    :cond_38
    return-void

    :catchall_39
    move-exception p1

    .line 108
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1

    .line 99
    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scanner already started with given callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopScan(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V
    .registers 5

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mWrappers:Ljava/util/Map;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mWrappers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    if-nez v1, :cond_f

    .line 160
    monitor-exit v0

    return-void

    .line 162
    :cond_f
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mWrappers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->close()V

    .line 164
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_29

    .line 166
    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->setPowerSaveSettings()V

    .line 168
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mWrappers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 169
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplJB;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    :cond_28
    return-void

    :catchall_29
    move-exception p1

    .line 164
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method
