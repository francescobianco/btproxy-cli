.class public Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;
.super Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;
.source "PullToRefreshScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView$InternalScrollViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase<",
        "Landroid/widget/ScrollView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 3

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ScrollView;

    move-result-object p1

    return-object p1
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ScrollView;
    .registers 4

    .line 55
    new-instance v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView$InternalScrollViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView$InternalScrollViewSDK9;-><init>(Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f090548

    .line 59
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->setId(I)V

    return-object v0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;
    .registers 2

    .line 48
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->VERTICAL:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected isReadyForPullEnd()Z
    .registers 5

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 72
    iget-object v2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lt v2, v0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method protected isReadyForPullStart()Z
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
