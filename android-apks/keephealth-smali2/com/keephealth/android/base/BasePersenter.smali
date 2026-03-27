.class public abstract Lcom/keephealth/android/base/BasePersenter;
.super Ljava/lang/Object;
.source "BasePersenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/keephealth/android/base/IBaseView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field protected mView:Lcom/keephealth/android/base/IBaseView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected addDisposable(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/keephealth/android/base/BasePersenter;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 24
    :cond_a
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/base/BasePersenter;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 26
    :cond_11
    iget-object v0, p0, Lcom/keephealth/android/base/BasePersenter;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public attachView(Lcom/keephealth/android/base/IBaseView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/keephealth/android/base/BasePersenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-void
.end method

.method public detachView()V
    .registers 2

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/keephealth/android/base/BasePersenter;->mView:Lcom/keephealth/android/base/IBaseView;

    .line 15
    invoke-virtual {p0}, Lcom/keephealth/android/base/BasePersenter;->dispose()V

    return-void
.end method

.method public dispose()V
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/keephealth/android/base/BasePersenter;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_7

    .line 32
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    :cond_7
    return-void
.end method
