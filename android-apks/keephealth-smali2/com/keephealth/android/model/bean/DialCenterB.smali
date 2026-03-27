.class public Lcom/keephealth/android/model/bean/DialCenterB;
.super Ljava/lang/Object;
.source "DialCenterB.java"


# instance fields
.field private adapterId:I

.field private dialALables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialCenterClass;",
            ">;"
        }
    .end annotation
.end field

.field private dialShapeString:Ljava/lang/String;

.field private dialSizeString:Ljava/lang/String;

.field private id:I

.field private shape:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdapterId()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/keephealth/android/model/bean/DialCenterB;->adapterId:I

    return v0
.end method

.method public getDialALables()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialCenterClass;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DialCenterB;->dialALables:Ljava/util/List;

    return-object v0
.end method

.method public getDialShapeString()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DialCenterB;->dialShapeString:Ljava/lang/String;

    return-object v0
.end method

.method public getDialSizeString()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DialCenterB;->dialSizeString:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/keephealth/android/model/bean/DialCenterB;->id:I

    return v0
.end method

.method public getShape()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DialCenterB;->shape:Ljava/lang/String;

    return-object v0
.end method

.method public setAdapterId(I)V
    .registers 2

    .line 27
    iput p1, p0, Lcom/keephealth/android/model/bean/DialCenterB;->adapterId:I

    return-void
.end method

.method public setDialALables(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialCenterClass;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DialCenterB;->dialALables:Ljava/util/List;

    return-void
.end method

.method public setDialShapeString(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DialCenterB;->dialShapeString:Ljava/lang/String;

    return-void
.end method

.method public setDialSizeString(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DialCenterB;->dialSizeString:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 19
    iput p1, p0, Lcom/keephealth/android/model/bean/DialCenterB;->id:I

    return-void
.end method

.method public setShape(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DialCenterB;->shape:Ljava/lang/String;

    return-void
.end method
