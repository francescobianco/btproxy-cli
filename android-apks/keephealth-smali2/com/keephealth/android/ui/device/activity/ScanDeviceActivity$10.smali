.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$10;
.super Ljava/lang/Object;
.source "ScanDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
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

    .line 721
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 725
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
