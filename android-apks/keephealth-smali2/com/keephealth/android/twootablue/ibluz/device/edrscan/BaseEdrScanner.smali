.class public abstract Lcom/keephealth/android/twootablue/ibluz/device/edrscan/BaseEdrScanner;
.super Ljava/lang/Object;
.source "BaseEdrScanner.java"


# instance fields
.field protected isScanning:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onEdrScanFailed(Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;)V
.end method

.method public abstract onStartEdrScan()V
.end method

.method public abstract onStopEdrScan()V
.end method
