.class public interface abstract Lcom/keephealth/android/persenter/main/LoginContract$View;
.super Ljava/lang/Object;
.source "LoginContract.java"

# interfaces
.implements Lcom/keephealth/android/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/main/LoginContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract LoginSuccess(ILcom/keephealth/android/model/BaseBean;)V
.end method

.method public abstract bindingFaild(ILjava/lang/String;)V
.end method

.method public abstract bindingSuccess()V
.end method

.method public abstract loginFaild(I)V
.end method

.method public abstract registerFaild(I)V
.end method

.method public abstract registerSuccess()V
.end method

.method public abstract sendCodeFaild(I)V
.end method

.method public abstract sendCodeSuccess()V
.end method

.method public abstract verifyCodeFail(I)V
.end method

.method public abstract verifyCodeSuccess()V
.end method
