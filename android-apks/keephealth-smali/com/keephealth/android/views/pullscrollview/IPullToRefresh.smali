.class public interface abstract Lcom/keephealth/android/views/pullscrollview/IPullToRefresh;
.super Ljava/lang/Object;
.source "IPullToRefresh.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract demo()Z
.end method

.method public abstract getCurrentMode()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;
.end method

.method public abstract getFilterTouchEvents()Z
.end method

.method public abstract getLoadingLayoutProxy()Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;
.end method

.method public abstract getLoadingLayoutProxy(ZZ)Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;
.end method

.method public abstract getMode()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;
.end method

.method public abstract getRefreshableView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getShowViewWhileRefreshing()Z
.end method

.method public abstract getState()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;
.end method

.method public abstract isPullToRefreshEnabled()Z
.end method

.method public abstract isPullToRefreshOverScrollEnabled()Z
.end method

.method public abstract isRefreshing()Z
.end method

.method public abstract isScrollingWhileRefreshingEnabled()Z
.end method

.method public abstract onRefreshComplete()V
.end method

.method public abstract setFilterTouchEvents(Z)V
.end method

.method public abstract setMode(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;)V
.end method

.method public abstract setOnPullEventListener(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnPullEventListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnPullEventListener<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setOnRefreshListener(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener2<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setOnRefreshListener(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setPullToRefreshOverScrollEnabled(Z)V
.end method

.method public abstract setRefreshing()V
.end method

.method public abstract setRefreshing(Z)V
.end method

.method public abstract setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
.end method

.method public abstract setScrollingWhileRefreshingEnabled(Z)V
.end method

.method public abstract setShowViewWhileRefreshing(Z)V
.end method
