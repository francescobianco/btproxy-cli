.class public interface abstract Lcom/keephealth/android/persenter/main/LoginContract$Presenter;
.super Ljava/lang/Object;
.source "LoginContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/main/LoginContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract loginByFacebook(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract regiestAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestLogin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestLoginByWechat(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendCode(Ljava/lang/String;)V
.end method

.method public abstract sendEmailVerifyCode(Ljava/lang/String;)V
.end method

.method public abstract verifityEmail(Ljava/lang/String;Ljava/lang/String;)V
.end method
