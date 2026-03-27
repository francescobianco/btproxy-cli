.class Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$9;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "RegisterFirstActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;)V
    .registers 2

    .line 368
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 5

    .line 372
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 373
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRegisterFirstBinding;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_eb

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto/16 :goto_eb

    .line 377
    :cond_36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 378
    sget p1, Lcom/keephealth/android/app/AppApplication;->foreign:I

    if-eqz p1, :cond_52

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    if-nez p1, :cond_45

    goto :goto_52

    .line 381
    :cond_45
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    const v0, 0x7f100627

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_5e

    .line 379
    :cond_52
    :goto_52
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    const v0, 0x7f1006bf

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_5e
    return-void

    .line 385
    :cond_5f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_df

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_df

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_75

    goto :goto_df

    .line 390
    :cond_75
    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f100623

    if-eqz v0, :cond_bc

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    if-eqz v0, :cond_bc

    .line 391
    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    if-eqz v0, :cond_99

    .line 392
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->showLoadingFalse()V

    .line 393
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->verifyPhone(Ljava/lang/String;)V

    goto :goto_de

    .line 395
    :cond_99
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    if-eqz p1, :cond_ae

    .line 396
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1006bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_de

    .line 398
    :cond_ae
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_de

    .line 402
    :cond_bc
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-static {v0, p1}, Lcom/keephealth/android/util/DataVaildUtil;->validEmail(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 403
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->showLoadingFalse()V

    .line 404
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->verifyEmail(Ljava/lang/String;)V

    goto :goto_de

    .line 406
    :cond_d1
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_de
    return-void

    .line 386
    :cond_df
    :goto_df
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;

    const v0, 0x7f10032e

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/RegisterFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :cond_eb
    :goto_eb
    return-void
.end method
