.class public Lcom/keephealth/android/views/pullscrollview/LoadingLayoutProxy;
.super Ljava/lang/Object;
.source "LoadingLayoutProxy.java"

# interfaces
.implements Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;


# instance fields
.field private final mLoadingLayouts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/pullscrollview/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addLayout(Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 29
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    .line 36
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    .line 43
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    .line 57
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    .line 50
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    .line 64
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    .line 70
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setTextTypeface(Landroid/graphics/Typeface;)V

    goto :goto_6

    :cond_16
    return-void
.end method
