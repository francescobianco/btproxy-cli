.class Lcom/keephealth/android/ui/main/activity/LoginNewActivity$17;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "LoginNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V
    .registers 2

    .line 926
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$17;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 929
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$17;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 930
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 934
    :cond_15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 936
    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_47

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    if-eqz v0, :cond_47

    .line 937
    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 938
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$17;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showLoading()V

    .line 939
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$17;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-virtual {v0, p1, v1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendPhoneVerifyCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    .line 941
    :cond_3a
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$17;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const v0, 0x7f1006bc

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$1400(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)V

    goto :goto_8b

    .line 944
    :cond_47
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$17;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-static {v0, p1}, Lcom/keephealth/android/util/DataVaildUtil;->validEmail(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 945
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$17;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showLoading()V

    .line 946
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$17;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-virtual {v0, p1, v1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendEmailVerifyCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    .line 948
    :cond_5c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$17;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const v0, 0x7f100623

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$1500(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)V

    goto :goto_8b

    .line 952
    :cond_69
    sget p1, Lcom/keephealth/android/app/AppApplication;->foreign:I

    if-eqz p1, :cond_7f

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    if-nez p1, :cond_72

    goto :goto_7f

    .line 955
    :cond_72
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$17;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const v0, 0x7f100627

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_8b

    .line 953
    :cond_7f
    :goto_7f
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$17;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const v0, 0x7f1006bf

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_8b
    return-void
.end method
