.class public Lcom/keephealth/android/model/bean/ECGRecordShowList;
.super Ljava/lang/Object;
.source "ECGRecordShowList.java"


# instance fields
.field private dateMonth:Ljava/lang/String;

.field private recordInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/EcgRecordInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateMonth()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/keephealth/android/model/bean/ECGRecordShowList;->dateMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/EcgRecordInfo;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/keephealth/android/model/bean/ECGRecordShowList;->recordInfos:Ljava/util/List;

    return-object v0
.end method

.method public setDateMonth(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/keephealth/android/model/bean/ECGRecordShowList;->dateMonth:Ljava/lang/String;

    return-void
.end method

.method public setRecordInfos(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/EcgRecordInfo;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/keephealth/android/model/bean/ECGRecordShowList;->recordInfos:Ljava/util/List;

    return-void
.end method
