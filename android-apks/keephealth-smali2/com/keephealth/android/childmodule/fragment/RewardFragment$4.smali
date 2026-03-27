.class Lcom/keephealth/android/childmodule/fragment/RewardFragment$4;
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
        "Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;)V
    .registers 4

    if-eqz p1, :cond_5c

    .line 261
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;->getExchangeReuslt()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_43

    .line 262
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;->getCoinTotalSize()I

    move-result p1

    sput p1, Lcom/keephealth/android/app/AppApplication;->golds:I

    .line 263
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->tvGolds:Landroid/widget/TextView;

    sget v0, Lcom/keephealth/android/app/AppApplication;->golds:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f10062b

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->viewModel:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->setRewardAllMonery()V

    .line 266
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->taskRewardAdapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

    if-eqz p1, :cond_53

    .line 267
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->taskRewardAdapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->notifyDataSetChanged()V

    goto :goto_53

    .line 270
    :cond_43
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f100629

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 272
    :cond_53
    :goto_53
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$4;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/RewardFragment;->duihuanDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->access$300(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_5c
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 257
    check-cast p1, Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment$4;->onChanged(Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;)V

    return-void
.end method
