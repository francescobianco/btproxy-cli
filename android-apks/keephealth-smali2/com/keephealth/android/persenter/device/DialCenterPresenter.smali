.class public Lcom/keephealth/android/persenter/device/DialCenterPresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "DialCenterPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/device/DialCenterContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BasePersenter<",
        "Lcom/keephealth/android/persenter/device/DialCenterContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/device/DialCenterContract$Presenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/persenter/device/DialCenterPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/keephealth/android/persenter/device/DialCenterPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/persenter/device/DialCenterPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/keephealth/android/persenter/device/DialCenterPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method


# virtual methods
.method public getDialCebter(Ljava/lang/String;)V
    .registers 3

    .line 17
    new-instance v0, Lcom/keephealth/android/persenter/device/DialCenterPresenter$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/device/DialCenterPresenter$1;-><init>(Lcom/keephealth/android/persenter/device/DialCenterPresenter;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/UserHttp;->dialCenterByModel(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method
