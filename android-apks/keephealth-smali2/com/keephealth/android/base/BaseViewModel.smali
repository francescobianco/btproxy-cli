.class public Lcom/keephealth/android/base/BaseViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "BaseViewModel.java"


# instance fields
.field private mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method protected addDisposable(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/keephealth/android/base/BaseViewModel;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 24
    :cond_a
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/base/BaseViewModel;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 26
    :cond_11
    iget-object v0, p0, Lcom/keephealth/android/base/BaseViewModel;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method protected dispose()V
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/keephealth/android/base/BaseViewModel;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_7

    .line 34
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    :cond_7
    return-void
.end method

.method protected onCleared()V
    .registers 1

    .line 43
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 44
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseViewModel;->dispose()V

    return-void
.end method
