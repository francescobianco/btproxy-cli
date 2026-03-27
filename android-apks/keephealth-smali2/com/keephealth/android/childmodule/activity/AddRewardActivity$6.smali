.class Lcom/keephealth/android/childmodule/activity/AddRewardActivity$6;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "AddRewardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 222
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->dialogView:Lcom/keephealth/android/childmodule/DialogView;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->dialogView:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/DialogView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_11

    return-void

    .line 225
    :cond_11
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    const-class v1, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->tv_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->register:Landroidx/activity/result/ActivityResultLauncher;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$500(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method
