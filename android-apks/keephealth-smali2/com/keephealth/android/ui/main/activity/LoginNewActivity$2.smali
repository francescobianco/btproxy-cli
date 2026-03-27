.class Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;
.super Ljava/lang/Object;
.source "LoginNewActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->initView()V
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

    .line 219
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7

    .line 230
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->imgClean:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->tvGetVerificationCode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-static {p1, v0, v1, v2}, Lcom/keephealth/android/util/view/ChangeViewUtils;->changeUserName(Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 231
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7f0800a4

    if-nez p1, :cond_a6

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etPwd:Landroid/widget/EditText;

    .line 232
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4c

    goto :goto_a6

    .line 236
    :cond_4c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->loginTypePC:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$000(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)I

    move-result p1

    const v2, 0x7f0800a3

    const/4 v3, 0x1

    if-ne p1, v3, :cond_93

    .line 237
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v4, 0x6

    if-ge p1, v4, :cond_80

    .line 238
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->btnlogin:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 239
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->btnlogin:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_b8

    .line 241
    :cond_80
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->btnlogin:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 242
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->btnlogin:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_b8

    .line 245
    :cond_93
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->btnlogin:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 246
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->btnlogin:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_b8

    .line 233
    :cond_a6
    :goto_a6
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->btnlogin:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 234
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->btnlogin:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_b8
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
