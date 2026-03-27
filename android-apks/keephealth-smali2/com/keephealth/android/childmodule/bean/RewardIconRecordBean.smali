.class public Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean;
.super Ljava/lang/Object;
.source "RewardIconRecordBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean$RewardIconRecordItem;
    }
.end annotation


# instance fields
.field private date:Ljava/lang/String;

.field private record_num:Ljava/lang/String;

.field private rewardIconRecordItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean$RewardIconRecordItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getRecord_num()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean;->record_num:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardIconRecordItem()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean$RewardIconRecordItem;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean;->rewardIconRecordItem:Ljava/util/List;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setRecord_num(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean;->record_num:Ljava/lang/String;

    return-void
.end method

.method public setRewardIconRecordItem(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean$RewardIconRecordItem;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean;->rewardIconRecordItem:Ljava/util/List;

    return-void
.end method
