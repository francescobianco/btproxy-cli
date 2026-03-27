.class final Lcom/keephealth/android/util/ota/Peripheral$RssiUpdateRunnable;
.super Ljava/lang/Object;
.source "Peripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ota/Peripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RssiUpdateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ota/Peripheral;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/util/ota/Peripheral;)V
    .registers 2

    .line 956
    iput-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral$RssiUpdateRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Peripheral$1;)V
    .registers 3

    .line 956
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Peripheral$RssiUpdateRunnable;-><init>(Lcom/keephealth/android/util/ota/Peripheral;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 961
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral$RssiUpdateRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    iget-boolean v0, v0, Lcom/keephealth/android/util/ota/Peripheral;->monitorRssi:Z

    if-nez v0, :cond_7

    return-void

    .line 964
    :cond_7
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral$RssiUpdateRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ota/Peripheral;->isConnected()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 967
    :cond_10
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral$RssiUpdateRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    iget-object v0, v0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1d

    .line 968
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral$RssiUpdateRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    iget-object v0, v0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    .line 970
    :cond_1d
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral$RssiUpdateRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    iget-object v0, v0, Lcom/keephealth/android/util/ota/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/ota/Peripheral$RssiUpdateRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    iget-object v1, v1, Lcom/keephealth/android/util/ota/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/keephealth/android/util/ota/Peripheral$RssiUpdateRunnable;->this$0:Lcom/keephealth/android/util/ota/Peripheral;

    iget v2, v2, Lcom/keephealth/android/util/ota/Peripheral;->updateIntervalMill:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
