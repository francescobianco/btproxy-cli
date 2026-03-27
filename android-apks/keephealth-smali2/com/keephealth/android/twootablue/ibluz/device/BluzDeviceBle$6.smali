.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$6;
.super Ljava/lang/Object;
.source "BluzDeviceBle.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 521
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$6;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .registers 4

    const-string v0, "mConnectCallback  mDeviceConnected: "

    monitor-enter p0

    .line 524
    :try_start_3
    const-string v1, "rtrtu5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$6;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    iget-object v0, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$6;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$6;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mConnectCallback:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$900(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 526
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$6;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    iget-object v0, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_38

    const/16 v0, 0x312

    .line 527
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 528
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$6;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->connectBleFail()V
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$1000(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_3a

    .line 530
    :cond_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
