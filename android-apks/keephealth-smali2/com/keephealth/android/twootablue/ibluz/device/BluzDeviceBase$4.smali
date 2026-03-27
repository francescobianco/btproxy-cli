.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;
.super Landroid/content/BroadcastReceiver;
.source "BluzDeviceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsScaning:Z

.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)V
    .registers 2

    .line 372
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 373
    iput-boolean p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->mIsScaning:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 377
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 378
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_82

    .line 379
    iget-boolean p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->mIsScaning:Z

    if-nez p1, :cond_f6

    .line 380
    iput-boolean v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->mIsScaning:Z

    .line 381
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->access$300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryTimeoutCallback:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 382
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->access$300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryTimeoutCallback:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x32c8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    iget-object p1, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    if-eqz p1, :cond_45

    .line 384
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    iget-object p1, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    invoke-interface {p1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;->onDiscoveryStarted()V

    .line 385
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->retrieveConnectedDevice()V
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->access$400(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)V

    .line 388
    :cond_45
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceRetry:Landroid/bluetooth/BluetoothDevice;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_6d

    .line 389
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->access$300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mRetryCallback:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->access$500(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->access$300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mRetryCallback:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->access$500(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_f6

    .line 391
    :cond_6d
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    iget-object p1, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDeviceA2dp:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    if-eqz p1, :cond_f6

    .line 393
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mAtuoConnect:Z
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->access$600(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Z

    move-result p1

    if-eqz p1, :cond_f6

    .line 394
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    invoke-virtual {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->connect()V

    goto/16 :goto_f6

    .line 397
    :cond_82
    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 398
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 399
    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->isValidType(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {p2, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->access$000(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_f6

    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    iget-object p2, p2, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    if-eqz p2, :cond_f6

    .line 400
    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    iget-object p2, p2, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    invoke-interface {p2, p1, v1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;->onFound(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_f6

    .line 402
    :cond_a8
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 403
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->access$300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryTimeoutCallback:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 404
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    iget-object p1, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    if-eqz p1, :cond_cc

    .line 405
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    iget-object p1, p1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mDiscoveryListener:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;

    invoke-interface {p1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnDiscoveryListener;->onDiscoveryFinished()V

    .line 407
    :cond_cc
    iget-boolean p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->mIsScaning:Z

    if-ne p1, v1, :cond_f6

    const/4 p1, 0x0

    .line 408
    iput-boolean p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->mIsScaning:Z

    goto :goto_f6

    .line 410
    :cond_d4
    const-string v0, "com.actions.ibluz.data.disconnect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f6

    .line 411
    const-string p1, "package-name"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 412
    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    iget-object p2, p2, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f6

    .line 413
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBase;->disconnect(I)V

    :cond_f6
    :goto_f6
    return-void
.end method
