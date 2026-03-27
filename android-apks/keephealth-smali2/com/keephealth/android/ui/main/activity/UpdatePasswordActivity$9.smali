.class Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$9;
.super Landroid/os/CountDownTimer;
.source "UpdatePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->startCountdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;JJ)V
    .registers 6

    .line 370
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 378
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->tvSmsCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->tvCountDown:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onTick(J)V
    .registers 7

    .line 373
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;->binding:Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityUpdatePwdBinding;->tvCountDown:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "s"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
