.class Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;
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

    .line 217
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClickL$0$com-keephealth-android-childmodule-activity-SportTaskActivity$3([Ljava/lang/String;I[Ljava/lang/String;III)V
    .registers 10

    .line 233
    iget-object p5, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p5, p5, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object p5, p5, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvActivityType:Landroid/widget/TextView;

    aget-object p6, p1, p4

    invoke-virtual {p5, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object p5, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p5, p5, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    aget-object p6, p1, p4

    invoke-virtual {p5, p6}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setName(Ljava/lang/String;)V

    if-eq p2, p4, :cond_1c2

    const/4 p2, 0x4

    const/4 p5, 0x1

    if-eqz p4, :cond_6d

    if-ne p4, p5, :cond_1d

    goto :goto_6d

    :cond_1d
    const/4 p6, 0x2

    if-ne p4, p6, :cond_47

    .line 243
    iget-object p6, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    # setter for: Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetType:I
    invoke-static {p6, p5}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->access$002(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;I)I

    .line 244
    iget-object p6, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p6, p6, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/4 v0, 0x5

    invoke-virtual {p6, v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setGoalType(I)V

    .line 245
    iget-object p6, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p6, p6, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/16 v0, 0x1f4

    invoke-virtual {p6, v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setGoalValue(I)V

    .line 246
    iget-object p6, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {p6}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetTypeList:[Ljava/lang/String;
    invoke-static {p6, v0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->access$102(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_94

    .line 248
    :cond_47
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    # setter for: Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetType:I
    invoke-static {v0, p6}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->access$002(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;I)I

    .line 249
    iget-object p6, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p6, p6, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p6, p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setGoalType(I)V

    .line 250
    iget-object p6, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p6, p6, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/16 v0, 0x1e

    invoke-virtual {p6, v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setGoalValue(I)V

    .line 251
    iget-object p6, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {p6}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetTypeList:[Ljava/lang/String;
    invoke-static {p6, v0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->access$102(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_94

    .line 238
    :cond_6d
    :goto_6d
    iget-object p6, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetType:I
    invoke-static {p6, v0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->access$002(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;I)I

    .line 239
    iget-object p6, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p6, p6, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/4 v0, 0x3

    invoke-virtual {p6, v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setGoalType(I)V

    .line 240
    iget-object p6, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p6, p6, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/16 v0, 0xbb8

    invoke-virtual {p6, v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setGoalValue(I)V

    .line 241
    iget-object p6, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {p6}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetTypeList:[Ljava/lang/String;
    invoke-static {p6, v0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->access$102(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;[Ljava/lang/String;)[Ljava/lang/String;

    :goto_94
    if-eqz p4, :cond_18c

    if-ne p4, p5, :cond_9a

    goto/16 :goto_18c

    .line 256
    :cond_9a
    iget-object p5, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p5, p5, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p5}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result p5

    if-ne p5, p2, :cond_157

    .line 257
    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p2

    const p5, 0x7f100387

    const/16 p6, 0x3c

    if-lt p2, p6, :cond_12e

    .line 258
    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p2

    rem-int/2addr p2, p6

    const v0, 0x7f10076d

    if-nez p2, :cond_ec

    .line 259
    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v1

    div-int/2addr v1, p6

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    iget-object p6, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {p6, v0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c2

    .line 261
    :cond_ec
    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v2

    div-int/2addr v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {v2, v0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v1

    rem-int/2addr v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p6

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {v0, p5}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c2

    .line 264
    :cond_12e
    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p6

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {v0, p5}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c2

    .line 267
    :cond_157
    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p6, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p6, p6, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p6}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    iget-object p6, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p6, p6, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {p6, v0, v1}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getGoalValueUnit(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c2

    .line 254
    :cond_18c
    :goto_18c
    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p6, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p6, p6, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p6}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p6

    div-int/lit16 p6, p6, 0x3e8

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    iget-object p6, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p6, p6, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {p6, v0, v1}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getGoalValueUnit(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_1c2
    :goto_1c2
    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    aget-object p1, p1, p4

    invoke-interface {p3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setWorkoutType(I)V

    return-void
.end method

.method protected onClickL(Landroid/view/View;)V
    .registers 6

    .line 222
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v0, "TB1WS6N6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    :cond_1c
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v0, "TB2WS6N6"

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 224
    :cond_38
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    goto :goto_53

    .line 226
    :cond_46
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 229
    :goto_53
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getWorkoutType()I

    move-result v2

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 232
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    new-instance v3, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;[Ljava/lang/String;I[Ljava/lang/String;)V

    invoke-static {v2, v1, p1, v3}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelSportTypeDialog(Landroid/content/Context;I[Ljava/lang/String;Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)Lcom/keephealth/android/views/dialog/WheelViewDialog;

    move-result-object p1

    iput-object p1, v2, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->wheelViewDialogSportType:Lcom/keephealth/android/views/dialog/WheelViewDialog;

    return-void
.end method
