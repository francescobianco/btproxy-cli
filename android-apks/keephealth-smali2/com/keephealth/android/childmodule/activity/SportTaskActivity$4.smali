.class Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;
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

    .line 275
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClickL$0$com-keephealth-android-childmodule-activity-SportTaskActivity$4([Ljava/lang/String;Ljava/util/List;III)V
    .registers 7

    .line 294
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p4, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetTypeList:[Ljava/lang/String;
    invoke-static {p4}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->access$100(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)[Ljava/lang/String;

    move-result-object p4

    aget-object p4, p4, p3

    invoke-interface {p1, p4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 295
    iget-object p4, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p4, p4, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p4, p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setGoalType(I)V

    .line 296
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 297
    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetTypeList:[Ljava/lang/String;
    invoke-static {p2}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->access$100(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object p4, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetTypeList:[Ljava/lang/String;
    invoke-static {p4}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->access$100(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)[Ljava/lang/String;

    move-result-object p4

    aget-object p3, p4, p3

    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 298
    iget-object p3, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p3, p3, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    iget-object p4, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p4, p4, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetType:I
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->access$000(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)I

    move-result v0

    invoke-virtual {p4, v0, p2, p5}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getGoalValue(III)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setGoalValue(I)V

    .line 299
    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_106

    .line 300
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p1

    const p2, 0x7f100387

    const/16 p3, 0x3c

    if-lt p1, p3, :cond_dd

    .line 301
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p1

    rem-int/2addr p1, p3

    const p4, 0x7f10076d

    if-nez p1, :cond_9c

    .line 302
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p5, p5, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p5}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p5

    div-int/2addr p5, p3

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {p3, p4}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_111

    .line 304
    :cond_9c
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v0

    div-int/2addr v0, p3

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {v0, p4}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p5, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p5, p5, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p5}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p5

    rem-int/2addr p5, p3

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {p4, p2}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_111

    .line 307
    :cond_dd
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p4, p4, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p4}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {p4, p2}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_111

    .line 310
    :cond_106
    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object p2, p2, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvTarget:Landroid/widget/TextView;

    aget-object p1, p1, p5

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_111
    return-void
.end method

.method protected onClickL(Landroid/view/View;)V
    .registers 11

    .line 279
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 281
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetTypeList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->access$100(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 283
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetType:I
    invoke-static {v1}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->access$000(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->setSportTargetValueList(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 284
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getGoalValueUnit(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 287
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_7e

    .line 288
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v4, v4, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_9f

    .line 290
    :cond_7e
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    iget-object v4, v4, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_9f
    move v5, v0

    .line 293
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetTypeList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->access$100(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)[Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetType:I
    invoke-static {v1}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->access$000(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)I

    move-result v7

    new-instance v8, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, p1, v6}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;[Ljava/lang/String;Ljava/util/List;)V

    move-object v2, v0

    invoke-static/range {v2 .. v8}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelSportTargetTypeDialog(Landroid/content/Context;I[Ljava/lang/String;ILjava/util/List;ILcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;)Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;

    move-result-object p1

    iput-object p1, v0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->wheelViewDialogSport:Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;

    return-void
.end method
