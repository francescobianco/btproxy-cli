.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;
.super Ljava/lang/Object;
.source "ScanDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->searchSystemBlueData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

.field final synthetic val$tab:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1796
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->val$tab:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1800
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27$1;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$27;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
