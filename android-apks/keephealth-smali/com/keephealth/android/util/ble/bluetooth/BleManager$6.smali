.class Lcom/keephealth/android/util/ble/bluetooth/BleManager$6;
.super Ljava/lang/Object;
.source "BleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)V
    .registers 2

    .line 1092
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$6;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v0, 0x0

    .line 1095
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->connectingOrnoTwo:Z

    .line 1096
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$6;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "Bluetooth connect timeout."

    const/4 v4, 0x1

    const/4 v5, 0x6

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1097
    instance-of v6, v2, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v6, :cond_d

    .line 1098
    check-cast v2, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    new-instance v6, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;

    invoke-direct {v6, v5, v4, v3}, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V

    goto :goto_d

    .line 1102
    :cond_2c
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$6;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 1103
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$6;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;

    invoke-direct {v2, v5, v4, v3}, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V

    .line 1106
    :cond_42
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    const/16 v1, 0x12e

    .line 1107
    invoke-static {v1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 1108
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$6;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$6;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1109
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/app/AppApplication;->isConnecting:Ljava/lang/Boolean;

    .line 1110
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGattingConnect:Z

    return-void
.end method
