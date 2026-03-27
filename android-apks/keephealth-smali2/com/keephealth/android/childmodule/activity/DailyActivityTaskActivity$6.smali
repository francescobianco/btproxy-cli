.class Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$6;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "DailyActivityTaskActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClickL$0$com-keephealth-android-childmodule-activity-DailyActivityTaskActivity$6(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 244
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    invoke-static {p1}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->showLoading(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 245
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskId()J

    move-result-wide v0

    const/4 p2, 0x4

    const/4 v2, 0x3

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->deleteTask(IIJ)V

    return-void
.end method

.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 239
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isConnect:Z

    if-eqz p1, :cond_33

    .line 240
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    invoke-direct {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    const v1, 0x7f100675

    .line 241
    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f100193

    .line 242
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$6$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$6$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$6;)V

    const v1, 0x7f100257

    .line 243
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    goto :goto_3f

    .line 248
    :cond_33
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$6;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    const v0, 0x7f100258

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_3f
    return-void
.end method
