.class public Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanner;
.super Ljava/lang/Object;
.source "BleScanner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.keephealth.android.twootablue.ibluz.device.blescan.BleScanner"


# instance fields
.field public bleScanner:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BaseBleScanner;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance p1, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;

    invoke-direct {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/LollipopBleScanner;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;)V

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanner;->bleScanner:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BaseBleScanner;

    return-void
.end method


# virtual methods
.method public isScanning()Z
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanner;->bleScanner:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BaseBleScanner;

    iget-boolean v0, v0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BaseBleScanner;->isScanning:Z

    return v0
.end method

.method public startBleScan()V
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanner;->bleScanner:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BaseBleScanner;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BaseBleScanner;->onStartBleScan()V

    return-void
.end method

.method public stopBleScan()V
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanner;->bleScanner:Lcom/keephealth/android/twootablue/ibluz/device/blescan/BaseBleScanner;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/BaseBleScanner;->onStopBleScan()V

    return-void
.end method
