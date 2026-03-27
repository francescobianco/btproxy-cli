.class public Lcom/keephealth/android/views/RecyclerRefreshLayout;
.super Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.source "RecyclerRefreshLayout.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/RecyclerRefreshLayout$SuperRefreshLayoutListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/keephealth/android/views/RecyclerRefreshLayout$SuperRefreshLayoutListener;

.field private mCanLoadMore:Z

.field private mHasMore:Z

.field private mIsOnLoading:Z

.field private mLastY:I

.field private mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

.field private mTouchSlop:I

.field private mYDown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 30
    iput-boolean p2, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mIsOnLoading:Z

    const/4 p2, 0x1

    .line 32
    iput-boolean p2, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mCanLoadMore:Z

    .line 34
    iput-boolean p2, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mHasMore:Z

    .line 46
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mTouchSlop:I

    .line 47
    invoke-virtual {p0, p0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/RecyclerRefreshLayout;)Z
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->canLoad()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/RecyclerRefreshLayout;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mCanLoadMore:Z

    return p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/RecyclerRefreshLayout;)V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->loadData()V

    return-void
.end method

.method private canLoad()Z
    .registers 2

    .line 120
    invoke-direct {p0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->isScrollBottom()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mIsOnLoading:Z

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->isPullUp()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mHasMore:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private getMaxPosition([I)I
    .registers 6

    .line 210
    array-length v0, p1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_f

    aget v3, p1, v2

    .line 211
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    return v1
.end method

.method private getRecycleView()V
    .registers 3

    .line 73
    invoke-virtual {p0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_26

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 75
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_16

    const v0, 0x7f0904a7

    .line 77
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    :cond_16
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_26

    .line 80
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    new-instance v1, Lcom/keephealth/android/views/RecyclerRefreshLayout$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/RecyclerRefreshLayout$1;-><init>(Lcom/keephealth/android/views/RecyclerRefreshLayout;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_26
    return-void
.end method

.method private isPullUp()Z
    .registers 3

    .line 139
    iget v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mYDown:I

    iget v1, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mLastY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mTouchSlop:I

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private isScrollBottom()Z
    .registers 4

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 160
    invoke-virtual {p0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    return v2
.end method

.method private loadData()V
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->listener:Lcom/keephealth/android/views/RecyclerRefreshLayout$SuperRefreshLayoutListener;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setOnLoading(Z)V

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->listener:Lcom/keephealth/android/views/RecyclerRefreshLayout$SuperRefreshLayoutListener;

    invoke-interface {v0}, Lcom/keephealth/android/views/RecyclerRefreshLayout$SuperRefreshLayoutListener;->onLoadMore()V

    :cond_d
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_19

    .line 106
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mLastY:I

    goto :goto_19

    .line 103
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mYDown:I

    .line 111
    :goto_19
    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getLastVisiblePosition()I
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_17

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    goto :goto_5b

    .line 190
    :cond_17
    iget-object v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_2e

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    goto :goto_5b

    .line 192
    :cond_2e
    iget-object v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_4f

    .line 193
    iget-object v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 194
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v0

    .line 195
    invoke-direct {p0, v0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->getMaxPosition([I)I

    move-result v0

    goto :goto_5b

    .line 197
    :cond_4f
    iget-object v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5b
    return v0
.end method

.method public onComplete()V
    .registers 2

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setOnLoading(Z)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setRefreshing(Z)V

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mHasMore:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 62
    invoke-super/range {p0 .. p5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onLayout(ZIIII)V

    .line 64
    iget-object p1, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_a

    .line 65
    invoke-direct {p0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->getRecycleView()V

    :cond_a
    return-void
.end method

.method public onRefresh()V
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->listener:Lcom/keephealth/android/views/RecyclerRefreshLayout$SuperRefreshLayoutListener;

    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mIsOnLoading:Z

    if-nez v1, :cond_c

    .line 54
    invoke-interface {v0}, Lcom/keephealth/android/views/RecyclerRefreshLayout$SuperRefreshLayoutListener;->onRefreshing()V

    goto :goto_10

    :cond_c
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setRefreshing(Z)V

    :goto_10
    return-void
.end method

.method public setCanLoadMore(Z)V
    .registers 2

    .line 178
    iput-boolean p1, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mCanLoadMore:Z

    return-void
.end method

.method public setOnLoading(Z)V
    .registers 3

    .line 148
    iget-boolean v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mIsOnLoading:Z

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 149
    iput v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mYDown:I

    .line 150
    iput v0, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mLastY:I

    .line 152
    :cond_9
    iput-boolean p1, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->mIsOnLoading:Z

    return-void
.end method

.method public setSuperRefreshLayoutListener(Lcom/keephealth/android/views/RecyclerRefreshLayout$SuperRefreshLayoutListener;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/keephealth/android/views/RecyclerRefreshLayout;->listener:Lcom/keephealth/android/views/RecyclerRefreshLayout$SuperRefreshLayoutListener;

    return-void
.end method
