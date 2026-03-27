.class Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "VerificationEmailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 5

    .line 109
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    const-class v1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvEmail:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->type:I

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->from:Ljava/lang/String;

    const-string v1, "from"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->areaCode:Ljava/lang/String;

    const-string v1, "areaCode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->type:I

    const-string v1, "title"

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->type:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5f

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_52

    goto :goto_5f

    .line 117
    :cond_52
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    const v2, 0x7f10070b

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6b

    .line 115
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    const v2, 0x7f1007a0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    :goto_6b
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
