.class public Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "RecommedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;,
        Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$OnChildClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/model/bean/DialCenterClass;",
        "Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private imgHeight:I

.field private imgWidth:I

.field private mClickListener:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$OnChildClickListener;

.field public recommendItemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

.field private recyclerViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialCenterClass;",
            ">;II)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 45
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->recyclerViewState:Landroid/util/SparseArray;

    int-to-float p2, p3

    .line 42
    invoke-static {p2, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->imgWidth:I

    int-to-float p2, p4

    .line 43
    invoke-static {p2, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->imgHeight:I

    return-void
.end method


# virtual methods
.method public getmClickListener()Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$OnChildClickListener;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->mClickListener:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$OnChildClickListener;

    return-object v0
.end method

.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-RecommedAdapter(Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;ILandroid/view/View;)V
    .registers 4

    .line 59
    sget-boolean p3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    if-eqz p3, :cond_15

    .line 60
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100232

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_31

    .line 61
    :cond_15
    sget-boolean p3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    if-eqz p3, :cond_2a

    .line 62
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100535

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_31

    .line 64
    :cond_2a
    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->customClickListener:Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;->tvMore:Landroid/widget/TextView;

    invoke-interface {p3, p1, p2}, Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;->onCustomClick(Landroid/view/View;I)V

    :goto_31
    return-void
.end method

.method synthetic lambda$onNormalBindViewHolder$1$com-keephealth-android-ui-device-adapter-RecommedAdapter(ILandroid/view/View;I)V
    .registers 5

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->mClickListener:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$OnChildClickListener;

    invoke-interface {v0, p2, p1, p3}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$OnChildClickListener;->onStatusClick(Landroid/view/View;II)V

    return-void
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 37
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c011a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 92
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 37
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/model/bean/DialCenterClass;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;Lcom/keephealth/android/model/bean/DialCenterClass;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;Lcom/keephealth/android/model/bean/DialCenterClass;I)V
    .registers 9

    .line 49
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialCenterClass;->getRecommendItemAdapter()Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 50
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialCenterClass;->getDialAs()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->imgWidth:I

    iget v4, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->imgHeight:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->recommendItemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    .line 51
    invoke-virtual {p2, v0}, Lcom/keephealth/android/model/bean/DialCenterClass;->setRecommendItemAdapter(Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;)V

    goto :goto_21

    .line 53
    :cond_1b
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialCenterClass;->getRecommendItemAdapter()Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->recommendItemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    .line 55
    :goto_21
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dial_type_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialCenterClass;->getId()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 56
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;->tvLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p2, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->recommendItemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->setInActivity(Z)V

    .line 58
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;->tvMore:Landroid/widget/TextView;

    new-instance v0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;I)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p2, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->recommendItemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    new-instance v0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;I)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->setCustomClickListener(Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;)V

    .line 70
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 71
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 72
    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$ViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->recommendItemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u5237\u65b0..."

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ttft3\u539f\u59cb"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setmClickListener(Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$OnChildClickListener;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->mClickListener:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter$OnChildClickListener;

    return-void
.end method
