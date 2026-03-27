.class public Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;
.super Lcom/keephealth/android/base/BaseBean;
.source "RewardSelectListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;
    }
.end annotation


# instance fields
.field private coinConsumeSize:I

.field private coinObtainSize:I

.field private exchangeMonth:Ljava/lang/String;

.field private familyExchangeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoinConsumeSize()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;->coinConsumeSize:I

    return v0
.end method

.method public getCoinObtainSize()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;->coinObtainSize:I

    return v0
.end method

.method public getExchangeMonth()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;->exchangeMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyExchangeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;->familyExchangeList:Ljava/util/List;

    return-object v0
.end method

.method public setCoinConsumeSize(I)V
    .registers 2

    .line 39
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;->coinConsumeSize:I

    return-void
.end method

.method public setCoinObtainSize(I)V
    .registers 2

    .line 31
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;->coinObtainSize:I

    return-void
.end method

.method public setExchangeMonth(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;->exchangeMonth:Ljava/lang/String;

    return-void
.end method

.method public setFamilyExchangeList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;->familyExchangeList:Ljava/util/List;

    return-void
.end method
