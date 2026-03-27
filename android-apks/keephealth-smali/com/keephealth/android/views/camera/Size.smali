.class public Lcom/keephealth/android/views/camera/Size;
.super Ljava/lang/Object;
.source "Size.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/keephealth/android/views/camera/Size;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/keephealth/android/views/camera/Size;->mWidth:I

    .line 39
    iput p2, p0, Lcom/keephealth/android/views/camera/Size;->mHeight:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/keephealth/android/views/camera/Size;)I
    .registers 4

    .line 78
    iget v0, p0, Lcom/keephealth/android/views/camera/Size;->mWidth:I

    iget v1, p0, Lcom/keephealth/android/views/camera/Size;->mHeight:I

    mul-int/2addr v0, v1

    iget v1, p1, Lcom/keephealth/android/views/camera/Size;->mWidth:I

    iget p1, p1, Lcom/keephealth/android/views/camera/Size;->mHeight:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 26
    check-cast p1, Lcom/keephealth/android/views/camera/Size;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/camera/Size;->compareTo(Lcom/keephealth/android/views/camera/Size;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 58
    :cond_8
    instance-of v2, p1, Lcom/keephealth/android/views/camera/Size;

    if-eqz v2, :cond_1b

    .line 59
    check-cast p1, Lcom/keephealth/android/views/camera/Size;

    .line 60
    iget v2, p0, Lcom/keephealth/android/views/camera/Size;->mWidth:I

    iget v3, p1, Lcom/keephealth/android/views/camera/Size;->mWidth:I

    if-ne v2, v3, :cond_1b

    iget v2, p0, Lcom/keephealth/android/views/camera/Size;->mHeight:I

    iget p1, p1, Lcom/keephealth/android/views/camera/Size;->mHeight:I

    if-ne v2, p1, :cond_1b

    move v0, v1

    :cond_1b
    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/keephealth/android/views/camera/Size;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/keephealth/android/views/camera/Size;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 73
    iget v0, p0, Lcom/keephealth/android/views/camera/Size;->mHeight:I

    iget v1, p0, Lcom/keephealth/android/views/camera/Size;->mWidth:I

    shl-int/lit8 v2, v1, 0x10

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/views/camera/Size;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/camera/Size;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
