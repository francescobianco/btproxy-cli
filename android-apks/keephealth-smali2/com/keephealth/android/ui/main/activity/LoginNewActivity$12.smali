.class Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;
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

    .line 829
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 8

    .line 832
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userName:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$402(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 833
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userPwd:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$502(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 834
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$400(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_196

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userPwd:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$500(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3c

    goto/16 :goto_196

    .line 838
    :cond_3c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->agreeXieyiLogin:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$100(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_5a

    sget p1, Lcom/keephealth/android/app/AppApplication;->foreign:I

    if-ne p1, v0, :cond_5a

    .line 839
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    .line 842
    :cond_5a
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userPwd:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$500(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18a

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userPwd:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$500(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x6

    if-lt p1, v1, :cond_18a

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userPwd:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$500(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x14

    if-le p1, v1, :cond_83

    goto/16 :goto_18a

    .line 847
    :cond_83
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$400(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isNumeric(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_fa

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    if-eqz p1, :cond_fa

    .line 848
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$400(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ec

    .line 849
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const/4 v0, 0x4

    # setter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginType:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$702(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;I)I

    .line 850
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginTypePC:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$000(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)I

    move-result p1

    if-ne p1, v1, :cond_cd

    .line 851
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginTypePC:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$000(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)I

    move-result v1

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$400(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userPwd:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$500(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "+86"

    const-string v4, ""

    invoke-virtual/range {v0 .. v5}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->loginByPhone(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_189

    .line 853
    :cond_cd
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object v0, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginTypePC:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$000(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)I

    move-result v1

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$400(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userPwd:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$500(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v3, "+86"

    invoke-virtual/range {v0 .. v5}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->loginByPhone(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_189

    .line 856
    :cond_ec
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const v0, 0x7f1006bc

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$800(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)V

    goto/16 :goto_189

    .line 859
    :cond_fa
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$400(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_129

    .line 860
    sget p1, Lcom/keephealth/android/app/AppApplication;->foreign:I

    if-eqz p1, :cond_11c

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isShowMassage:Z

    if-nez p1, :cond_10f

    goto :goto_11c

    .line 863
    :cond_10f
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const v0, 0x7f100627

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$1000(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)V

    goto :goto_128

    .line 861
    :cond_11c
    :goto_11c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const v0, 0x7f1006bf

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$900(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)V

    :goto_128
    return-void

    .line 867
    :cond_129
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$400(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/keephealth/android/util/DataVaildUtil;->validEmail(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17d

    .line 868
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showLoading()V

    .line 869
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # setter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginType:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$702(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;I)I

    .line 870
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginTypePC:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$000(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)I

    move-result p1

    const-string v0, ""

    if-ne p1, v1, :cond_163

    .line 871
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginTypePC:I
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$000(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userName:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$400(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userPwd:Ljava/lang/String;
    invoke-static {v3}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$500(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->requestLogin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_189

    .line 873
    :cond_163
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginTypePC:I
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$000(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userName:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$400(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->userPwd:Ljava/lang/String;
    invoke-static {v3}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$500(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->requestLogin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_189

    .line 876
    :cond_17d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const v0, 0x7f100623

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$1100(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)V

    :goto_189
    return-void

    .line 843
    :cond_18a
    :goto_18a
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$12;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const v0, 0x7f10032e

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$600(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)V

    :cond_196
    :goto_196
    return-void
.end method
