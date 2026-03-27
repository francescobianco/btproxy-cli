.class Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;
.super Ljava/lang/Object;
.source "BluetoothLeScannerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MatchLostNotifierTask"
.end annotation


# instance fields
.field private final mMatchLostScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;->this$1:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;->mMatchLostScanResults:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$1;)V
    .registers 3

    .line 240
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;-><init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 247
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;->this$1:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInRange:Ljava/util/Map;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->access$200(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 248
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    .line 249
    invoke-virtual {v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getTimestampNanos()J

    move-result-wide v4

    iget-object v6, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;->this$1:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;
    invoke-static {v6}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->access$000(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getMatchLostDeviceTimeout()J

    move-result-wide v6

    sub-long v6, v0, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_12

    .line 250
    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;->mMatchLostScanResults:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 253
    :cond_38
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;->mMatchLostScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 254
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;->mMatchLostScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    .line 255
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;->this$1:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mDevicesInRange:Ljava/util/Map;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->access$200(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;->this$1:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    const/4 v3, 0x0

    # invokes: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->onFoundOrLost(ZLcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V
    invoke-static {v2, v3, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->access$300(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;ZLcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)V

    goto :goto_46

    .line 258
    :cond_6a
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;->mMatchLostScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 260
    :cond_6f
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;->this$1:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    iget-object v0, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->this$0:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->access$100(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;->this$1:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mMatchLostNotifierTask:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->access$400(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper$MatchLostNotifierTask;->this$1:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->mScanSettings:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;->access$000(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->getMatchLostTaskInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
