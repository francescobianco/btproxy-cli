.class Lcom/keephealth/android/childmodule/activity/SportTaskActivity$2;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "SportTaskActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 6

    .line 162
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isConnect:Z

    if-eqz p1, :cond_3e

    .line 163
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-static {p1}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->showLoading(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 164
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_32

    .line 165
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setId(J)V

    .line 166
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getUpdateTask(Lcom/keephealth/android/childmodule/bean/FamilyTaskList;)V

    goto :goto_4a

    .line 168
    :cond_32
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->createTask(Lcom/keephealth/android/childmodule/bean/FamilyTaskList;)V

    goto :goto_4a

    .line 171
    :cond_3e
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    const v0, 0x7f100258

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_4a
    return-void
.end method
