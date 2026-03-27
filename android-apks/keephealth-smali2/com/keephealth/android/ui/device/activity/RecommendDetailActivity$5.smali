.class Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$5;
.super Ljava/lang/Object;
.source "RecommendDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)V
    .registers 2

    .line 552
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 555
    const-string v0, "bluetooth le scanning..."

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 557
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->downloadTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$800(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
