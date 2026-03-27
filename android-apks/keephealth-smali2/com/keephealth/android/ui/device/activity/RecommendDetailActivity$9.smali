.class Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$9;
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

    .line 684
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 687
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_22

    .line 688
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    .line 691
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$9;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1700(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_22
    return-void
.end method
