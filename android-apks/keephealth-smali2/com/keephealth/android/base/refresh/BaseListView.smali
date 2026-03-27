.class public interface abstract Lcom/keephealth/android/base/refresh/BaseListView;
.super Ljava/lang/Object;
.source "BaseListView.java"

# interfaces
.implements Lcom/keephealth/android/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/keephealth/android/base/IBaseView;"
    }
.end annotation


# virtual methods
.method public abstract onComplete()V
.end method

.method public abstract onLoadMoreSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TM;>;)V"
        }
    .end annotation
.end method

.method public abstract onRefreshSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TM;>;)V"
        }
    .end annotation
.end method

.method public abstract setCanLoadmore(Z)V
.end method

.method public abstract showNoData(I)V
.end method

.method public abstract showNoMore()V
.end method
