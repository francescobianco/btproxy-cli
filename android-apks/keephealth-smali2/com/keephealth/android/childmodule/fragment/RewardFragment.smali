.class public Lcom/keephealth/android/childmodule/fragment/RewardFragment;
.super Lcom/keephealth/android/base/BaseMvvMNewFragment;
.source "RewardFragment.java"


# instance fields
.field binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

.field private dele_position:I

.field private duihuanDialog:Landroid/app/Dialog;

.field handler:Landroid/os/Handler;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardSelectBean;",
            ">;"
        }
    .end annotation
.end field

.field mTaskRewardBean:Lcom/keephealth/android/childmodule/bean/RewardSelectBean;

.field private register:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field taskRewardAdapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

.field private update_position:I

.field viewModel:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvMNewFragment;-><init>()V

    .line 92
    new-instance v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;-><init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)I
    .registers 1

    .line 75
    iget p0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->dele_position:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/childmodule/fragment/RewardFragment;I)I
    .registers 2

    .line 75
    iput p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->dele_position:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)I
    .registers 1

    .line 75
    iget p0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->update_position:I

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/childmodule/fragment/RewardFragment;I)I
    .registers 2

    .line 75
    iput p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->update_position:I

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)Landroidx/activity/result/ActivityResultLauncher;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->register:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)Landroid/app/Dialog;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->duihuanDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/childmodule/fragment/RewardFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->duihuanDialog:Landroid/app/Dialog;

    return-object p1
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->linRewardAdd:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/RewardFragment$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/RewardFragment$7;-><init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->rewardConRecord:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/RewardFragment$8;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/RewardFragment$8;-><init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 3

    .line 304
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvvMNewFragment;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 305
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result p1

    const/16 v0, 0x3fd

    if-eq p1, v0, :cond_25

    const/16 v0, 0x3fe

    if-eq p1, v0, :cond_10

    goto :goto_2a

    .line 310
    :cond_10
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->tvGolds:Landroid/widget/TextView;

    sget v0, Lcom/keephealth/android/app/AppApplication;->golds:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->taskRewardAdapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

    if-eqz p1, :cond_2a

    .line 312
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->notifyDataSetChanged()V

    goto :goto_2a

    .line 307
    :cond_25
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->viewModel:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    invoke-virtual {p1}, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->selectRewardData()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method protected initView()V
    .registers 3

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    .line 147
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->viewModel:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    .line 148
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/RewardFragment$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/RewardFragment$2;-><init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->register:Landroidx/activity/result/ActivityResultLauncher;

    .line 164
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->viewModel:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->selectRewardData()V

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->viewModel:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object v0, v0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->listMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;-><init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 257
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->viewModel:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object v0, v0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->exchangeRewardBeanMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/RewardFragment$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/RewardFragment$4;-><init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 276
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->tvGolds:Landroid/widget/TextView;

    sget v1, Lcom/keephealth/android/app/AppApplication;->golds:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->viewModel:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object v0, v0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->mDuihuan:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/RewardFragment$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/RewardFragment$5;-><init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 293
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->viewModel:Lcom/keephealth/android/persenter/device/RewardSelectViewModel;

    iget-object v0, v0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->cancelDuihuan:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/RewardFragment$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/RewardFragment$6;-><init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onCreateViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .registers 4

    const/4 v0, 0x0

    .line 89
    invoke-static {p1, p2, v0}, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    return-object p1
.end method

.method public reflashData(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardSelectBean;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1a

    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1a

    .line 137
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->tvNodata:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->rewardRecyclew:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_28

    .line 140
    :cond_1a
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->tvNodata:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->rewardRecyclew:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_28
    return-void
.end method
