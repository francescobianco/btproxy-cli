.class Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$3;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "CustomTaskActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 166
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->dialogView:Lcom/keephealth/android/childmodule/DialogView;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->dialogView:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/DialogView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_11

    return-void

    .line 169
    :cond_11
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    const-class v1, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    const v1, 0x7f1006f9

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
