.class Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;
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

    .line 137
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 7

    .line 140
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isConnect:Z

    if-eqz p1, :cond_89

    .line 141
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvAddName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3e

    .line 142
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->dialogView:Lcom/keephealth/android/childmodule/DialogView;

    if-nez p1, :cond_36

    .line 143
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    new-instance v0, Lcom/keephealth/android/childmodule/DialogView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    const v2, 0x7f100693

    invoke-virtual {v1, v2}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    const v4, 0x7f10071b

    invoke-virtual {v3, v4}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/childmodule/DialogView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->dialogView:Lcom/keephealth/android/childmodule/DialogView;

    goto :goto_3d

    .line 145
    :cond_36
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->dialogView:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/DialogView;->show()V

    :goto_3d
    return-void

    .line 149
    :cond_3e
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    invoke-static {p1}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->showLoading(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 150
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->ctTaskRemind:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0}, Lcom/keephealth/android/views/CustomToggleButton;->getSwitchState()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setAlarmEnable(I)V

    .line 151
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_7d

    .line 152
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setId(J)V

    .line 153
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getUpdateTask(Lcom/keephealth/android/childmodule/bean/FamilyTaskList;)V

    goto :goto_95

    .line 155
    :cond_7d
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->createTask(Lcom/keephealth/android/childmodule/bean/FamilyTaskList;)V

    goto :goto_95

    .line 158
    :cond_89
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;

    const v0, 0x7f100258

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_95
    return-void
.end method
