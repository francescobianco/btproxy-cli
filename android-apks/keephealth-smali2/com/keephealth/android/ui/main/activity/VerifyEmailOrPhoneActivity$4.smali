.class Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;
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

    .line 246
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 9

    .line 250
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_14

    move-object p1, v0

    goto :goto_2c

    :cond_14
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 252
    :goto_2c
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etSmsCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_4f

    :cond_3d
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etSmsCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_4f
    move-object v5, v0

    .line 253
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->imgClean:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSmsCode:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/util/view/ChangeViewUtils;->changeUserName(Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 254
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7d

    goto/16 :goto_16d

    .line 259
    :cond_7d
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->type:I

    if-nez v0, :cond_95

    .line 260
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showLoadingFalse()V

    .line 261
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->email:Ljava/lang/String;

    invoke-virtual {p1, v0, v5}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->verifityEmail(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16d

    .line 262
    :cond_95
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_ae

    .line 263
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showLoadingFalse()V

    .line 264
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->email:Ljava/lang/String;

    invoke-virtual {p1, v0, v5}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->checkPhone(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16d

    .line 265
    :cond_ae
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->type:I

    const/4 v1, 0x2

    const v2, 0x7f100623

    if-ne v0, v1, :cond_e4

    .line 266
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-static {v0, p1}, Lcom/keephealth/android/util/DataVaildUtil;->validEmail(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 268
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showLoadingFalse()V

    .line 270
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    const-string v4, ""

    const-string v6, ""

    const-string v2, "main"

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->regiestAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16d

    .line 272
    :cond_d5
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_16d

    .line 274
    :cond_e4
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->type:I

    const/4 v1, 0x3

    const v3, 0x7f1006bc

    if-ne v0, v1, :cond_112

    .line 275
    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 276
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showLoadingFalse()V

    .line 277
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    const-string v4, ""

    const-string v6, ""

    const-string v3, "+86"

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->bindPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16d

    .line 279
    :cond_108
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-virtual {p1, v3}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->access$400(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;Ljava/lang/String;)V

    goto :goto_16d

    .line 281
    :cond_112
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_143

    .line 282
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-static {v0, p1}, Lcom/keephealth/android/util/DataVaildUtil;->validEmail(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_135

    .line 283
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showLoadingFalse()V

    .line 285
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    const-string v4, ""

    const-string v6, ""

    const-string v2, "main"

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->regiestAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16d

    .line 287
    :cond_135
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_16d

    .line 289
    :cond_143
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16d

    .line 290
    invoke-static {p1}, Lcom/keephealth/android/util/DataVaildUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_164

    .line 291
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showLoadingFalse()V

    .line 292
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->viewModel:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    const-string v4, ""

    const-string v6, ""

    const-string v3, "+86"

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->bindPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16d

    .line 294
    :cond_164
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-virtual {p1, v3}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->access$500(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;Ljava/lang/String;)V

    :cond_16d
    :goto_16d
    return-void
.end method
