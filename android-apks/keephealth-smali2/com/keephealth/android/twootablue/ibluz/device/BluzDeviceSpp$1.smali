.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$1;
.super Ljava/lang/Object;
.source "BluzDeviceSpp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .registers 5

    monitor-enter p0

    .line 103
    :try_start_1
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    iget-object v0, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_52

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    iget-object v0, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->isAppForeground(Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v1, 0x2710

    if-nez v0, :cond_24

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mSppCallback:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_54

    .line 107
    monitor-exit p0

    return-void

    .line 108
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mConnectPopActivity:Z
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->access$300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    const/4 v3, 0x0

    # setter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mConnectPopActivity:Z
    invoke-static {v0, v3}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->access$302(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;Z)Z

    .line 111
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->access$200(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mSppCallback:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_41
    .catchall {:try_start_24 .. :try_end_41} :catchall_54

    .line 112
    monitor-exit p0

    return-void

    .line 115
    :cond_43
    :try_start_43
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mConnectionTask:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->access$400(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;->cancel(Z)Z

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->connectSppFail()V
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->access$500(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)V
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_54

    .line 118
    :cond_52
    monitor-exit p0

    return-void

    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method
