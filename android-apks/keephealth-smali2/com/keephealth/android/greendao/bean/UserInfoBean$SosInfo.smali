.class public Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;
.super Ljava/lang/Object;
.source "UserInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/greendao/bean/UserInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SosInfo"
.end annotation


# instance fields
.field private phone:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhoneNum()Ljava/lang/String;
    .registers 2

    .line 661
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonePerson()Ljava/lang/String;
    .registers 2

    .line 669
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .registers 2

    .line 665
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPhonePerson(Ljava/lang/String;)V
    .registers 2

    .line 673
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;->userName:Ljava/lang/String;

    return-void
.end method
