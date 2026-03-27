.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat$1;
.super Ljava/lang/Object;
.source "BluzDeviceA2dpCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->connectWithProfileConnected(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 99
    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat$1;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->readyConnect()V

    .line 101
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
