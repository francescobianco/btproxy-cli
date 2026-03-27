.class public Lcom/keephealth/android/model/bean/DicalDataBean;
.super Ljava/lang/Object;
.source "DicalDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private adapterId:I

.field private details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DicalDetail;",
            ">;"
        }
    .end annotation
.end field

.field private dialSizeString:Ljava/lang/String;

.field private shape:I

.field private templates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DicalDetail;",
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
.method public getAdapterId()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/keephealth/android/model/bean/DicalDataBean;->adapterId:I

    return v0
.end method

.method public getDetails()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DicalDetail;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DicalDataBean;->details:Ljava/util/List;

    return-object v0
.end method

.method public getDialSizeString()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DicalDataBean;->dialSizeString:Ljava/lang/String;

    return-object v0
.end method

.method public getShape()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/keephealth/android/model/bean/DicalDataBean;->shape:I

    return v0
.end method

.method public getTemplates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DicalDetail;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DicalDataBean;->templates:Ljava/util/List;

    return-object v0
.end method

.method public setAdapterId(I)V
    .registers 2

    .line 18
    iput p1, p0, Lcom/keephealth/android/model/bean/DicalDataBean;->adapterId:I

    return-void
.end method

.method public setDetails(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DicalDetail;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DicalDataBean;->details:Ljava/util/List;

    return-void
.end method

.method public setDialSizeString(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DicalDataBean;->dialSizeString:Ljava/lang/String;

    return-void
.end method

.method public setShape(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/keephealth/android/model/bean/DicalDataBean;->shape:I

    return-void
.end method

.method public setTemplates(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DicalDetail;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DicalDataBean;->templates:Ljava/util/List;

    return-void
.end method
