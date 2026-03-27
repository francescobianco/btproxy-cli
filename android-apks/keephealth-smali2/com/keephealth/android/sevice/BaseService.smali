.class public Lcom/keephealth/android/sevice/BaseService;
.super Landroid/app/Service;
.source "BaseService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/keephealth/android/base/BasePersenter;",
        ">",
        "Landroid/app/Service;"
    }
.end annotation


# instance fields
.field protected mPersenter:Lcom/keephealth/android/base/BasePersenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private initPresenter()V
    .registers 3

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ObjectUtil;->getParameterizedType(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/base/BasePersenter;

    iput-object v0, p0, Lcom/keephealth/android/sevice/BaseService;->mPersenter:Lcom/keephealth/android/base/BasePersenter;

    if-eqz v0, :cond_14

    .line 58
    move-object v1, p0

    check-cast v1, Lcom/keephealth/android/base/IBaseView;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/base/BasePersenter;->attachView(Lcom/keephealth/android/base/IBaseView;)V

    :cond_14
    return-void
.end method


# virtual methods
.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 2

    return-void
.end method

.method public handleMessageInner(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lcom/keephealth/android/sevice/BaseService;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 1

    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 36
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->register(Ljava/lang/Object;)V

    .line 37
    invoke-direct {p0}, Lcom/keephealth/android/sevice/BaseService;->initPresenter()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 69
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/sevice/BaseService;->mPersenter:Lcom/keephealth/android/base/BasePersenter;

    if-eqz v0, :cond_a

    .line 71
    invoke-virtual {v0}, Lcom/keephealth/android/base/BasePersenter;->detachView()V

    .line 73
    :cond_a
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->unregister(Ljava/lang/Object;)V

    return-void
.end method
