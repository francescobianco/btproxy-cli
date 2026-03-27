.class public Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;
.super Ljava/lang/Object;
.source "WeightRecordShowList.java"


# instance fields
.field private avgWeight:F

.field private dateMonth:Ljava/lang/String;

.field private recordInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/ChildEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvgWeight()F
    .registers 2

    .line 13
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->avgWeight:F

    return v0
.end method

.method public getDateMonth()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->dateMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/ChildEntity;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->recordInfos:Ljava/util/List;

    return-object v0
.end method

.method public setAvgWeight(F)V
    .registers 2

    .line 17
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->avgWeight:F

    return-void
.end method

.method public setDateMonth(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->dateMonth:Ljava/lang/String;

    return-void
.end method

.method public setRecordInfos(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/ChildEntity;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->recordInfos:Ljava/util/List;

    return-void
.end method
