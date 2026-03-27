.class public Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "DeviceVibrateActivity.java"

# interfaces
.implements Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;",
        ">;",
        "Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private clickPosition:I

.field private deviceState:Lcom/keephealth/android/model/bean/DeviceState;

.field private languageBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/VibrateBean;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dc
    .end annotation
.end field

.field rela_vibrate:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b6
    .end annotation
.end field

.field private someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field tv_vibrate_status:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090790
    .end annotation
.end field

.field private userBean:Lcom/keephealth/android/model/bean/UserBean;

.field private vibrateStrong:I

.field private viewModel:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->languageBeanList:Ljava/util/List;

    .line 194
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)I
    .registers 1

    .line 46
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->vibrateStrong:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;I)I
    .registers 2

    .line 46
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->vibrateStrong:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Ljava/util/List;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->languageBeanList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)I
    .registers 1

    .line 46
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->clickPosition:I

    return p0
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0040

    return v0
.end method

.method protected initView()V
    .registers 4

    .line 67
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1005ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 70
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 71
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->languageBeanList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;

    .line 72
    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 75
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->rela_vibrate:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    .line 104
    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->setVibrateList:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->getVibrateList()V

    .line 113
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->showLoading()V

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->getvibrateList:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 169
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceState()Lcom/keephealth/android/model/bean/DeviceState;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    if-eqz v0, :cond_b0

    .line 171
    iget v0, v0, Lcom/keephealth/android/model/bean/DeviceState;->vibrateStrong:I

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->vibrateStrong:I

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    iget v0, v0, Lcom/keephealth/android/model/bean/DeviceState;->vibrateStrong:I

    if-eqz v0, :cond_a8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_96

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8d

    goto :goto_b0

    .line 183
    :cond_8d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->tv_vibrate_status:Landroid/widget/TextView;

    const v1, 0x7f10075f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_b0

    .line 180
    :cond_96
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->tv_vibrate_status:Landroid/widget/TextView;

    const v1, 0x7f10075d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_b0

    .line 177
    :cond_9f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->tv_vibrate_status:Landroid/widget/TextView;

    const v1, 0x7f100760

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_b0

    .line 174
    :cond_a8
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->tv_vibrate_status:Landroid/widget/TextView;

    const v1, 0x7f1001aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_b0
    :goto_b0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 233
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvpActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 192
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onBackPressed()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 6

    .line 224
    iput p2, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->clickPosition:I

    .line 225
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->languageBeanList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/VibrateBean;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "name"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->languageBeanList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/VibrateBean;->getMode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mode"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DeviceVibrateActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method
