.class Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$1;
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

    .line 143
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

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

    .line 151
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->imgClean:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    iget-object p3, p3, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->binding:Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;

    iget-object p3, p3, Lcom/keephealth/android/databinding/ActivityVerifyEmailOrPhoneBinding;->tvSmsCode:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-static {p1, p2, p3, p4}, Lcom/keephealth/android/util/view/ChangeViewUtils;->changeUserName(Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;)V

    return-void
.end method
