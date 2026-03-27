.class public Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "VerificationEmailActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvvmNewActivity<",
        "Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;",
        ">;"
    }
.end annotation


# instance fields
.field areaCode:Ljava/lang/String;

.field binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

.field from:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->from:Ljava/lang/String;

    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->type:I

    .line 27
    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->areaCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 1

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getViewBinding()Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    return-object v0
.end method

.method public initListener()V
    .registers 3

    .line 105
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initListener()V

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->btnGoVerify:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->btnChangeEmail:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 6

    .line 41
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 42
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->toBack()V

    .line 43
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->from:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->type:I

    .line 46
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "areaCode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->areaCode:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->from:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->from:Ljava/lang/String;

    const-string v4, "success"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 49
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvNoVerified:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    :cond_50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 53
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvEmail:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_81

    .line 55
    :cond_5e
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvNoVerified:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->btnChangeEmail:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->btnGoVerify:Landroid/widget/Button;

    const v1, 0x7f10074e

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :goto_81
    iget v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->type:I

    if-eqz v0, :cond_db

    const/4 v1, 0x1

    if-eq v0, v1, :cond_96

    const/4 v1, 0x2

    if-eq v0, v1, :cond_db

    const/4 v1, 0x3

    if-eq v0, v1, :cond_96

    const/4 v1, 0x4

    if-eq v0, v1, :cond_db

    const/4 v1, 0x5

    if-eq v0, v1, :cond_96

    goto/16 :goto_11f

    .line 73
    :cond_96
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->ivEmailOrPhone:Landroid/widget/ImageView;

    const v1, 0x7f0d00ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v1, 0x7f1006b9

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvNowTitle:Landroid/widget/TextView;

    const v1, 0x7f1006a5

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvEmailOrPhoneInstructions:Landroid/widget/TextView;

    const v1, 0x7f100709

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->btnChangeEmail:Landroid/widget/Button;

    const v1, 0x7f1005f7

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11f

    .line 64
    :cond_db
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->ivEmailOrPhone:Landroid/widget/ImageView;

    const v1, 0x7f0d00b1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v1, 0x7f100389

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvNowTitle:Landroid/widget/TextView;

    const v1, 0x7f10060b

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvEmailOrPhoneInstructions:Landroid/widget/TextView;

    const v1, 0x7f100708

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->btnChangeEmail:Landroid/widget/Button;

    const v1, 0x7f1005f6

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_11f
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected onResume()V
    .registers 5

    .line 86
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onResume()V

    .line 87
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 88
    iget v1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->type:I

    const/16 v2, 0x8

    if-eqz v1, :cond_3a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3a

    const/4 v3, 0x4

    if-ne v1, v3, :cond_18

    goto :goto_3a

    :cond_18
    if-eqz v0, :cond_5b

    .line 95
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->isPhoneVerified()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 96
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvNoVerified:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->btnGoVerify:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvEmail:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b

    :cond_3a
    :goto_3a
    if-eqz v0, :cond_5b

    .line 89
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->isEmailVerified()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 90
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvNoVerified:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->btnGoVerify:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvEmail:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5b
    :goto_5b
    return-void
.end method
