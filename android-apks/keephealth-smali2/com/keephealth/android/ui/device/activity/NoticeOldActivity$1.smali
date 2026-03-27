.class Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;
.super Ljava/lang/Object;
.source "NoticeOldActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V
    .registers 2

    .line 475
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$0$com-keephealth-android-ui-device-activity-NoticeOldActivity$1(Landroid/view/View;)V
    .registers 2

    .line 511
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->access$000(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 512
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 478
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    .line 479
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100257

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$1;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$1;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;)V

    new-instance v5, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;)V

    .line 478
    const-string v1, ""

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->access$002(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
