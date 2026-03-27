.class public Lcom/keephealth/android/ui/ecg/bean/EcgData;
.super Ljava/lang/Object;
.source "EcgData.java"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hr:I

.field private result:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/bean/EcgData;->data:Ljava/util/List;

    return-object v0
.end method

.method public getHr()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/keephealth/android/ui/ecg/bean/EcgData;->hr:I

    return v0
.end method

.method public getResult()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/keephealth/android/ui/ecg/bean/EcgData;->result:I

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/bean/EcgData;->data:Ljava/util/List;

    return-void
.end method

.method public setHr(I)V
    .registers 2

    .line 23
    iput p1, p0, Lcom/keephealth/android/ui/ecg/bean/EcgData;->hr:I

    return-void
.end method

.method public setResult(I)V
    .registers 2

    .line 31
    iput p1, p0, Lcom/keephealth/android/ui/ecg/bean/EcgData;->result:I

    return-void
.end method
