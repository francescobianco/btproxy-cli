.class public Lcom/keephealth/android/ui/device/activity/CardActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "CardActivity.java"


# instance fields
.field binding:Lcom/keephealth/android/databinding/ActivityCardBinding;

.field private cardOrWallet:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/CardActivity;->cardOrWallet:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/CardActivity;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/CardActivity;->cardOrWallet:I

    return p0
.end method

.method private initAdapter()V
    .registers 9

    .line 68
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_d3

    .line 72
    iget v2, p0, Lcom/keephealth/android/ui/device/activity/CardActivity;->cardOrWallet:I

    const/4 v3, 0x2

    const v4, 0x7f1005f2

    const v5, 0x7f0d0086

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v2, v7, :cond_91

    .line 73
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWechatBusinessCards()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 74
    new-instance v2, Lcom/keephealth/android/ui/device/bean/CardBean;

    invoke-virtual {p0, v4}, Lcom/keephealth/android/ui/device/activity/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v6, v5, v4}, Lcom/keephealth/android/ui/device/bean/CardBean;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_2e
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isQqBusinessCards()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 77
    new-instance v2, Lcom/keephealth/android/ui/device/bean/CardBean;

    const v4, 0x7f1005f1

    invoke-virtual {p0, v4}, Lcom/keephealth/android/ui/device/activity/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d0085

    invoke-direct {v2, v7, v5, v4}, Lcom/keephealth/android/ui/device/bean/CardBean;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_46
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isFacebookBusinessCards()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 80
    new-instance v2, Lcom/keephealth/android/ui/device/bean/CardBean;

    const v4, 0x7f1005f0

    invoke-virtual {p0, v4}, Lcom/keephealth/android/ui/device/activity/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d0084

    invoke-direct {v2, v3, v5, v4}, Lcom/keephealth/android/ui/device/bean/CardBean;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_5e
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWatchsAppBusinessCards()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 83
    new-instance v2, Lcom/keephealth/android/ui/device/bean/CardBean;

    const v3, 0x7f1005f3

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/device/activity/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const v5, 0x7f0d0087

    invoke-direct {v2, v4, v5, v3}, Lcom/keephealth/android/ui/device/bean/CardBean;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_77
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isxBusinessCards()Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 86
    new-instance v0, Lcom/keephealth/android/ui/device/bean/CardBean;

    const v2, 0x7f1005f4

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const v4, 0x7f0d0088

    invoke-direct {v0, v3, v4, v2}, Lcom/keephealth/android/ui/device/bean/CardBean;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    .line 89
    :cond_91
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWechatWallet()Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 90
    new-instance v2, Lcom/keephealth/android/ui/device/bean/CardBean;

    invoke-virtual {p0, v4}, Lcom/keephealth/android/ui/device/activity/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v6, v5, v4}, Lcom/keephealth/android/ui/device/bean/CardBean;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_a3
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isAlipayWallet()Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 93
    new-instance v2, Lcom/keephealth/android/ui/device/bean/CardBean;

    const v4, 0x7f1005d3

    invoke-virtual {p0, v4}, Lcom/keephealth/android/ui/device/activity/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d0103

    invoke-direct {v2, v7, v5, v4}, Lcom/keephealth/android/ui/device/bean/CardBean;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_bb
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isPaypalWallet()Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 96
    new-instance v0, Lcom/keephealth/android/ui/device/bean/CardBean;

    const v2, 0x7f1006b7

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0d0104

    invoke-direct {v0, v3, v4, v2}, Lcom/keephealth/android/ui/device/bean/CardBean;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_d3
    :goto_d3
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CardAdapter;

    const v2, 0x7f0c0114

    invoke-direct {v0, v2, v1}, Lcom/keephealth/android/ui/device/adapter/CardAdapter;-><init>(ILjava/util/List;)V

    .line 101
    iget v1, p0, Lcom/keephealth/android/ui/device/activity/CardActivity;->cardOrWallet:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CardAdapter;->setIsCard(I)V

    .line 102
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/CardActivity;->binding:Lcom/keephealth/android/databinding/ActivityCardBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityCardBinding;->rcCardOrWallet:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 103
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/CardActivity;->binding:Lcom/keephealth/android/databinding/ActivityCardBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityCardBinding;->rcCardOrWallet:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 105
    new-instance v1, Lcom/keephealth/android/ui/device/activity/CardActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/CardActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/CardActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/CardAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardActivity;->binding:Lcom/keephealth/android/databinding/ActivityCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/CardActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/CardActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/CardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CardActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityCardBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityCardBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardActivity;->binding:Lcom/keephealth/android/databinding/ActivityCardBinding;

    return-object v0
.end method

.method public initActivity()V
    .registers 3

    .line 63
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initActivity()V

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardActivity;->binding:Lcom/keephealth/android/databinding/ActivityCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->layoutTitle:Landroid/widget/RelativeLayout;

    const v1, 0x7f06005a

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method protected initView()V
    .registers 4

    .line 46
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 47
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/CardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cardOrWallet"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/CardActivity;->cardOrWallet:I

    if-ne v0, v2, :cond_31

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardActivity;->binding:Lcom/keephealth/android/databinding/ActivityCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v1, 0x7f1005ef

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardActivity;->binding:Lcom/keephealth/android/databinding/ActivityCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCardBinding;->tvInstructions:Landroid/widget/TextView;

    const v1, 0x7f1005de

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4f

    .line 52
    :cond_31
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardActivity;->binding:Lcom/keephealth/android/databinding/ActivityCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v1, 0x7f10070f

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardActivity;->binding:Lcom/keephealth/android/databinding/ActivityCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCardBinding;->tvInstructions:Landroid/widget/TextView;

    const v1, 0x7f1005df

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :goto_4f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardActivity;->binding:Lcom/keephealth/android/databinding/ActivityCardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityCardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/CardActivity;->initAdapter()V

    return-void
.end method
