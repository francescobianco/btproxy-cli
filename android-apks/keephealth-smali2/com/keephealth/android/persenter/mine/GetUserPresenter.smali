.class public Lcom/keephealth/android/persenter/mine/GetUserPresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "GetUserPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/keephealth/android/persenter/mine/IGetUserInfoView;",
        ">",
        "Lcom/keephealth/android/base/BasePersenter<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentUser()Lcom/keephealth/android/model/bean/UserBean;
    .registers 3

    .line 13
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 15
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setUserName(Ljava/lang/String;)V

    :cond_17
    return-object v0
.end method
