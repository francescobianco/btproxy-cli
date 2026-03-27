.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase$2;
.super Ljava/lang/Object;
.source "BluzDeviceA2dpBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->isA2dpConnected()Z

    move-result v0

    if-nez v0, :cond_d

    .line 202
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase$2;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dpBase;->connectA2dpFail()V

    :cond_d
    return-void
.end method
