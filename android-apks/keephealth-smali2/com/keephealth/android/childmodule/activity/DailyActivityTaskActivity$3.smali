.class Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;
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

    .line 194
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClickL$0$com-keephealth-android-childmodule-activity-DailyActivityTaskActivity$3(IIII)V
    .registers 6

    .line 0
    if-eq p1, p2, :cond_a2

    .line 202
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvActivityType:Landroid/widget/TextView;

    const p3, 0x7f100628

    const p4, 0x7f1006ea

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    if-nez p2, :cond_17

    invoke-virtual {v0, p3}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_17
    invoke-virtual {v0, p4}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    if-nez p2, :cond_2b

    iget-object p4, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    invoke-virtual {p4, p3}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_31

    :cond_2b
    iget-object p3, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    invoke-virtual {p3, p4}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_31
    invoke-virtual {p1, p3}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setName(Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    if-nez p2, :cond_3d

    const/16 p3, 0xfe

    goto :goto_3f

    :cond_3d
    const/16 p3, 0xff

    :goto_3f
    invoke-virtual {p1, p3}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setWorkoutType(I)V

    .line 205
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    if-nez p2, :cond_4a

    const/4 p3, 0x1

    goto :goto_4b

    :cond_4a
    const/4 p3, 0x6

    :goto_4b
    invoke-virtual {p1, p3}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setGoalType(I)V

    .line 206
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    if-nez p2, :cond_57

    const/16 p3, 0x1f40

    goto :goto_59

    :cond_57
    const/16 p3, 0x21c

    :goto_59
    invoke-virtual {p1, p3}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setGoalValue(I)V

    .line 207
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvTarget:Landroid/widget/TextView;

    if-nez p2, :cond_7b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object p3, p3, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p3}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    const p4, 0x7f10077a

    goto :goto_93

    :cond_7b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object p3, p3, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p3}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p3

    div-int/lit8 p3, p3, 0x3c

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    const p4, 0x7f10076d

    :goto_93
    invoke-virtual {p3, p4}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a2
    return-void
.end method

.method protected onClickL(Landroid/view/View;)V
    .registers 5

    .line 197
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03000f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    const/4 v1, 0x0

    .line 199
    :cond_19
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    new-instance v2, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;I)V

    invoke-static {v0, v1, p1, v2}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelTaskTypeDialog(Landroid/content/Context;I[Ljava/lang/String;Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)Lcom/keephealth/android/views/dialog/WheelViewDialog;

    move-result-object p1

    iput-object p1, v0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->wheelViewDialogTask:Lcom/keephealth/android/views/dialog/WheelViewDialog;

    return-void
.end method
