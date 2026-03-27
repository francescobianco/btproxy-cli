.class Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "VerifyEmailOrPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 5

    .line 186
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

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

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v2, v1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSmsCode:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/view/ChangeViewUtils;->changeGetVerifyCode(Landroid/widget/EditText;Landroid/content/Context;Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_2d

    return-void

    .line 190
    :cond_2d
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->type:I

    const-string v1, "1"

    if-eqz v0, :cond_ef

    const/4 v2, 0x1

    if-eq v0, v2, :cond_de

    const/4 v1, 0x2

    const-string v2, "2"

    if-eq v0, v1, :cond_92

    const/4 v1, 0x3

    if-eq v0, v1, :cond_48

    const/4 v1, 0x4

    if-eq v0, v1, :cond_92

    const/4 v1, 0x5

    if-eq v0, v1, :cond_48

    goto/16 :goto_ff

    .line 223
    :cond_48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 224
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    const v0, 0x7f1006c2

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->access$200(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;Ljava/lang/String;)V

    return-void

    .line 227
    :cond_5b
    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 228
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    const v0, 0x7f1006bc

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->access$300(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;Ljava/lang/String;)V

    return-void

    .line 231
    :cond_6e
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 232
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    const v0, 0x7f1005e4

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 237
    :cond_85
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showLoadingFalse()V

    .line 238
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-virtual {v0, p1, v2}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendPhoneVerifyCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ff

    .line 203
    :cond_92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 204
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    const v0, 0x7f1006bf

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->access$000(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;Ljava/lang/String;)V

    return-void

    .line 207
    :cond_a5
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-static {v0, p1}, Lcom/keephealth/android/util/DataVaildUtil;->validEmail(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ba

    .line 208
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    const v0, 0x7f100623

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->access$100(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;Ljava/lang/String;)V

    return-void

    .line 211
    :cond_ba
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 212
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    const v0, 0x7f1005e3

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 217
    :cond_d1
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showLoadingFalse()V

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-virtual {v0, p1, v2}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendEmailVerifyCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ff

    .line 197
    :cond_de
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showLoadingFalse()V

    .line 198
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->email:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendPhoneVerifyCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ff

    .line 192
    :cond_ef
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showLoadingFalse()V

    .line 193
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->email:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendEmailVerifyCode(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ff
    return-void
.end method
