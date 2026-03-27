.class public Lcom/keephealth/android/model/bean/SosInfo;
.super Ljava/lang/Object;
.source "SosInfo.java"


# instance fields
.field private phone:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhoneNum()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/keephealth/android/model/bean/SosInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonePerson()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/keephealth/android/model/bean/SosInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/keephealth/android/model/bean/SosInfo;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPhonePerson(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/keephealth/android/model/bean/SosInfo;->userName:Ljava/lang/String;

    return-void
.end method
