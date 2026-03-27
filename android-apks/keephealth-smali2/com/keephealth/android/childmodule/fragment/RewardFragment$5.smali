.class Lcom/keephealth/android/childmodule/fragment/RewardFragment$5;
.super Ljava/lang/Object;
.source "RewardFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/fragment/RewardFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$5;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .registers 3

    .line 280
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 281
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_27

    .line 282
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$5;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->mTaskRewardBean:Lcom/keephealth/android/childmodule/bean/RewardSelectBean;

    if-eqz p1, :cond_40

    .line 283
    new-instance p1, Lcom/keephealth/android/childmodule/bean/ExchangeRewardHttpBean;

    invoke-direct {p1}, Lcom/keephealth/android/childmodule/bean/ExchangeRewardHttpBean;-><init>()V

    .line 284
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$5;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->mTaskRewardBean:Lcom/keephealth/android/childmodule/bean/RewardSelectBean;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/bean/ExchangeRewardHttpBean;->setRewardId(I)V

    .line 285
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$5;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->viewModel:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->exchangeReward(Lcom/keephealth/android/childmodule/bean/ExchangeRewardHttpBean;)V

    goto :goto_40

    .line 288
    :cond_27
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$5;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/RewardFragment;->duihuanDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->access$300(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 289
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$5;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f100629

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :cond_40
    :goto_40
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 277
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment$5;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
