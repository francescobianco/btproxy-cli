.class Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$8;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "UpdatePasswordActivity.java"


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

    .line 317
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 320
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->isEmail:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$900(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 321
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->isEmail:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$902(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Z)Z

    .line 322
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->phone:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$1000(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->verifyPhoneOrEmail:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    const v1, 0x7f10070c

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_57

    .line 329
    :cond_30
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    const/4 v0, 0x1

    # setter for: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->isEmail:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$902(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;Z)Z

    .line 330
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->email:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->access$1100(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->verifyPhoneOrEmail:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$8;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    const v1, 0x7f10070d

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_57
    return-void
.end method
