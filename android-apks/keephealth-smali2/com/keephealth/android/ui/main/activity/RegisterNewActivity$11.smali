.class Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;
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

    .line 486
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 8

    .line 489
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$300(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userName:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$202(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 490
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->psd:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$500(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userPwd:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$402(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRegisterNewBinding;->etSmsCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 492
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a7

    .line 493
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showLoadingFalse()V

    .line 495
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$300(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isNumeric(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_71

    .line 496
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->register:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$600(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_63

    .line 497
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->title:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$700(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$200(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userPwd:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$400(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->countryCode:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$800(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->regiestAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b7

    .line 499
    :cond_63
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$200(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->verifityEmail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b7

    .line 502
    :cond_71
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->register:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$600(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_99

    .line 503
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$300(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->psd:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$500(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->countryCode:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$800(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "+86"

    invoke-virtual/range {v0 .. v5}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->registerPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b7

    .line 505
    :cond_99
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$200(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->checkPhone(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b7

    .line 509
    :cond_a7
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$11;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100349

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_b7
    return-void
.end method
