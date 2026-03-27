.class Lcom/keephealth/android/ui/device/activity/NoticeActivity$2;
.super Ljava/lang/Object;
.source "NoticeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/NoticeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V
    .registers 2

    .line 1017
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$0$com-keephealth-android-ui-device-activity-NoticeActivity$2(Landroid/view/View;)V
    .registers 4

    .line 1022
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1023
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$onClick$1$com-keephealth-android-ui-device-activity-NoticeActivity$2(Landroid/view/View;)V
    .registers 2

    .line 1025
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1026
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 1020
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1004a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    .line 1021
    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1004a4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1004a1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/device/activity/NoticeActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity$2;)V

    new-instance v5, Lcom/keephealth/android/ui/device/activity/NoticeActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity$2$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity$2;)V

    move-object v0, p1

    .line 1020
    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/device/activity/NoticeActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->access$402(Lcom/keephealth/android/ui/device/activity/NoticeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
