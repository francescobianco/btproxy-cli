.class public abstract Lcom/keephealth/android/base/refresh/BaseListPersenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "BaseListPersenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/keephealth/android/base/IBaseView;",
        ">",
        "Lcom/keephealth/android/base/BasePersenter<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract onLoadMore()V
.end method

.method protected abstract onRefreshing()V
.end method
