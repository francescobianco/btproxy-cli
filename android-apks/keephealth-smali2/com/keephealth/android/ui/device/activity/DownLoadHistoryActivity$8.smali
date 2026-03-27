.class Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$8;
.super Ljava/lang/Object;
.source "DownLoadHistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V
    .registers 2

    .line 539
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 542
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1f

    .line 544
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$8;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1f
    return-void
.end method
