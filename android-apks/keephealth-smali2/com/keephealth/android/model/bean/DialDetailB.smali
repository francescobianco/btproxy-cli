.class public Lcom/keephealth/android/model/bean/DialDetailB;
.super Ljava/lang/Object;
.source "DialDetailB.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private adapterId:I

.field private bgUrl:Ljava/lang/String;

.field private customId:I

.field private fileUrl:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private order:I

.field private picUrl:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 10

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/keephealth/android/model/bean/DialDetailB;->id:I

    .line 25
    iput p2, p0, Lcom/keephealth/android/model/bean/DialDetailB;->adapterId:I

    .line 26
    iput-object p3, p0, Lcom/keephealth/android/model/bean/DialDetailB;->fileUrl:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/keephealth/android/model/bean/DialDetailB;->name:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/keephealth/android/model/bean/DialDetailB;->picUrl:Ljava/lang/String;

    .line 29
    iput p6, p0, Lcom/keephealth/android/model/bean/DialDetailB;->order:I

    .line 30
    iput p7, p0, Lcom/keephealth/android/model/bean/DialDetailB;->customId:I

    .line 31
    iput p8, p0, Lcom/keephealth/android/model/bean/DialDetailB;->type:I

    .line 32
    iput-object p9, p0, Lcom/keephealth/android/model/bean/DialDetailB;->bgUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdapterId()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/keephealth/android/model/bean/DialDetailB;->adapterId:I

    return v0
.end method

.method public getBgUrl()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DialDetailB;->bgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomId()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/keephealth/android/model/bean/DialDetailB;->customId:I

    return v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DialDetailB;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/keephealth/android/model/bean/DialDetailB;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DialDetailB;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/keephealth/android/model/bean/DialDetailB;->order:I

    return v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DialDetailB;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/keephealth/android/model/bean/DialDetailB;->type:I

    return v0
.end method

.method public setAdapterId(I)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/keephealth/android/model/bean/DialDetailB;->adapterId:I

    return-void
.end method

.method public setBgUrl(Ljava/lang/String;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DialDetailB;->bgUrl:Ljava/lang/String;

    return-void
.end method

.method public setCustomId(I)V
    .registers 2

    .line 52
    iput p1, p0, Lcom/keephealth/android/model/bean/DialDetailB;->customId:I

    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DialDetailB;->fileUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/keephealth/android/model/bean/DialDetailB;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DialDetailB;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .registers 2

    .line 100
    iput p1, p0, Lcom/keephealth/android/model/bean/DialDetailB;->order:I

    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DialDetailB;->picUrl:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 44
    iput p1, p0, Lcom/keephealth/android/model/bean/DialDetailB;->type:I

    return-void
.end method
