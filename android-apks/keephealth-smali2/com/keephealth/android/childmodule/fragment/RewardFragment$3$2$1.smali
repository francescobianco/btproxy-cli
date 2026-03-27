.class Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2$1;
.super Ljava/lang/Object;
.source "RewardFragment.java"

# interfaces
.implements Lcom/keephealth/android/util/DialogHelperNew$CancelDuiHuanRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2;->onDuihuanClick(ILcom/keephealth/android/childmodule/bean/RewardSelectBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2$1;->this$2:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public concanDuiHuan()V
    .registers 3

    .line 196
    const-string v0, "tty5rt"

    const-string v1, "\u70b9\u51fb\u4e86\u53d6\u6d88"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2$1;->this$2:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2;->this$1:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2$1;->this$2:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2;->this$1:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->viewModel:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->setCancelReward()V

    return-void
.end method
