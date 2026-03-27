.class final Lcom/keephealth/android/util/telinkota/Peripheral$RssiUpdateRunnable;
.super Ljava/lang/Object;
.source "Peripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/telinkota/Peripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RssiUpdateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/telinkota/Peripheral;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/util/telinkota/Peripheral;)V
    .registers 2

    .line 1114
    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral$RssiUpdateRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Peripheral$1;)V
    .registers 3

    .line 1114
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral$RssiUpdateRunnable;-><init>(Lcom/keephealth/android/util/telinkota/Peripheral;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1119
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral$RssiUpdateRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    iget-boolean v0, v0, Lcom/keephealth/android/util/telinkota/Peripheral;->monitorRssi:Z

    if-nez v0, :cond_7

    return-void

    .line 1122
    :cond_7
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral$RssiUpdateRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    invoke-virtual {v0}, Lcom/keephealth/android/util/telinkota/Peripheral;->isConnected()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 1125
    :cond_10
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral$RssiUpdateRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    iget-object v0, v0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1d

    .line 1126
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral$RssiUpdateRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    iget-object v0, v0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    .line 1128
    :cond_1d
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral$RssiUpdateRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    iget-object v0, v0, Lcom/keephealth/android/util/telinkota/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral$RssiUpdateRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    iget-object v1, v1, Lcom/keephealth/android/util/telinkota/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/Peripheral$RssiUpdateRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    iget v2, v2, Lcom/keephealth/android/util/telinkota/Peripheral;->updateIntervalMill:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
