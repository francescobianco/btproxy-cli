.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$23;
.super Ljava/lang/Object;
.source "ScanDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->setGotoDevice()V
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

    .line 1069
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$23;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1072
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$23;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->canNavigate()Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1073
    :cond_9
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$23;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->navigated:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3600(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 1074
    :cond_18
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$23;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const-class v2, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1075
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$23;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1076
    const-class v0, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;

    const-string v0, "PairSuccessActivity"

    sput-object v0, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 1077
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$23;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    sget-object v1, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    const-string v2, "class"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classStr"

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 1079
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$23;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->finish()V

    return-void
.end method
