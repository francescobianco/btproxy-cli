.class Lcom/keephealth/android/util/ble/bluetooth/BleManager$8;
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

    .line 1548
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$8;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1552
    const-string v0, "timeout"

    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x0

    :try_start_5
    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$8;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {v4}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_40

    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$8;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {v4}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_40

    .line 1553
    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$8;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {v4}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_23
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1554
    instance-of v6, v5, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v6, :cond_23

    .line 1555
    check-cast v5, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v6, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {v6, v2, v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    .line 1557
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z
    :try_end_3f
    .catch Ljava/util/ConcurrentModificationException; {:try_start_5 .. :try_end_3f} :catch_40

    goto :goto_23

    .line 1564
    :catch_40
    :cond_40
    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$8;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    invoke-static {v4}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    move-result-object v4

    if-eqz v4, :cond_5e

    .line 1565
    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$8;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    invoke-static {v4}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    move-result-object v4

    new-instance v5, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {v5, v2, v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    .line 1567
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1568
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$8;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    invoke-static {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1602(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    .line 1570
    :cond_5e
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->sendingOrno:Z

    .line 1571
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$8;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isCannextSend:Z
    invoke-static {v0, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1702(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Z)Z

    .line 1572
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$8;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$600(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$8;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1800(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
