.class Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$1;
.super Ljava/lang/Object;
.source "UpdatePasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

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

    .line 167
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object p2, p2, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->imgClean:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object p3, p3, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object p3, p3, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->tvSmsCode:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    invoke-static {p1, p2, p3, p4}, Lcom/keephealth/android/util/view/ChangeViewUtils;->changeUserName(Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 168
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->handleTextChanged()V
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$000(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)V

    return-void
.end method
