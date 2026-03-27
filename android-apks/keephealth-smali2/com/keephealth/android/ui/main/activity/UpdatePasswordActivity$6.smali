.class Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "UpdatePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V
    .registers 2

    .line 235
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 5

    .line 238
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 239
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etSmsCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object v2, v1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userPwd:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$102(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 242
    sget p1, Lcom/keephealth/android/app/AppApplication;->foreign:I

    if-eqz p1, :cond_49

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    if-eqz p1, :cond_3c

    goto :goto_49

    .line 245
    :cond_3c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    const v0, 0x7f100627

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_55

    .line 243
    :cond_49
    :goto_49
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    const v0, 0x7f1006bf

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_55
    return-void

    .line 249
    :cond_56
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userPwd:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$100(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_118

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userPwd:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$100(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_118

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userPwd:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$100(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_7f

    goto/16 :goto_118

    .line 253
    :cond_7f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 254
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100349

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    .line 258
    :cond_96
    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f100623

    if-nez v0, :cond_d6

    .line 259
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userPwd:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$100(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/keephealth/android/util/DataVaildUtil;->vaildEmailAndPwd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 260
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showLoadingFalse()V

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userPwd:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$100(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etSmsCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->updatePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_117

    .line 263
    :cond_cc
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$200(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Ljava/lang/String;)V

    goto :goto_117

    .line 266
    :cond_d6
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    if-eqz v0, :cond_10e

    .line 267
    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 268
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showLoadingFalse()V

    .line 269
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userPwd:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$100(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etSmsCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->updatePasswordPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_117

    .line 271
    :cond_101
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    const v0, 0x7f1006bc

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$300(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Ljava/lang/String;)V

    goto :goto_117

    .line 274
    :cond_10e
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$400(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Ljava/lang/String;)V

    :goto_117
    return-void

    .line 250
    :cond_118
    :goto_118
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    const v0, 0x7f10032e

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void
.end method
