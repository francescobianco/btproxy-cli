.class public Lcom/keephealth/android/childmodule/activity/SportTaskActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "SportTaskActivity.java"


# instance fields
.field binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

.field bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field dialogViewGold:Lcom/keephealth/android/childmodule/DialogView;

.field private sportTargetType:I

.field private sportTargetTypeList:[Ljava/lang/String;

.field taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

.field private titleName:Ljava/lang/String;

.field viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

.field wheelViewDialogSport:Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;

.field wheelViewDialogSportType:Lcom/keephealth/android/views/dialog/WheelViewDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetType:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)I
    .registers 1

    .line 42
    iget p0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetType:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;I)I
    .registers 2

    .line 42
    iput p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetType:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)[Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetTypeList:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetTypeList:[Ljava/lang/String;

    return-object p1
.end method

.method private setBean()V
    .registers 4

    const v0, 0x7f1006ec

    .line 137
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->titleName:Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-direct {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const v1, 0x7f10058b

    .line 139
    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setName(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setCoin(I)V

    .line 141
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setTaskType(I)V

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setWorkoutType(I)V

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setGoalType(I)V

    .line 144
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setGoalValue(I)V

    .line 145
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetTypeList:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$1;-><init>(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$2;-><init>(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->createTask:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->editTask:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 203
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->deleteTask:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 217
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->cltActivityType:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;-><init>(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->ctlTarget:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;-><init>(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->ctlObtainable:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$5;-><init>(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvDelete:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$6;-><init>(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 53
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    return-object v0
.end method

.method public initActivity()V
    .registers 3

    .line 59
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initActivity()V

    .line 60
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->layoutTitle:Landroid/widget/RelativeLayout;

    const v1, 0x7f06005a

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method protected initView()V
    .registers 7

    .line 66
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 67
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d00fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    const v1, 0x7f0d0083

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    .line 71
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 74
    const-string v1, "taskBean"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    iput-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    if-eqz v1, :cond_ac

    .line 76
    const-string v1, "titleName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 78
    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->titleName:Ljava/lang/String;

    :cond_50
    const v0, 0x7f100620

    .line 80
    invoke-virtual {p0, v0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->titleName:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvDelete:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getWorkoutType()I

    move-result v0

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getWorkoutType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_73

    goto :goto_9c

    .line 85
    :cond_73
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getWorkoutType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8c

    .line 86
    iput v2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetType:I

    .line 87
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetTypeList:[Ljava/lang/String;

    goto :goto_b3

    .line 89
    :cond_8c
    iput v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetType:I

    .line 90
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetTypeList:[Ljava/lang/String;

    goto :goto_b3

    .line 83
    :cond_9c
    :goto_9c
    iput v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetType:I

    .line 84
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->sportTargetTypeList:[Ljava/lang/String;

    goto :goto_b3

    .line 93
    :cond_ac
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->setBean()V

    goto :goto_b3

    .line 96
    :cond_b0
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->setBean()V

    .line 98
    :goto_b3
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->titleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e1

    .line 100
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvActivityType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getWorkoutType()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_e1
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalType()I

    move-result v0

    const v1, 0x7f10076d

    packed-switch v0, :pswitch_data_264

    goto/16 :goto_252

    .line 129
    :pswitch_ef
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v3}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_252

    .line 126
    :pswitch_113
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f1005c3

    invoke-virtual {p0, v2}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_252

    .line 115
    :pswitch_13a
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v0

    const v2, 0x7f100387

    const/16 v3, 0x3c

    if-lt v0, v3, :cond_1ad

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v0

    rem-int/2addr v0, v3

    if-nez v0, :cond_175

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v4

    div-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_252

    .line 119
    :cond_175
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v5}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v5

    div-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v4

    rem-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_252

    .line 122
    :cond_1ad
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v3}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_252

    .line 112
    :pswitch_1d1
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v2

    if-eqz v2, :cond_1f4

    const v2, 0x7f100771

    goto :goto_1f7

    :cond_1f4
    const v2, 0x7f100774

    :goto_1f7
    invoke-virtual {p0, v2}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_252

    .line 109
    :pswitch_207
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f100769

    invoke-virtual {p0, v2}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_252

    .line 106
    :pswitch_22d
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvTarget:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getGoalValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f10077a

    invoke-virtual {p0, v2}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_252
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivitySportTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivitySportTaskBinding;->tvObtainableGold:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCoin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_264
    .packed-switch 0x1
        :pswitch_22d
        :pswitch_207
        :pswitch_1d1
        :pswitch_13a
        :pswitch_113
        :pswitch_ef
    .end packed-switch
.end method

.method synthetic lambda$createObserver$0$com-keephealth-android-childmodule-activity-SportTaskActivity(Ljava/lang/String;)V
    .registers 6

    .line 176
    invoke-static {}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->hideLoading()V

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 178
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const p1, 0x7f1001bf

    .line 179
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    .line 180
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->finish()V

    goto :goto_2e

    .line 182
    :cond_1b
    invoke-static {p0}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->showLoading(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->sendTask(Ljava/lang/String;Lcom/keephealth/android/childmodule/bean/FamilyTaskList;II)V

    goto :goto_2e

    :cond_28
    const p1, 0x7f1005d0

    .line 186
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    :goto_2e
    return-void
.end method

.method synthetic lambda$createObserver$1$com-keephealth-android-childmodule-activity-SportTaskActivity(Ljava/lang/String;)V
    .registers 6

    .line 190
    invoke-static {}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->hideLoading()V

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 192
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const p1, 0x7f10078d

    .line 193
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    .line 194
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->finish()V

    goto :goto_2e

    .line 196
    :cond_1b
    invoke-static {p0}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->showLoading(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 197
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->sendTask(Ljava/lang/String;Lcom/keephealth/android/childmodule/bean/FamilyTaskList;II)V

    goto :goto_2e

    :cond_28
    const p1, 0x7f10078c

    .line 200
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    :goto_2e
    return-void
.end method

.method synthetic lambda$createObserver$2$com-keephealth-android-childmodule-activity-SportTaskActivity(Ljava/lang/String;)V
    .registers 4

    .line 204
    invoke-static {}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->hideLoading()V

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 206
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 207
    invoke-static {p0}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->showLoading(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 208
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getDeleteTask(J)V

    goto :goto_30

    :cond_20
    const p1, 0x7f1001e2

    .line 210
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    .line 211
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->finish()V

    goto :goto_30

    :cond_2a
    const p1, 0x7f1001e0

    .line 214
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    :goto_30
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 349
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onDestroy()V

    .line 350
    invoke-static {}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->dialogDestroy()V

    .line 351
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->dialogViewGold:Lcom/keephealth/android/childmodule/DialogView;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 352
    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/DialogView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 353
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->dialogViewGold:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/DialogView;->dismiss()V

    .line 355
    :cond_16
    iput-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->dialogViewGold:Lcom/keephealth/android/childmodule/DialogView;

    .line 357
    :cond_18
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->wheelViewDialogSport:Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;

    if-eqz v0, :cond_29

    .line 358
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 359
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->wheelViewDialogSport:Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->dismiss()V

    .line 361
    :cond_27
    iput-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->wheelViewDialogSport:Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;

    .line 363
    :cond_29
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->wheelViewDialogSportType:Lcom/keephealth/android/views/dialog/WheelViewDialog;

    if-eqz v0, :cond_3a

    .line 364
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 365
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->wheelViewDialogSportType:Lcom/keephealth/android/views/dialog/WheelViewDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->dismiss()V

    .line 367
    :cond_38
    iput-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->wheelViewDialogSportType:Lcom/keephealth/android/views/dialog/WheelViewDialog;

    :cond_3a
    return-void
.end method
