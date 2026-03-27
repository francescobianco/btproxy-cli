.class Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2;
.super Ljava/lang/Object;
.source "RewardFragment.java"

# interfaces
.implements Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnDuihuanClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->onChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2;->this$1:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDuihuanClick(ILcom/keephealth/android/childmodule/bean/RewardSelectBean;)V
    .registers 5

    if-eqz p2, :cond_2d

    .line 192
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2;->this$1:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iput-object p2, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->mTaskRewardBean:Lcom/keephealth/android/childmodule/bean/RewardSelectBean;

    .line 193
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2;->this$1:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2;->this$1:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;->getIconId()I

    move-result p2

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2$1;-><init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2;)V

    invoke-static {v0, p2, v1}, Lcom/keephealth/android/util/DialogHelperNew;->showDuihuanReword(Landroid/app/Activity;ILcom/keephealth/android/util/DialogHelperNew$CancelDuiHuanRecord;)Landroid/app/Dialog;

    move-result-object p2

    # setter for: Lcom/keephealth/android/childmodule/fragment/RewardFragment;->duihuanDialog:Landroid/app/Dialog;
    invoke-static {p1, p2}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->access$302(Lcom/keephealth/android/childmodule/fragment/RewardFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 201
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2;->this$1:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->viewModel:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->setReward()V

    :cond_2d
    return-void
.end method
