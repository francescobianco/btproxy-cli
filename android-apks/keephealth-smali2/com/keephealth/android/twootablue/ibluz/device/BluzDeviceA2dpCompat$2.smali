.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat$2;
.super Landroid/os/Handler;
.source "BluzDeviceA2dpCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;
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

    .line 133
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 136
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_5

    goto :goto_16

    .line 138
    :cond_5
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->updateConnection()V
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->access$000(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;)V

    .line 139
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;->access$100(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpCompat;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_16
    return-void
.end method
