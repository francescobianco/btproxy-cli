.class public interface abstract Lcom/keephealth/android/persenter/main/UpdatePasswordContract$View;
.super Ljava/lang/Object;
.source "UpdatePasswordContract.java"

# interfaces
.implements Lcom/keephealth/android/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/main/UpdatePasswordContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract sendCodeFaild(I)V
.end method

.method public abstract sendCodeSuccess()V
.end method

.method public abstract updateFaild(I)V
.end method

.method public abstract updateSuccess(Lcom/keephealth/android/model/bean/UserBean;)V
.end method
