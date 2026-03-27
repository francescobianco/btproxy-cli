.class Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$2;
.super Ljava/lang/Object;
.source "VerifyEmailOrPhoneActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 160
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 169
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->btnVerify:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setClickable(Z)V

    .line 170
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->btnVerify:Landroid/widget/Button;

    const p2, 0x7f0800a4

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_37

    .line 172
    :cond_21
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->btnVerify:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setClickable(Z)V

    .line 173
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->btnVerify:Landroid/widget/Button;

    const p2, 0x7f0800a3

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_37
    return-void
.end method
