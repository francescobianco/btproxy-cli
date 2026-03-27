.class public Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "CustomTaskActivity.java"


# instance fields
.field private final REQUEST_NAME_CODE:I

.field private final REQUEST_WEEKDAY_CODE:I

.field binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

.field dialogView:Lcom/keephealth/android/childmodule/DialogView;

.field dialogViewGold:Lcom/keephealth/android/childmodule/DialogView;

.field dialogViewTime:Lcom/keephealth/android/childmodule/DialogView;

.field taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

.field viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->REQUEST_WEEKDAY_CODE:I

    const/16 v0, 0x64

    .line 51
    iput v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->REQUEST_NAME_CODE:I

    return-void
.end method

.method private setBean()V
    .registers 4

    .line 115
    new-instance v0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-direct {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setTaskType(I)V

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setCoin(I)V

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setStatus(I)V

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_46

    invoke-virtual {v0, v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setCycle([I)V

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->ctlTaskRemind:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f080072

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvRemind:Landroid/widget/TextView;

    const v2, 0x7f060137

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->ctTaskRemind:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    return-void

    nop

    :array_46
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$1;-><init>(Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$2;-><init>(Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->cltAddName:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$3;-><init>(Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->ctlObtainable:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$4;-><init>(Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->ctlFrequency:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$5;-><init>(Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->ctlTime:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$6;-><init>(Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvDelete:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$7;-><init>(Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->createTask:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 270
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->editTask:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 284
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->deleteTask:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 297
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->ctTaskRemind:Lcom/keephealth/android/views/CustomToggleButton;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$8;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity$8;-><init>(Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    return-object v0
.end method

.method public initActivity()V
    .registers 3

    .line 61
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initActivity()V

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->layoutTitle:Landroid/widget/RelativeLayout;

    const v1, 0x7f06005a

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method protected initView()V
    .registers 6

    .line 67
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 68
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d00fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    const v1, 0x7f0d0083

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v1, 0x7f1006f9

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_149

    .line 76
    const-string v1, "taskBean"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    if-eqz v0, :cond_145

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v1, 0x7f100621

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvDelete:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvAddName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvObtainableGold:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCoin()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    move v3, v0

    move v2, v1

    .line 83
    :goto_89
    iget-object v4, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCycle()[I

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_a0

    .line 84
    iget-object v4, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCycle()[I

    move-result-object v4

    aget v4, v4, v2

    if-nez v4, :cond_9d

    move v3, v1

    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    :cond_a0
    if-eqz v3, :cond_b1

    .line 89
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvFrequency:Landroid/widget/TextView;

    const v3, 0x7f100122

    invoke-virtual {p0, v3}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c4

    .line 91
    :cond_b1
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvFrequency:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v4, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v4}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCycle()[I

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getTimes([ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_c4
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTimeInterval()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_113

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTimeInterval()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d9

    goto :goto_113

    .line 99
    :cond_d9
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v3}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTimeInterval()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->ctlTaskRemind:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f080083

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvRemind:Landroid/widget/TextView;

    const v3, 0x7f060113

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->ctTaskRemind:Lcom/keephealth/android/views/CustomToggleButton;

    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v3}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getAlarmEnable()I

    move-result v3

    if-ne v3, v0, :cond_10f

    move v1, v0

    :cond_10f
    invoke-virtual {v2, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    goto :goto_14c

    .line 94
    :cond_113
    :goto_113
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvTime:Landroid/widget/TextView;

    const v2, 0x7f100719

    invoke-virtual {p0, v2}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->ctlTaskRemind:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f080072

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvRemind:Landroid/widget/TextView;

    const v2, 0x7f060137

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->ctTaskRemind:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    goto :goto_14c

    .line 105
    :cond_145
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->setBean()V

    goto :goto_14c

    .line 108
    :cond_149
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->setBean()V

    .line 110
    :goto_14c
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvObtainableGold:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getCoin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$createObserver$0$com-keephealth-android-childmodule-activity-CustomTaskActivity(Ljava/lang/String;)V
    .registers 5

    .line 256
    invoke-static {}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->hideLoading()V

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 258
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const p1, 0x7f1001bf

    .line 259
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    .line 260
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->finish()V

    goto :goto_2d

    .line 262
    :cond_1b
    invoke-static {p0}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->showLoading(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 263
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->sendTask(Ljava/lang/String;Lcom/keephealth/android/childmodule/bean/FamilyTaskList;II)V

    goto :goto_2d

    :cond_27
    const p1, 0x7f1005d0

    .line 267
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    :goto_2d
    return-void
.end method

.method synthetic lambda$createObserver$1$com-keephealth-android-childmodule-activity-CustomTaskActivity(Ljava/lang/String;)V
    .registers 6

    .line 271
    invoke-static {}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->hideLoading()V

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 273
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const p1, 0x7f10078d

    .line 274
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    .line 275
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->finish()V

    goto :goto_2e

    .line 277
    :cond_1b
    invoke-static {p0}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->showLoading(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 278
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->sendTask(Ljava/lang/String;Lcom/keephealth/android/childmodule/bean/FamilyTaskList;II)V

    goto :goto_2e

    :cond_28
    const p1, 0x7f10078c

    .line 281
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    :goto_2e
    return-void
.end method

.method synthetic lambda$createObserver$2$com-keephealth-android-childmodule-activity-CustomTaskActivity(Ljava/lang/String;)V
    .registers 4

    .line 285
    invoke-static {}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->hideLoading()V

    .line 286
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 287
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 288
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getDeleteTask(J)V

    goto :goto_2d

    :cond_1d
    const p1, 0x7f1001e2

    .line 290
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    .line 291
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->finish()V

    goto :goto_2d

    :cond_27
    const p1, 0x7f1001e0

    .line 294
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    :goto_2d
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    .line 310
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_83

    :cond_a
    if-eqz p3, :cond_83

    const/16 p2, 0x64

    if-ne p1, p2, :cond_2f

    .line 315
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 317
    const-string p2, "name"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_83

    .line 319
    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvAddName:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object p2, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setName(Ljava/lang/String;)V

    goto :goto_83

    :cond_2f
    if-nez p1, :cond_83

    .line 325
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 327
    const-string p2, "isSelect"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    if-eqz p1, :cond_83

    .line 330
    array-length p2, p1

    new-array p2, p2, [I

    const/4 p3, 0x0

    const/4 v0, 0x1

    move v1, p3

    move v2, v0

    .line 331
    :goto_46
    array-length v3, p1

    if-ge v1, v3, :cond_60

    .line 332
    array-length v3, p1

    sub-int/2addr v3, v0

    if-ne v1, v3, :cond_52

    .line 333
    aget-boolean v3, p1, v1

    aput v3, p2, p3

    goto :goto_58

    :cond_52
    add-int/lit8 v3, v1, 0x1

    .line 335
    aget-boolean v4, p1, v1

    aput v4, p2, v3

    .line 337
    :goto_58
    aget-boolean v3, p1, v1

    if-nez v3, :cond_5d

    move v2, p3

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 341
    :cond_60
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->taskBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setCycle([I)V

    if-eqz v2, :cond_76

    .line 343
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvFrequency:Landroid/widget/TextView;

    const p2, 0x7f100122

    invoke-virtual {p0, p2}, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_83

    .line 345
    :cond_76
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->binding:Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityCustomTaskBinding;->tvFrequency:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    invoke-virtual {p3, p2, p0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getTimes([ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_83
    :goto_83
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 355
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onDestroy()V

    .line 356
    invoke-static {}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->dialogDestroy()V

    .line 357
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->dialogViewGold:Lcom/keephealth/android/childmodule/DialogView;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 358
    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/DialogView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 359
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->dialogViewGold:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/DialogView;->dismiss()V

    .line 361
    :cond_16
    iput-object v1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->dialogViewGold:Lcom/keephealth/android/childmodule/DialogView;

    .line 363
    :cond_18
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->dialogViewTime:Lcom/keephealth/android/childmodule/DialogView;

    if-eqz v0, :cond_29

    .line 364
    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/DialogView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 365
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->dialogViewTime:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/DialogView;->dismiss()V

    .line 367
    :cond_27
    iput-object v1, p0, Lcom/keephealth/android/childmodule/activity/CustomTaskActivity;->dialogViewTime:Lcom/keephealth/android/childmodule/DialogView;

    :cond_29
    return-void
.end method
