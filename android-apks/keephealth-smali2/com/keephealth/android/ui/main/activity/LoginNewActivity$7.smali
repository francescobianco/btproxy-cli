.class Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;
.super Landroid/text/style/ClickableSpan;
.source "LoginNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->setTextChinaLink()Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

.field final synthetic val$agreement:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$policy:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 456
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;->val$policy:Ljava/lang/String;

    iput-object p4, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;->val$agreement:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 459
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 460
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;->val$name:Ljava/lang/String;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;->val$policy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "loadType"

    if-eqz v0, :cond_1d

    const/4 v0, 0x7

    .line 461
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 462
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const-class v1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;

    invoke-static {v0, v1, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_33

    .line 463
    :cond_1d
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;->val$agreement:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0x8

    .line 464
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const-class v1, Lcom/keephealth/android/ui/ecg/activity/WebViewEcgActivity;

    invoke-static {v0, v1, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 4

    .line 471
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 472
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;->val$name:Ljava/lang/String;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;->val$policy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;->val$name:Ljava/lang/String;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;->val$agreement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 473
    :cond_17
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const v1, 0x7f060117

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_23
    const/4 v0, 0x0

    .line 475
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
