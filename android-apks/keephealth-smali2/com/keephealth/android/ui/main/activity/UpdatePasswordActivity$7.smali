.class Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;
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

    .line 280
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 283
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userPwd:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$102(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 286
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    const v0, 0x7f100627

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$500(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Ljava/lang/String;)V

    goto/16 :goto_b0

    .line 288
    :cond_33
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userPwd:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$100(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userPwd:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$100(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_b1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->userPwd:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$100(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_5b

    goto :goto_b1

    .line 293
    :cond_5b
    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f100623

    if-nez v0, :cond_83

    .line 294
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    invoke-static {v0, p1}, Lcom/keephealth/android/util/DataVaildUtil;->validEmail(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 295
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showLoadingFalse()V

    .line 296
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->verifyEmailUser(Ljava/lang/String;)V

    goto :goto_b0

    .line 298
    :cond_79
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$600(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Ljava/lang/String;)V

    goto :goto_b0

    .line 301
    :cond_83
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    if-eqz v0, :cond_a7

    .line 302
    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 303
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    const v0, 0x7f1006bc

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$700(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Ljava/lang/String;)V

    goto :goto_b0

    .line 305
    :cond_9a
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showLoadingFalse()V

    .line 306
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->verifyPhoneUser(Ljava/lang/String;)V

    goto :goto_b0

    .line 309
    :cond_a7
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$800(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Ljava/lang/String;)V

    :goto_b0
    return-void

    .line 289
    :cond_b1
    :goto_b1
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    const v0, 0x7f10032e

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void
.end method
