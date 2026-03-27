.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$6;
.super Ljava/lang/Object;
.source "BluzDeviceA2dp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$6;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$6;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->mDisconnectSilence:Z

    return-void
.end method
