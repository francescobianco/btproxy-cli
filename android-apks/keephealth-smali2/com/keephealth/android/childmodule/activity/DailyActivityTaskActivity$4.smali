.class Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4;
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

    .line 212
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClickL$0$com-keephealth-android-childmodule-activity-DailyActivityTaskActivity$4([Ljava/lang/String;III)V
    .registers 6

    .line 218
    iget-object p3, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object p3, p3, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    iget-object p4, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object p4, p4, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p4}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_16

    aget-object p4, p1, p2

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    goto :goto_1e

    :cond_16
    aget-object p4, p1, p2

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    mul-int/lit8 p4, p4, 0x3c

    :goto_1e
    invoke-virtual {p3, p4}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setGoalValue(I)V

    .line 219
    iget-object p3, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object p3, p3, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object p3, p3, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvTarget:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object p4, p4, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p4}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result p4

    if-ne p4, v0, :cond_46

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    const p4, 0x7f10077a

    goto :goto_5a

    :cond_46
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    const p4, 0x7f10076d

    :goto_5a
    invoke-virtual {p2, p4}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onClickL(Landroid/view/View;)V
    .registers 7

    .line 216
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->setSleepStepData(I)[Ljava/lang/String;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object v3, v3, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v3}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_31

    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object v3, v3, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v3}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v3

    goto :goto_3b

    :cond_31
    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object v3, v3, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v3}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v3

    div-int/lit8 v3, v3, 0x3c

    :goto_3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    new-instance v2, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4;[Ljava/lang/String;)V

    invoke-static {v0, v1, p1, v2}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelTaskTypeDialog(Landroid/content/Context;I[Ljava/lang/String;Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)Lcom/keephealth/android/views/dialog/WheelViewDialog;

    move-result-object p1

    iput-object p1, v0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->wheelViewDialogTarget:Lcom/keephealth/android/views/dialog/WheelViewDialog;

    return-void
.end method
