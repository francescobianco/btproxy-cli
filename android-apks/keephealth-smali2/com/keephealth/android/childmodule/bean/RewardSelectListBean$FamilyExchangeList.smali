.class public Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;
.super Ljava/lang/Object;
.source "RewardSelectListBean.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FamilyExchangeList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;",
        ">;"
    }
.end annotation


# instance fields
.field private coin:I

.field private exchangeTime:Ljava/lang/String;

.field private iconId:I

.field private id:I

.field private mid:I

.field private name:Ljava/lang/String;

.field private rewardId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;)I
    .registers 6

    .line 117
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->getExchangeTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/TimeUtil;->convertDateStringToTimestamp(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->exchangeTime:Ljava/lang/String;

    invoke-static {p1}, Lcom/keephealth/android/util/TimeUtil;->convertDateStringToTimestamp(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 50
    check-cast p1, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->compareTo(Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;)I

    move-result p1

    return p1
.end method

.method public getCoin()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->coin:I

    return v0
.end method

.method public getExchangeTime()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->exchangeTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()I
    .registers 2

    .line 92
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->iconId:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->id:I

    return v0
.end method

.method public getMid()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->mid:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardId()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->rewardId:I

    return v0
.end method

.method public setCoin(I)V
    .registers 2

    .line 88
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->coin:I

    return-void
.end method

.method public setExchangeTime(Ljava/lang/String;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->exchangeTime:Ljava/lang/String;

    return-void
.end method

.method public setIconId(I)V
    .registers 2

    .line 96
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->iconId:I

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 112
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->id:I

    return-void
.end method

.method public setMid(I)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->mid:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->name:Ljava/lang/String;

    return-void
.end method

.method public setRewardId(I)V
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->rewardId:I

    return-void
.end method
