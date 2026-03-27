.class public Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;
.super Lcn/bingoogolapple/refreshlayout/BGARefreshViewHolder;
.source "BGAMyRefreshViewHolder.java"


# instance fields
.field private layout:Landroid/widget/RelativeLayout;

.field private mDownAnim:Landroid/view/animation/RotateAnimation;

.field private mHeaderArrowIv:Landroid/widget/ImageView;

.field private mHeaderChrysanthemumAd:Landroid/graphics/drawable/AnimationDrawable;

.field private mHeaderChrysanthemumIv:Landroid/widget/ImageView;

.field private mHeaderStatusTv:Landroid/widget/TextView;

.field private mPullDownRefreshText:Ljava/lang/String;

.field private mRefreshingText:Ljava/lang/String;

.field private mReleaseRefreshText:Ljava/lang/String;

.field private mUpAnim:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcn/bingoogolapple/refreshlayout/BGARefreshViewHolder;-><init>(Landroid/content/Context;Z)V

    .line 32
    const-string p1, "\u4e0b\u62c9\u5237\u65b0"

    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mPullDownRefreshText:Ljava/lang/String;

    .line 33
    const-string p1, "\u91ca\u653e\u66f4\u65b0"

    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mReleaseRefreshText:Ljava/lang/String;

    .line 34
    const-string p1, ""

    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mRefreshingText:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->initAnimation()V

    return-void
.end method

.method private initAnimation()V
    .registers 10

    .line 46
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v7, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mUpAnim:Landroid/view/animation/RotateAnimation;

    const-wide/16 v0, 0x96

    .line 47
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mUpAnim:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 50
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v3, -0x3ccc0000    # -180.0f

    const/4 v4, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mDownAnim:Landroid/view/animation/RotateAnimation;

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    return-void
.end method


# virtual methods
.method public changeToIdle()V
    .registers 3

    .line 107
    const-string v0, "ttrtg5"

    const-string v1, "changeToIdle..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public changeToPullDown()V
    .registers 4

    .line 112
    const-string v0, "ttrtg5"

    const-string v1, "changeToPullDown..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderStatusTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mPullDownRefreshText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderChrysanthemumIv:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderChrysanthemumAd:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderArrowIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mDownAnim:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderArrowIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mDownAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public changeToRefreshing()V
    .registers 3

    .line 134
    const-string v0, "ttrtg5"

    const-string v1, "changeToRefreshing..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderStatusTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mRefreshingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderArrowIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderArrowIv:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderChrysanthemumIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderChrysanthemumAd:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public changeToReleaseRefresh()V
    .registers 3

    .line 124
    const-string v0, "ttrtg5"

    const-string v1, "changeToReleaseRefresh..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderStatusTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mReleaseRefreshText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderChrysanthemumIv:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderChrysanthemumAd:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 128
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderArrowIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderArrowIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mUpAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public getRefreshHeaderView()Landroid/view/View;
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mRefreshHeaderView:Landroid/view/View;

    if-nez v0, :cond_5d

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0192

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mRefreshHeaderView:Landroid/view/View;

    .line 85
    iget v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mRefreshViewBackgroundColorRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 86
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mRefreshHeaderView:Landroid/view/View;

    iget v2, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mRefreshViewBackgroundColorRes:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 88
    :cond_1c
    iget v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mRefreshViewBackgroundDrawableRes:I

    if-eq v0, v1, :cond_27

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mRefreshHeaderView:Landroid/view/View;

    iget v1, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mRefreshViewBackgroundDrawableRes:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 91
    :cond_27
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mRefreshHeaderView:Landroid/view/View;

    const v1, 0x7f09075e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderStatusTv:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mRefreshHeaderView:Landroid/view/View;

    const v1, 0x7f0902eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderArrowIv:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mRefreshHeaderView:Landroid/view/View;

    const v1, 0x7f0902ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderChrysanthemumIv:Landroid/widget/ImageView;

    .line 94
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderChrysanthemumAd:Landroid/graphics/drawable/AnimationDrawable;

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderStatusTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mPullDownRefreshText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_5d
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mRefreshHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public handleScale(FI)V
    .registers 3

    .line 102
    const-string p1, "ttrtg5"

    const-string p2, "handleScale..."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEndRefreshing()V
    .registers 4

    .line 145
    const-string v0, "ttrtg5"

    const-string v1, "onEndRefreshing..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderStatusTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mPullDownRefreshText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderChrysanthemumIv:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderChrysanthemumAd:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderArrowIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mDownAnim:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderArrowIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mDownAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setPullDownRefreshText(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mPullDownRefreshText:Ljava/lang/String;

    return-void
.end method

.method public setRefreshingText(Ljava/lang/String;)V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mHeaderStatusTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setReleaseRefreshText(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/BGAMyRefreshViewHolder;->mReleaseRefreshText:Ljava/lang/String;

    return-void
.end method
