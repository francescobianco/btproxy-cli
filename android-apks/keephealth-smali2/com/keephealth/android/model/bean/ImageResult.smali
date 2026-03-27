.class public Lcom/keephealth/android/model/bean/ImageResult;
.super Ljava/lang/Object;
.source "ImageResult.java"


# instance fields
.field private avatar:Ljava/lang/String;

.field private coverImage:Ljava/lang/String;

.field private mid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/keephealth/android/model/bean/ImageResult;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverImage()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/keephealth/android/model/bean/ImageResult;->coverImage:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/keephealth/android/model/bean/ImageResult;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/keephealth/android/model/bean/ImageResult;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCoverImage(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/model/bean/ImageResult;->coverImage:Ljava/lang/String;

    return-void
.end method

.method public setMid(Ljava/lang/String;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/keephealth/android/model/bean/ImageResult;->mid:Ljava/lang/String;

    return-void
.end method
