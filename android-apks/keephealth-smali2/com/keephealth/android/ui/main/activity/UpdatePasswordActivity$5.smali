.class Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$5;
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

    .line 227
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 3

    .line 230
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 231
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->etUsername:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
