.class Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;
.super Ljava/lang/Object;
.source "BluetoothLeScannerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanCallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;
    }
.end annotation


# instance fields
.field cachedThreadPool:Ljava/util/concurrent/ExecutorService;

.field private device_name:Ljava/lang/String;

.field private final mDevicesInBatch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicesInRange:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlushPendingScanResultsTask:Ljava/lang/Runnable;

.field private mMatchLostNotifierTask:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

.field private final mScanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

.field private final mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanSettings:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;Ljava/util/List;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V
    .registers 9
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

    .line 182
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$1;-><init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mFlushPendingScanResultsTask:Ljava/lang/Runnable;

    .line 333
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 334
    const-string v1, ""

    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->device_name:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mFilters:Ljava/util/List;

    .line 184
    iput-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    .line 185
    iput-object p4, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    .line 188
    invoke-virtual {p3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getCallbackType()I

    move-result p2

    const/4 p4, 0x1

    const/4 v1, 0x0

    if-eq p2, p4, :cond_32

    invoke-virtual {p3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getUseHardwareCallbackTypesIfSupported()Z

    move-result p2

    if-nez p2, :cond_32

    .line 189
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInRange:Ljava/util/Map;

    goto :goto_34

    .line 191
    :cond_32
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInRange:Ljava/util/Map;

    .line 194
    :goto_34
    invoke-virtual {p3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getReportDelayMillis()J

    move-result-wide p2

    const-wide/16 v2, 0x0

    cmp-long p4, p2, v2

    if-lez p4, :cond_54

    .line 196
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanResults:Ljava/util/List;

    .line 197
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInBatch:Ljava/util/List;

    .line 198
    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->access$100(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_58

    .line 200
    :cond_54
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanResults:Ljava/util/List;

    .line 201
    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInBatch:Ljava/util/List;

    :goto_58
    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Ljava/util/Map;
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInRange:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;ZLcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V
    .registers 3

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->onFoundOrLost(ZLcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mMatchLostNotifierTask:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V
    .registers 2

    .line 158
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->onScanResult(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    return-object p0
.end method

.method private matches(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)Z
    .registers 4

    .line 326
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;

    .line 327
    invoke-virtual {v1, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->matches(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method private onBatchScanResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 362
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$4;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$4;-><init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;Ljava/util/List;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 368
    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private onFoundOrLost(ZLcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V
    .registers 4

    .line 384
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$5;-><init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;ZLcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 396
    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private onScanResult(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V
    .registers 4

    .line 339
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->access$100(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$3;-><init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method close()V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanResults:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 207
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->access$100(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mFlushPendingScanResultsTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    :cond_f
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInRange:Ljava/util/Map;

    if-eqz v0, :cond_16

    .line 210
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 212
    :cond_16
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mMatchLostNotifierTask:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

    if-eqz v0, :cond_28

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->access$100(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mMatchLostNotifierTask:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mMatchLostNotifierTask:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

    :cond_28
    return-void
.end method

.method flushPendingScanResults()V
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanResults:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 232
    monitor-enter v0

    .line 233
    :try_start_5
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanResults:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 234
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 235
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInBatch:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 236
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-void
.end method

.method getScanCallback()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    return-object v0
.end method

.method getScanFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mFilters:Ljava/util/List;

    return-object v0
.end method

.method getScanSettings()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    return-object v0
.end method

.method handleScanResult(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;I)V
    .registers 7

    .line 268
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mFilters:Ljava/util/List;

    if-eqz p2, :cond_18

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_18

    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->matches(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)Z

    move-result p2

    if-nez p2, :cond_18

    .line 269
    const-string p1, "rtrtu6"

    const-string p2, "scanResult_\u5f00\u59cb_return"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 273
    :cond_18
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    .line 275
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInRange:Ljava/util/Map;

    if-eqz v0, :cond_6b

    .line 277
    const-string v0, "rtrtu6"

    const-string v1, "mDevicesInRange != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInRange:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    if-nez p2, :cond_43

    .line 280
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getCallbackType()I

    move-result p2

    and-int/lit8 p2, p2, 0x2

    if-lez p2, :cond_43

    const/4 p2, 0x1

    .line 281
    invoke-direct {p0, p2, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->onFoundOrLost(ZLcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V

    .line 285
    :cond_43
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getCallbackType()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-lez p1, :cond_a2

    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mMatchLostNotifierTask:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

    if-nez p1, :cond_a2

    .line 286
    new-instance p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;-><init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$1;)V

    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mMatchLostNotifierTask:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

    .line 287
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->access$100(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mMatchLostNotifierTask:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getMatchLostTaskInterval()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a2

    .line 292
    :cond_6b
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getReportDelayMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_91

    .line 293
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanResults:Ljava/util/List;

    monitor-enter v0

    .line 294
    :try_start_7a
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInBatch:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 295
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanResults:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInBatch:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_8c
    monitor-exit v0

    return-void

    :catchall_8e
    move-exception p1

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_7a .. :try_end_90} :catchall_8e

    throw p1

    .line 302
    :cond_91
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$2;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$2;-><init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a2
    :goto_a2
    return-void
.end method

.method handleScanResults(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;",
            ">;Z)V"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mFilters:Ljava/util/List;

    if-eqz v0, :cond_2e

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getUseHardwareFilteringIfSupported()Z

    move-result p2

    if-nez p2, :cond_2e

    .line 316
    :cond_e
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 317
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    .line 318
    invoke-direct {p0, v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->matches(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 319
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    move-object p1, p2

    .line 322
    :cond_2e
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->onBatchScanResults(Ljava/util/List;)V

    return-void
.end method

.method onScanManagerErrorCallback(I)V
    .registers 4

    .line 400
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanCallback:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->postCallbackError(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;I)V
    invoke-static {v0, v1, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->access$800(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;I)V

    return-void
.end method
