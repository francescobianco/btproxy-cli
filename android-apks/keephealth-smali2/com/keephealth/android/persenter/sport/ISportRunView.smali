.class public interface abstract Lcom/keephealth/android/persenter/sport/ISportRunView;
.super Ljava/lang/Object;
.source "ISportRunView.java"

# interfaces
.implements Lcom/keephealth/android/base/IBaseView;


# virtual methods
.method public abstract bleConnect()V
.end method

.method public abstract bleDisconnect()V
.end method

.method public abstract connecetTimeOut()V
.end method

.method public abstract continueRun(Z)V
.end method

.method public abstract getRunData(Lcom/keephealth/android/model/bean/SportRunningBean;)V
.end method

.method public abstract pauseRun(Z)V
.end method

.method public abstract startRun(I)V
.end method

.method public abstract stopRun(Z)V
.end method
