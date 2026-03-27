.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$5;
.super Ljava/lang/Object;
.source "BluzDeviceEDR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;)V
    .registers 2

    .line 526
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$5;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .registers 3

    monitor-enter p0

    .line 529
    :try_start_1
    const-string v0, "BluzDeiceEDR"

    const-string v1, "mScanCallback timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR$5;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceEDR;->cancelDiscovery()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 531
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
