.class public Lcom/keephealth/android/model/bean/MedalResult;
.super Ljava/lang/Object;
.source "MedalResult.java"


# instance fields
.field private createTime:Ljava/lang/String;

.field private medalNum:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/keephealth/android/model/bean/MedalResult;->medalNum:I

    .line 9
    iput-object p2, p0, Lcom/keephealth/android/model/bean/MedalResult;->createTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/keephealth/android/model/bean/MedalResult;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMedalNum()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/keephealth/android/model/bean/MedalResult;->medalNum:I

    return v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/keephealth/android/model/bean/MedalResult;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setMedalNum(I)V
    .registers 2

    .line 17
    iput p1, p0, Lcom/keephealth/android/model/bean/MedalResult;->medalNum:I

    return-void
.end method
