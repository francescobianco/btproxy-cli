.class public Lcom/keephealth/android/twootablue/ibluz/device/edrscan/EdrScanner;
.super Ljava/lang/Object;
.source "EdrScanner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.keephealth.android.twootablue.ibluz.device.edrscan.EdrScanner"


# instance fields
.field public mEdrScanner:Lcom/keephealth/android/twootablue/ibluz/device/edrscan/BaseEdrScanner;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/keephealth/android/twootablue/ibluz/device/edrscan/SimpleScanCallback;)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isScanning()Z
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/edrscan/EdrScanner;->mEdrScanner:Lcom/keephealth/android/twootablue/ibluz/device/edrscan/BaseEdrScanner;

    iget-boolean v0, v0, Lcom/keephealth/android/twootablue/ibluz/device/edrscan/BaseEdrScanner;->isScanning:Z

    return v0
.end method

.method public startEdrScan()V
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/edrscan/EdrScanner;->mEdrScanner:Lcom/keephealth/android/twootablue/ibluz/device/edrscan/BaseEdrScanner;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/edrscan/BaseEdrScanner;->onStartEdrScan()V

    return-void
.end method

.method public stopEdrScan()V
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/edrscan/EdrScanner;->mEdrScanner:Lcom/keephealth/android/twootablue/ibluz/device/edrscan/BaseEdrScanner;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/edrscan/BaseEdrScanner;->onStopEdrScan()V

    return-void
.end method
