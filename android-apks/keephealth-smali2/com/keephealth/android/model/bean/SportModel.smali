.class public Lcom/keephealth/android/model/bean/SportModel;
.super Ljava/lang/Object;
.source "SportModel.java"


# instance fields
.field private max:I

.field private min:I

.field private model:Ljava/lang/String;

.field private sportmodels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/SportModeBean;",
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
.method public getMax()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/keephealth/android/model/bean/SportModel;->max:I

    return v0
.end method

.method public getMin()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/keephealth/android/model/bean/SportModel;->min:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/keephealth/android/model/bean/SportModel;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getSportmodels()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/SportModeBean;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/keephealth/android/model/bean/SportModel;->sportmodels:Ljava/util/List;

    return-object v0
.end method

.method public setMax(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/keephealth/android/model/bean/SportModel;->max:I

    return-void
.end method

.method public setMin(I)V
    .registers 2

    .line 27
    iput p1, p0, Lcom/keephealth/android/model/bean/SportModel;->min:I

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/keephealth/android/model/bean/SportModel;->model:Ljava/lang/String;

    return-void
.end method

.method public setSportmodels(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/SportModeBean;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/keephealth/android/model/bean/SportModel;->sportmodels:Ljava/util/List;

    return-void
.end method
