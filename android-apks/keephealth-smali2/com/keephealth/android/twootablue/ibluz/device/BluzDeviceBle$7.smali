.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$7;
.super Ljava/lang/Object;
.source "BluzDeviceBle.java"

# interfaces
.implements Lcom/keephealth/android/twootablue/ibluz/device/blescan/SimpleScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V
    .registers 2

    .line 533
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$7;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBleScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 4

    .line 537
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 538
    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$7;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mHandler:Landroid/os/Handler;
    invoke-static {p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_14
    return-void
.end method

.method public onBleScanFailed(Lcom/keephealth/android/twootablue/ibluz/device/blescan/BleScanState;)V
    .registers 2

    return-void
.end method
