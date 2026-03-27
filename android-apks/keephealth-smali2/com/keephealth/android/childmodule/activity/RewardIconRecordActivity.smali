.class public Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "RewardIconRecordActivity.java"


# instance fields
.field binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

.field rewardIconRecordViewModel:Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;

.field taskRewardRecordAdapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->layoutTitle:Landroid/widget/RelativeLayout;

    const v1, 0x7f06005a

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$2;-><init>(Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->rewardRecordLin:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$3;-><init>(Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 39
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    return-object v0
.end method

.method protected initView()V
    .registers 6

    .line 45
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 46
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->rewardIconRecordViewModel:Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;

    .line 47
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v1, 0x7f10062a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 51
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 53
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "%02d"

    invoke-static {v1, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->rewardRecordTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    new-instance v1, Lcom/keephealth/android/childmodule/bean/RewardExchangeHttpBean;

    invoke-direct {v1}, Lcom/keephealth/android/childmodule/bean/RewardExchangeHttpBean;-><init>()V

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keephealth/android/childmodule/bean/RewardExchangeHttpBean;->setExchangeMonth(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->rewardIconRecordViewModel:Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;->getData(Lcom/keephealth/android/childmodule/bean/RewardExchangeHttpBean;)V

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->rewardIconRecordViewModel:Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;

    iget-object v0, v0, Lcom/keephealth/android/persenter/device/RewardIconRecordViewModel;->listMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;-><init>(Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
