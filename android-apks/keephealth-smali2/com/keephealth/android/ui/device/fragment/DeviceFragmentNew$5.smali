.class Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$5;
.super Ljava/lang/Object;
.source "DeviceFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V
    .registers 2

    .line 1431
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$5;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1434
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$5;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->clearData(I)V

    .line 1435
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$5;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew$5;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    # getter for: Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->reMindTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->access$2600(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
