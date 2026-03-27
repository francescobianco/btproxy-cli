.class Lcom/keephealth/android/ui/device/activity/BindCardActivity$4;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "BindCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/BindCardActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClickL$0$com-keephealth-android-ui-device-activity-BindCardActivity$4(Landroid/view/View;)V
    .registers 2

    .line 175
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/BindCardActivity;->clearQr()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->access$000(Lcom/keephealth/android/ui/device/activity/BindCardActivity;)V

    return-void
.end method

.method synthetic lambda$onClickL$1$com-keephealth-android-ui-device-activity-BindCardActivity$4(Landroid/view/View;)V
    .registers 2

    .line 177
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onClickL(Landroid/view/View;)V
    .registers 8

    .line 173
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    const v0, 0x7f100674

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/BindCardActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/BindCardActivity;

    const v2, 0x7f100257

    .line 174
    invoke-virtual {v0, v2}, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/device/activity/BindCardActivity$4$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity$4$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/BindCardActivity$4;)V

    new-instance v5, Lcom/keephealth/android/ui/device/activity/BindCardActivity$4$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/activity/BindCardActivity$4$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/BindCardActivity$4;)V

    .line 173
    const-string v2, ""

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/BindCardActivity;->mDialog:Landroid/app/Dialog;

    return-void
.end method
