.class Lcom/keephealth/android/childmodule/fragment/RewardFragment$7;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "RewardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/fragment/RewardFragment;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)V
    .registers 2

    .line 321
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$7;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 324
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$7;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    const-string v0, "isEdit"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 326
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$7;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/RewardFragment;->register:Landroidx/activity/result/ActivityResultLauncher;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->access$200(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method
