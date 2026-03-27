.class Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$5;
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

    .line 906
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 909
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$300(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "timeout"

    const/4 v4, 0x2

    const/4 v5, 0x6

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 910
    instance-of v6, v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    if-eqz v6, :cond_a

    .line 911
    check-cast v1, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    new-instance v6, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {v6, v5, v4, v3}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    .line 913
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    goto :goto_a

    .line 916
    :cond_2c
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1400(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 917
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1400(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;

    invoke-direct {v1, v5, v4, v3}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    .line 919
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 920
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mOnLeWriteCharacteristicListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
    invoke-static {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1402(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;

    .line 922
    :cond_4a
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;->access$1500(Lcom/keephealth/android/util/ble/bluetooth/BleManagerOld;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
