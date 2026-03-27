.class public Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "TasksAndRewardsActivity.java"


# instance fields
.field binding:Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

.field private final fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field itemStr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final taskFragment:Lcom/keephealth/android/childmodule/fragment/TaskFragment;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->fragments:Ljava/util/List;

    .line 50
    new-instance v0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-direct {v0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->taskFragment:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->itemStr:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;)Ljava/util/List;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->fragments:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;)Lcom/keephealth/android/childmodule/fragment/TaskFragment;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->taskFragment:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    return-object p0
.end method

.method private initTabLayout()V
    .registers 7

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->taskFragment:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->fragments:Ljava/util/List;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-direct {v1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->itemStr:Ljava/util/List;

    const v1, 0x7f1006f8

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->itemStr:Ljava/util/List;

    const v1, 0x7f1006d6

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->binding:Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;->viewPager:Lcom/keephealth/android/childmodule/NonSwipeableViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/NonSwipeableViewPager;->setOffscreenPageLimit(I)V

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->binding:Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;->viewPager:Lcom/keephealth/android/childmodule/NonSwipeableViewPager;

    new-instance v2, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$2;

    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$2;-><init>(Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;Landroidx/fragment/app/FragmentManager;I)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/childmodule/NonSwipeableViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 128
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->binding:Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->binding:Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;->viewPager:Lcom/keephealth/android/childmodule/NonSwipeableViewPager;

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->binding:Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f060063

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->binding:Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const v3, 0x7f06005a

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    move v0, v4

    .line 132
    :goto_6e
    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->itemStr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b9

    .line 133
    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->binding:Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

    iget-object v3, v3, Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    if-eqz v3, :cond_b6

    const v5, 0x7f0c0137

    .line 135
    invoke-virtual {v3, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 136
    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    const v5, 0x7f0905e1

    invoke-virtual {v3, v5}, Lcom/google/android/material/tabs/TabLayout$TabView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 137
    iget-object v5, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->itemStr:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_a9

    .line 139
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 140
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_b6

    .line 142
    :cond_a9
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    const v5, 0x7f060137

    .line 143
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b6
    :goto_b6
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    :cond_b9
    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->binding:Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$3;-><init>(Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->binding:Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$4;-><init>(Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 196
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->binding:Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$5;-><init>(Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->binding:Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

    return-object v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 3

    .line 92
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 93
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result p1

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_e

    .line 94
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->finish()V

    :cond_e
    return-void
.end method

.method public initActivity()V
    .registers 3

    .line 60
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initActivity()V

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->binding:Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->layoutTitle:Landroid/widget/RelativeLayout;

    const v1, 0x7f06005a

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 62
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity$1;-><init>(Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setOnConnectListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;)V

    return-void
.end method

.method protected initView()V
    .registers 3

    .line 100
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->binding:Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v1, 0x7f100736

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->binding:Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d00fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->binding:Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityTashsAndRewardsBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    invoke-direct {p0}, Lcom/keephealth/android/childmodule/activity/TasksAndRewardsActivity;->initTabLayout()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 207
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 213
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onDestroy()V

    .line 214
    invoke-static {}, Lcom/keephealth/android/childmodule/DialogLoadingUtils;->dialogDestroy()V

    return-void
.end method
