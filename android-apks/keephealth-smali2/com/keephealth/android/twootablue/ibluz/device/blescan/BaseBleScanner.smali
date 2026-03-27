.class public abstract Lcom/keephealth/android/twootablue/ibluz/device/blescan/BaseBleScanner;
.super Ljava/lang/Object;
.source "BaseBleScanner.java"


# instance fields
.field protected isScanning:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onBleScanFailed(Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;)V
.end method

.method public abstract onStartBleScan()V
.end method

.method public abstract onStopBleScan()V
.end method
