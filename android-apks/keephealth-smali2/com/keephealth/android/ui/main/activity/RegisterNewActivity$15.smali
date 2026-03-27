.class Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "RegisterNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V
    .registers 2

    .line 597
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 600
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 601
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->areaCode:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$900(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 602
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$300(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 603
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showLoadingFalse()V

    .line 604
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$300(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendCodePhone(Ljava/lang/String;)V

    goto :goto_98

    .line 606
    :cond_39
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1006bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_98

    .line 609
    :cond_4a
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->register:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$600(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->register:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$600(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "register"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 611
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-static {v0, p1}, Lcom/keephealth/android/util/DataVaildUtil;->validEmail(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 612
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showLoadingFalse()V

    .line 613
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendCode(Ljava/lang/String;)V

    goto :goto_98

    .line 615
    :cond_79
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_98

    .line 619
    :cond_8a
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showLoadingFalse()V

    .line 620
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    const-string v1, "2"

    invoke-virtual {v0, p1, v1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendEmailVerifyCode(Ljava/lang/String;Ljava/lang/String;)V

    :goto_98
    return-void
.end method
