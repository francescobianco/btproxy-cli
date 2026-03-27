.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$8;
.super Ljava/lang/Object;
.source "BluzDeviceBle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)V
    .registers 2

    .line 607
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$8;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v0, 0x0

    .line 610
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGattingConnect:Z

    .line 611
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$8;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    # getter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->access$300(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle$8;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;

    iget-object v1, v1, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceBle;->connectTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
