.class public interface abstract Lcom/keephealth/android/persenter/main/MainFragmentContract$Presenter;
.super Ljava/lang/Object;
.source "MainFragmentContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/main/MainFragmentContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getUserInfo()V
.end method

.method public abstract startTime()V
.end method

.method public abstract stopTime()V
.end method

.method public abstract stopWeather()V
.end method

.method public abstract synchDate()V
.end method

.method public abstract updateUser(Lcom/keephealth/android/model/bean/UserBean;)V
.end method

.method public abstract uploadCurrentStep(IIIII)V
.end method

.method public abstract uploadDataHeart()V
.end method

.method public abstract uploadDataSleep()V
.end method

.method public abstract uploadDataSport()V
.end method

.method public abstract uploadDataStep()V
.end method

.method public abstract uploadDataTemp()V
.end method

.method public abstract uploadDatatBlood()V
.end method

.method public abstract uploadDatatEcg()V
.end method
