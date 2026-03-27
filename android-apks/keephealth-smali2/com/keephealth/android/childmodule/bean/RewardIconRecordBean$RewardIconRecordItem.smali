.class public Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean$RewardIconRecordItem;
.super Ljava/lang/Object;
.source "RewardIconRecordBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RewardIconRecordItem"
.end annotation


# instance fields
.field private iconId:I

.field private icon_num:I

.field private name:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconId()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean$RewardIconRecordItem;->iconId:I

    return v0
.end method

.method public getIcon_num()I
    .registers 2

    .line 69
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean$RewardIconRecordItem;->icon_num:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean$RewardIconRecordItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean$RewardIconRecordItem;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setIconId(I)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean$RewardIconRecordItem;->iconId:I

    return-void
.end method

.method public setIcon_num(I)V
    .registers 2

    .line 73
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean$RewardIconRecordItem;->icon_num:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean$RewardIconRecordItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/RewardIconRecordBean$RewardIconRecordItem;->time:Ljava/lang/String;

    return-void
.end method
