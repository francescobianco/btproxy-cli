.class Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$2;
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

    .line 122
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 5

    .line 125
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->binding:Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityVeriEmailBinding;->tvEmail:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_92

    .line 126
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    const-class v1, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

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

    .line 128
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->from:Ljava/lang/String;

    const-string v1, "from"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->areaCode:Ljava/lang/String;

    const-string v1, "areaCode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->type:I

    const-string v1, "type"

    const/4 v2, 0x2

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->type:I

    if-ne v0, v2, :cond_56

    goto :goto_5b

    :cond_56
    const/4 v0, 0x3

    .line 133
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5e

    .line 131
    :cond_5b
    :goto_5b
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    :goto_5e
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->type:I

    const-string v1, "title"

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->type:I

    if-eq v0, v2, :cond_81

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    iget v0, v0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_74

    goto :goto_81

    .line 139
    :cond_74
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    const v2, 0x7f1005db

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8d

    .line 137
    :cond_81
    :goto_81
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    const v2, 0x7f1005da

    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :goto_8d
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/activity/VerificationEmailActivity;->startActivity(Landroid/content/Intent;)V

    :cond_92
    return-void
.end method
