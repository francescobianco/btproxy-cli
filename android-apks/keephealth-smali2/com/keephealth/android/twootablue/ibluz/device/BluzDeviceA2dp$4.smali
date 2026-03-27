.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$4;
.super Ljava/lang/Object;
.source "BluzDeviceA2dp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;
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

    .line 144
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp$4;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceA2dp;->readyConnect()V

    return-void
.end method
