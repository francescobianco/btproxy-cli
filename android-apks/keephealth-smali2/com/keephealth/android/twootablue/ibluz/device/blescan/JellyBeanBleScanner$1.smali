.class Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner$1;
.super Ljava/lang/Object;
.source "JellyBeanBleScanner.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 5

    .line 17
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;->mScanCallback:Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;->access$000(Lcom/keephealth/android/twootablue/ibluz/device/blescan/JellyBeanBleScanner;)Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;->onBleScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    return-void
.end method
