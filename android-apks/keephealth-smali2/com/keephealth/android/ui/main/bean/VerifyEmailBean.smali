.class public Lcom/keephealth/android/ui/main/bean/VerifyEmailBean;
.super Ljava/lang/Object;
.source "VerifyEmailBean.java"


# instance fields
.field private email:Ljava/lang/String;

.field private verifyCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/VerifyEmailBean;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyCode()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/VerifyEmailBean;->verifyCode:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/VerifyEmailBean;->email:Ljava/lang/String;

    return-void
.end method

.method public setVerifyCode(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/VerifyEmailBean;->verifyCode:Ljava/lang/String;

    return-void
.end method
