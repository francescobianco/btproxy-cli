.class public interface abstract Lcom/keephealth/android/persenter/main/MainFragmentContract$View;
.super Ljava/lang/Object;
.source "MainFragmentContract.java"

# interfaces
.implements Lcom/keephealth/android/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/main/MainFragmentContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract refTimeOut()V
.end method

.method public abstract requestCalander(Z)V
.end method

.method public abstract requestFaild()V
.end method

.method public abstract requestSuccess()V
.end method

.method public abstract saveFaild()V
.end method

.method public abstract saveUserBean(I)V
.end method

.method public abstract setUserInfo(Lcom/keephealth/android/greendao/bean/UserInfoBean;)V
.end method

.method public abstract updateCurrentData(Lcom/keephealth/android/greendao/bean/HealthHeartRate;Lcom/keephealth/android/greendao/bean/TempInfo;)V
.end method

.method public abstract updateProgress(I)V
.end method

.method public abstract updateSportVaule(Lcom/keephealth/android/greendao/bean/HealthSport;)V
.end method
