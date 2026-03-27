.class public Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "DailyActivityTaskActivity.java"


# instance fields
.field binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

.field dialogViewGold:Lcom/keephealth/android/childmodule/DialogView;

.field taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

.field private titleName:Ljava/lang/String;

.field viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

.field wheelViewDialogTarget:Lcom/keephealth/android/views/dialog/WheelViewDialog;

.field wheelViewDialogTask:Lcom/keephealth/android/views/dialog/WheelViewDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    return-void
.end method

.method private setBean()V
    .registers 4

    const v0, 0x7f10060c

    .line 111
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->titleName:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-direct {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const v1, 0x7f100628

    .line 113
    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setName(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setCoin(I)V

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setTaskType(I)V

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setGoalType(I)V

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/16 v1, 0xfe

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setWorkoutType(I)V

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setGoalValue(I)V

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$1;-><init>(Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$2;-><init>(Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->createTask:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->editTask:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 180
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->deleteTask:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->cltActivityType:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$3;-><init>(Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->ctlTarget:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$4;-><init>(Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->ctlObtainable:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$5;-><init>(Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvDelete:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$6;-><init>(Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 42
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    return-object v0
.end method

.method public initActivity()V
    .registers 3

    .line 48
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initActivity()V

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->layoutTitle:Landroid/widget/RelativeLayout;

    const v1, 0x7f06005a

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method protected initView()V
    .registers 4

    .line 55
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 56
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    .line 57
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d00fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    const v1, 0x7f0d0083

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 63
    const-string v1, "taskBean"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    iput-object v1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    if-eqz v1, :cond_5c

    .line 65
    const-string v1, "titleName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 67
    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->titleName:Ljava/lang/String;

    :cond_4a
    const v0, 0x7f100621

    .line 69
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->titleName:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvDelete:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_63

    .line 72
    :cond_5c
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->setBean()V

    goto :goto_63

    .line 75
    :cond_60
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->setBean()V

    .line 77
    :goto_63
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->titleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9d

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8f

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvActivityType:Landroid/widget/TextView;

    const v1, 0x7f100628

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9d

    .line 82
    :cond_8f
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvActivityType:Landroid/widget/TextView;

    const v1, 0x7f1006e9

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_9d
    :goto_9d
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result v0

    packed-switch v0, :pswitch_data_1a2

    goto/16 :goto_18f

    .line 103
    :pswitch_a8
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f10076d

    invoke-virtual {p0, v2}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_18f

    .line 100
    :pswitch_d1
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f10030a

    invoke-virtual {p0, v2}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_18f

    .line 97
    :pswitch_f8
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f100387

    invoke-virtual {p0, v2}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18f

    .line 94
    :pswitch_11e
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f100771

    invoke-virtual {p0, v2}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18f

    .line 91
    :pswitch_144
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f100769

    invoke-virtual {p0, v2}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18f

    .line 88
    :pswitch_16a
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f10077a

    invoke-virtual {p0, v2}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_18f
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityDailyActivityTaskBinding;->tvObtainableGold:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCoin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_1a2
    .packed-switch 0x1
        :pswitch_16a
        :pswitch_144
        :pswitch_11e
        :pswitch_f8
        :pswitch_d1
        :pswitch_a8
    .end packed-switch
.end method

.method synthetic lambda$createObserver$0$com-keephealth-android-childmodule-activity-DailyActivityTaskActivity(Ljava/lang/String;)V
    .registers 6

    .line 152
    invoke-static {}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->hideLoading()V

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 154
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const p1, 0x7f1001bf

    .line 155
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    .line 156
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->finish()V

    goto :goto_2e

    .line 158
    :cond_1b
    invoke-static {p0}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->showLoading(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->sendTask(Ljava/lang/String;Lcom/keephealth/android/childmodule/bean/FamilyTaskList;II)V

    goto :goto_2e

    :cond_28
    const p1, 0x7f1005d0

    .line 163
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    :goto_2e
    return-void
.end method

.method synthetic lambda$createObserver$1$com-keephealth-android-childmodule-activity-DailyActivityTaskActivity(Ljava/lang/String;)V
    .registers 5

    .line 167
    invoke-static {}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->hideLoading()V

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 169
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const p1, 0x7f10078d

    .line 170
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    .line 171
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->finish()V

    goto :goto_2d

    .line 173
    :cond_1b
    invoke-static {p0}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->showLoading(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->sendTask(Ljava/lang/String;Lcom/keephealth/android/childmodule/bean/FamilyTaskList;II)V

    goto :goto_2d

    :cond_27
    const p1, 0x7f10078c

    .line 177
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    :goto_2d
    return-void
.end method

.method synthetic lambda$createObserver$2$com-keephealth-android-childmodule-activity-DailyActivityTaskActivity(Ljava/lang/String;)V
    .registers 4

    .line 181
    invoke-static {}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->hideLoading()V

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 183
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 184
    invoke-static {p0}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->showLoading(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 185
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getDeleteTask(J)V

    goto :goto_30

    :cond_20
    const p1, 0x7f1001e2

    .line 187
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    .line 188
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->finish()V

    goto :goto_30

    :cond_2a
    const p1, 0x7f1001e0

    .line 191
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    :goto_30
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 256
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onDestroy()V

    .line 257
    invoke-static {}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->dialogDestroy()V

    .line 259
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->wheelViewDialogTask:Lcom/keephealth/android/views/dialog/WheelViewDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 260
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->wheelViewDialogTask:Lcom/keephealth/android/views/dialog/WheelViewDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->dismiss()V

    .line 263
    :cond_16
    iput-object v1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->wheelViewDialogTask:Lcom/keephealth/android/views/dialog/WheelViewDialog;

    .line 265
    :cond_18
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->wheelViewDialogTarget:Lcom/keephealth/android/views/dialog/WheelViewDialog;

    if-eqz v0, :cond_29

    .line 266
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 267
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->wheelViewDialogTarget:Lcom/keephealth/android/views/dialog/WheelViewDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->dismiss()V

    .line 269
    :cond_27
    iput-object v1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->wheelViewDialogTarget:Lcom/keephealth/android/views/dialog/WheelViewDialog;

    .line 271
    :cond_29
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->dialogViewGold:Lcom/keephealth/android/childmodule/DialogView;

    if-eqz v0, :cond_3a

    .line 272
    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/DialogView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 273
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->dialogViewGold:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/DialogView;->dismiss()V

    .line 275
    :cond_38
    iput-object v1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->dialogViewGold:Lcom/keephealth/android/childmodule/DialogView;

    :cond_3a
    return-void
.end method
