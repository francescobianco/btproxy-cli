.class public abstract Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;
.super Ljava/lang/Object;
.source "BluetoothLeScannerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$ScanCallbackWrapper;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;)Landroid/os/Handler;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;I)V
    .registers 3

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->postCallbackError(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;I)V

    return-void
.end method

.method public static getScanner()Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;
    .registers 1

    .line 72
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->mInstance:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    if-eqz v0, :cond_5

    return-object v0

    .line 75
    :cond_5
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplMarshmallow;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerImplMarshmallow;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->mInstance:Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;

    return-object v0
.end method

.method private postCallbackError(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;I)V
    .registers 5

    .line 405
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat$1;-><init>(Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public abstract flushPendingScanResults(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V
.end method

.method public startScan(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V
    .registers 4

    if-eqz p1, :cond_10

    .line 103
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->build()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->startScanInternal(Ljava/util/List;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V

    return-void

    .line 101
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startScan(Ljava/util/List;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V
    .registers 4
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

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothLeScannerCompat;->startScanInternal(Ljava/util/List;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V

    return-void

    .line 123
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "settings or callback is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract startScanInternal(Ljava/util/List;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V
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
.end method

.method public abstract stopScan(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanCallback;)V
.end method
