.class Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$4;
.super Ljava/lang/Object;
.source "BleManagerOld.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)V
    .registers 2

    .line 553
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 556
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Bluetooth connect timeout."

    const/4 v3, 0x1

    const/4 v4, 0x6

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 557
    instance-of v5, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v5, :cond_a

    .line 558
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    new-instance v5, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;

    invoke-direct {v5, v4, v3, v2}, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V

    goto :goto_a

    .line 562
    :cond_29
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 563
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;

    invoke-direct {v1, v4, v3, v2}, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V

    :cond_3f
    const/16 v0, 0x12e

    .line 566
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 567
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$4;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
