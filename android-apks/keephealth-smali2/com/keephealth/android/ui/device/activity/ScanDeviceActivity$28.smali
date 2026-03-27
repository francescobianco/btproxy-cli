.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$28;
.super Ljava/lang/Object;
.source "ScanDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V
    .registers 2

    .line 2063
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$28;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2066
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result v0

    if-nez v0, :cond_46

    .line 2067
    const-string v0, "onResume:333"

    const-string v1, "gg3d3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$28;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$200(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 2069
    const-string v0, "onResume:444"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$28;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$200(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->connecting(I)V

    .line 2071
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$28;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$400(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 2072
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$28;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$400(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$28;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$4700(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3b
    const/16 v0, 0x17

    .line 2074
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 2075
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$28;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$2002(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)I

    :cond_46
    return-void
.end method
