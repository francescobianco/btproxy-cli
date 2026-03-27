.class public Lcom/keephealth/android/model/bean/DialCenterClass;
.super Ljava/lang/Object;
.source "DialCenterClass.java"


# instance fields
.field private adapterId:I

.field private dialAs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private name:Ljava/lang/String;

.field private order:I

.field private recommendItemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdapterId()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/keephealth/android/model/bean/DialCenterClass;->adapterId:I

    return v0
.end method

.method public getDialAs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DialCenterClass;->dialAs:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/keephealth/android/model/bean/DialCenterClass;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DialCenterClass;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/keephealth/android/model/bean/DialCenterClass;->order:I

    return v0
.end method

.method public getRecommendItemAdapter()Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DialCenterClass;->recommendItemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    return-object v0
.end method

.method public setAdapterId(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/keephealth/android/model/bean/DialCenterClass;->adapterId:I

    return-void
.end method

.method public setDialAs(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DialCenterClass;->dialAs:Ljava/util/List;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/keephealth/android/model/bean/DialCenterClass;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DialCenterClass;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .registers 2

    .line 53
    iput p1, p0, Lcom/keephealth/android/model/bean/DialCenterClass;->order:I

    return-void
.end method

.method public setRecommendItemAdapter(Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DialCenterClass;->recommendItemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    return-void
.end method
