.class public abstract Lcom/keephealth/android/base/refresh/BaseRefreshActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "BaseRefreshActivity.java"

# interfaces
.implements Lcom/keephealth/android/base/refresh/BaseListView;
.implements Lcom/keephealth/android/base/IBaseView;
.implements Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemClickListener;
.implements Lcom/keephealth/android/views/RecyclerRefreshLayout$SuperRefreshLayoutListener;
.implements Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnCustomClickListener;
.implements Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$RetryOnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Presenter:",
        "Lcom/keephealth/android/base/refresh/BaseListPersenter;",
        "Model:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/keephealth/android/base/BaseActivity;",
        "Lcom/keephealth/android/base/refresh/BaseListView<",
        "TModel;>;",
        "Lcom/keephealth/android/base/IBaseView;",
        "Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemClickListener;",
        "Lcom/keephealth/android/views/RecyclerRefreshLayout$SuperRefreshLayoutListener;",
        "Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnCustomClickListener;",
        "Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$RetryOnClickListener;"
    }
.end annotation


# instance fields
.field protected flBottom:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090191
    .end annotation
.end field

.field protected flTop:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090196
    .end annotation
.end field

.field protected mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter<",
            "TModel;>;"
        }
    .end annotation
.end field

.field protected mPresenter:Lcom/keephealth/android/base/refresh/BaseListPersenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPresenter;"
        }
    .end annotation
.end field

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a7
    .end annotation
.end field

.field protected mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected addBottomView(Landroid/view/View;)V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->flBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected addView(Landroid/view/View;)V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->flTop:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected abstract getAdapter()Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter<",
            "TModel;>;"
        }
    .end annotation
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c00fe

    return v0
.end method

.method protected getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 2

    .line 192
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public goBack()V
    .registers 1

    .line 206
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->finish()V

    return-void
.end method

.method public hideLoading()V
    .registers 1

    .line 173
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method protected initView()V
    .registers 6

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setSuperRefreshLayoutListener(Lcom/keephealth/android/views/RecyclerRefreshLayout$SuperRefreshLayoutListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->getAdapter()Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->setCustomClickListener(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnCustomClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->setRetryOnClickListener(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$RetryOnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    const v1, -0xffff01

    const v2, -0xff0001

    const/high16 v3, -0x10000

    const v4, -0xff0100

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setColorSchemeColors([I)V

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    new-instance v1, Lcom/keephealth/android/base/refresh/BaseRefreshActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/base/refresh/BaseRefreshActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/base/refresh/BaseRefreshActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-base-refresh-BaseRefreshActivity()V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setRefreshing(Z)V

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mPresenter:Lcom/keephealth/android/base/refresh/BaseListPersenter;

    if-nez v0, :cond_b

    return-void

    .line 73
    :cond_b
    invoke-virtual {v0}, Lcom/keephealth/android/base/refresh/BaseListPersenter;->onRefreshing()V

    return-void
.end method

.method synthetic lambda$onLoadMore$2$com-keephealth-android-base-refresh-BaseRefreshActivity()V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->setState(IZ)V

    return-void
.end method

.method synthetic lambda$onRefreshing$1$com-keephealth-android-base-refresh-BaseRefreshActivity()V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setRefreshing(Z)V

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mPresenter:Lcom/keephealth/android/base/refresh/BaseListPersenter;

    if-nez v0, :cond_b

    return-void

    .line 114
    :cond_b
    invoke-virtual {v0}, Lcom/keephealth/android/base/refresh/BaseListPersenter;->onRefreshing()V

    return-void
.end method

.method public onComplete()V
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->onComplete()V

    return-void
.end method

.method public onCustomClick(Landroid/view/View;I)V
    .registers 3

    .line 100
    iget-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->onCustomClick(Ljava/lang/Object;I)V

    :cond_b
    return-void
.end method

.method protected onCustomClick(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;I)V"
        }
    .end annotation

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 178
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 179
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mPresenter:Lcom/keephealth/android/base/refresh/BaseListPersenter;

    if-eqz v0, :cond_a

    .line 180
    invoke-virtual {v0}, Lcom/keephealth/android/base/refresh/BaseListPersenter;->detachView()V

    .line 182
    :cond_a
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onItemClick(IJ)V
    .registers 4

    .line 93
    iget-object p2, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 95
    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->onItemClick(Ljava/lang/Object;I)V

    :cond_b
    return-void
.end method

.method protected onItemClick(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;I)V"
        }
    .end annotation

    return-void
.end method

.method public onLoadMore()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mPresenter:Lcom/keephealth/android/base/refresh/BaseListPersenter;

    invoke-virtual {v0}, Lcom/keephealth/android/base/refresh/BaseListPersenter;->onLoadMore()V

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/keephealth/android/base/refresh/BaseRefreshActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/base/refresh/BaseRefreshActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/base/refresh/BaseRefreshActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLoadMoreSuccess(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TModel;>;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->addAll(Ljava/util/List;)V

    return-void
.end method

.method public onRefreshSuccess(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TModel;>;)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->resetItem(Ljava/util/List;)V

    return-void
.end method

.method public onRefreshing()V
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    new-instance v1, Lcom/keephealth/android/base/refresh/BaseRefreshActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/base/refresh/BaseRefreshActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/base/refresh/BaseRefreshActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 88
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onResume()V

    return-void
.end method

.method protected onViewCreate()V
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onViewCreate()V

    const/4 v0, 0x0

    .line 54
    invoke-static {p0, v0}, Lcom/keephealth/android/util/CnWinUtil;->getT(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/base/refresh/BaseListPersenter;

    iput-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mPresenter:Lcom/keephealth/android/base/refresh/BaseListPersenter;

    if-eqz v0, :cond_11

    .line 56
    invoke-virtual {v0, p0}, Lcom/keephealth/android/base/refresh/BaseListPersenter;->attachView(Lcom/keephealth/android/base/IBaseView;)V

    :cond_11
    return-void
.end method

.method public retryClick()V
    .registers 1

    .line 188
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->onRefreshing()V

    return-void
.end method

.method public setCanLoadmore(Z)V
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->setCanLoadMore(Z)V

    return-void
.end method

.method public showLoading()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 163
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    return-void
.end method

.method public showLoadingFalse()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 168
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 158
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showNetError(Ljava/lang/String;)V
    .registers 4

    .line 147
    const-string p1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->showToast(Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->setState(IZ)V

    return-void
.end method

.method public showNoData(I)V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->resetItem(Ljava/util/List;)V

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->setState(IZI)V

    return-void
.end method

.method public showNoMore()V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRefreshActivity;->mAdapter:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->setState(IZ)V

    return-void
.end method
