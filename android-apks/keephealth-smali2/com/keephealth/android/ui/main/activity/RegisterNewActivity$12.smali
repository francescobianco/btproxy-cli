.class Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;
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

    .line 537
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 8

    .line 540
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->areaCode:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$900(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 541
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$300(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/DataVaildUtil;->validEmail(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_89

    const/4 p1, 0x1

    .line 542
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isClickSkipYanZheng:Z

    .line 543
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$300(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userName:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$202(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 544
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->psd:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$500(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userPwd:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$402(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 545
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->register:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$600(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_61

    .line 546
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showLoading()V

    .line 547
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->title:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$700(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$200(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userPwd:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$400(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->countryCode:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$800(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v4, " "

    invoke-virtual/range {v0 .. v5}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->regiestAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_117

    .line 549
    :cond_61
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showLoading()V

    .line 550
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->title:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$700(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$200(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userPwd:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$400(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->countryCode:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$800(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v4, " "

    invoke-virtual/range {v0 .. v5}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->regiestAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_117

    .line 553
    :cond_89
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100623

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_117

    .line 556
    :cond_9b
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$300(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10b

    .line 557
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->register:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$600(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e8

    .line 558
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$300(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userName:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$202(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 559
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->psd:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$500(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->userPwd:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$402(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 560
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showLoading()V

    .line 561
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$300(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->psd:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$500(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->countryCode:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$800(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "+86"

    const-string v4, ""

    invoke-virtual/range {v0 .. v5}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->registerPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_117

    .line 563
    :cond_e8
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showLoading()V

    .line 564
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->emailOrPhone:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$300(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->psd:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$500(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->countryCode:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$800(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "+86"

    const-string v4, ""

    invoke-virtual/range {v0 .. v5}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->bindPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_117

    .line 567
    :cond_10b
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    const v0, 0x7f1006bc

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->access$1000(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;Ljava/lang/String;)V

    :goto_117
    return-void
.end method
