.class Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothLeScannerImplLollipop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanCallbackImpl"
.end annotation


# instance fields
.field private mLastBatchTimestamp:J

.field result:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$1;)V
    .registers 3

    .line 144
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;-><init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;)V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mWrappers2:Ljava/util/Map;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->access$100(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    if-eqz v0, :cond_9c

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 177
    iget-wide v3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->mLastBatchTimestamp:J

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->getScanSettings()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getReportDelayMillis()J

    move-result-wide v5

    sub-long v5, v1, v5

    const-wide/16 v7, 0x5

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_26

    return-void

    .line 180
    :cond_26
    iput-wide v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->mLastBatchTimestamp:J

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanResult;

    .line 184
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v3

    if-eqz v3, :cond_4c

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v3

    goto :goto_4d

    :cond_4c
    const/4 v3, 0x0

    .line 186
    :goto_4d
    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->result:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    if-nez v4, :cond_69

    .line 187
    new-instance v4, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->parseFromBytes([B)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    move-result-object v7

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v8

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v9

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;IJ)V

    iput-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->result:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    .line 189
    :cond_69
    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->result:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->setmDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 190
    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->result:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->setmRssi(I)V

    .line 191
    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->result:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->setmTimestampNanos(J)V

    .line 192
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->result:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->parseFromBytes([B)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->setmScanRecord(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V

    .line 193
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->result:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 196
    :cond_93
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->offloadedFilteringSupported:Z
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->access$200(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->handleScanResults(Ljava/util/List;Z)V

    :cond_9c
    return-void
.end method

.method public onScanFailed(I)V
    .registers 6

    .line 203
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mWrappers2:Ljava/util/Map;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->access$100(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    if-nez v0, :cond_f

    return-void

    .line 207
    :cond_f
    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->getScanSettings()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getUseHardwareCallbackTypesIfSupported()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getCallbackType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_36

    .line 215
    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->disableUseHardwareCallbackTypes()V

    .line 217
    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->getScanCallback()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    move-result-object p1

    .line 218
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;

    invoke-virtual {v2, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->stopScan(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V

    .line 219
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->getScanFilters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->startScanInternal(Ljava/util/List;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V

    return-void

    .line 224
    :cond_36
    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->onScanManagerErrorCallback(I)V

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 11

    .line 150
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->mWrappers2:Ljava/util/Map;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;->access$100(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    if-eqz p1, :cond_65

    .line 153
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 157
    :goto_1e
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->result:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    if-nez v1, :cond_3a

    .line 158
    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->parseFromBytes([B)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    move-result-object v4

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v5

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;IJ)V

    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->result:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    .line 161
    :cond_3a
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->result:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->setmDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 162
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->result:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->setmRssi(I)V

    .line 163
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->result:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->setmTimestampNanos(J)V

    .line 164
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->result:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->parseFromBytes([B)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->setmScanRecord(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V

    .line 165
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplLollipop$ScanCallbackImpl;->result:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->handleScanResult(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;I)V

    goto :goto_6c

    .line 167
    :cond_65
    const-string p1, "tttre4g4"

    const-string p2, "wrapper == null:"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6c
    return-void
.end method
