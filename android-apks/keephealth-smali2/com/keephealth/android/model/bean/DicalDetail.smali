.class public Lcom/keephealth/android/model/bean/DicalDetail;
.super Ljava/lang/Object;
.source "DicalDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:I

.field private imageUrl:Ljava/lang/String;

.field private templateUrl:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/keephealth/android/model/bean/DicalDetail;->code:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DicalDetail;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateUrl()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DicalDetail;->templateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/keephealth/android/model/bean/DicalDetail;->type:I

    return v0
.end method

.method public setCode(I)V
    .registers 2

    .line 24
    iput p1, p0, Lcom/keephealth/android/model/bean/DicalDetail;->code:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DicalDetail;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setTemplateUrl(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DicalDetail;->templateUrl:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 16
    iput p1, p0, Lcom/keephealth/android/model/bean/DicalDetail;->type:I

    return-void
.end method
