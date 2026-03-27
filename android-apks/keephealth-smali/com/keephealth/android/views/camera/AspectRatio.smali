.class public Lcom/keephealth/android/views/camera/AspectRatio;
.super Ljava/lang/Object;
.source "AspectRatio.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/keephealth/android/views/camera/AspectRatio;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/keephealth/android/views/camera/AspectRatio;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCache:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/keephealth/android/views/camera/AspectRatio;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mX:I

.field private final mY:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 13
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    sput-object v0, Lcom/keephealth/android/views/camera/AspectRatio;->sCache:Landroidx/collection/SparseArrayCompat;

    .line 157
    new-instance v0, Lcom/keephealth/android/views/camera/AspectRatio$1;

    invoke-direct {v0}, Lcom/keephealth/android/views/camera/AspectRatio$1;-><init>()V

    sput-object v0, Lcom/keephealth/android/views/camera/AspectRatio;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mX:I

    .line 71
    iput p2, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mY:I

    return-void
.end method

.method private static gcd(II)I
    .registers 3

    :goto_0
    move v0, p1

    move p1, p0

    move p0, v0

    if-eqz p0, :cond_7

    .line 140
    rem-int/2addr p1, p0

    goto :goto_0

    :cond_7
    return p1
.end method

.method public static of(II)Lcom/keephealth/android/views/camera/AspectRatio;
    .registers 5

    .line 28
    invoke-static {p0, p1}, Lcom/keephealth/android/views/camera/AspectRatio;->gcd(II)I

    move-result v0

    .line 29
    div-int/2addr p0, v0

    .line 30
    div-int/2addr p1, v0

    .line 31
    sget-object v0, Lcom/keephealth/android/views/camera/AspectRatio;->sCache:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/SparseArrayCompat;

    if-nez v1, :cond_21

    .line 33
    new-instance v1, Lcom/keephealth/android/views/camera/AspectRatio;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/views/camera/AspectRatio;-><init>(II)V

    .line 34
    new-instance v2, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v2}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 35
    invoke-virtual {v2, p1, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 36
    invoke-virtual {v0, p0, v2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-object v1

    .line 39
    :cond_21
    invoke-virtual {v1, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/camera/AspectRatio;

    if-nez v0, :cond_31

    .line 41
    new-instance v0, Lcom/keephealth/android/views/camera/AspectRatio;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/views/camera/AspectRatio;-><init>(II)V

    .line 42
    invoke-virtual {v1, p1, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_31
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/keephealth/android/views/camera/AspectRatio;
    .registers 5

    const/16 v0, 0x3a

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    .line 57
    const-string v2, "Malformed aspect ratio: "

    if-eq v0, v1, :cond_37

    const/4 v1, 0x0

    .line 61
    :try_start_c
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 63
    invoke-static {v1, v0}, Lcom/keephealth/android/views/camera/AspectRatio;->of(II)Lcom/keephealth/android/views/camera/AspectRatio;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 58
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public compareTo(Lcom/keephealth/android/views/camera/AspectRatio;)I
    .registers 3

    .line 121
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/camera/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 123
    :cond_8
    invoke-virtual {p0}, Lcom/keephealth/android/views/camera/AspectRatio;->toFloat()F

    move-result v0

    invoke-virtual {p1}, Lcom/keephealth/android/views/camera/AspectRatio;->toFloat()F

    move-result p1

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 12
    check-cast p1, Lcom/keephealth/android/views/camera/AspectRatio;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/camera/AspectRatio;->compareTo(Lcom/keephealth/android/views/camera/AspectRatio;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
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

    .line 97
    :cond_8
    instance-of v2, p1, Lcom/keephealth/android/views/camera/AspectRatio;

    if-eqz v2, :cond_1b

    .line 98
    check-cast p1, Lcom/keephealth/android/views/camera/AspectRatio;

    .line 99
    iget v2, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mX:I

    iget v3, p1, Lcom/keephealth/android/views/camera/AspectRatio;->mX:I

    if-ne v2, v3, :cond_1b

    iget v2, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mY:I

    iget p1, p1, Lcom/keephealth/android/views/camera/AspectRatio;->mY:I

    if-ne v2, p1, :cond_1b

    move v0, v1

    :cond_1b
    return v0
.end method

.method public getX()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mX:I

    return v0
.end method

.method public getY()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mY:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 116
    iget v0, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mY:I

    iget v1, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mX:I

    shl-int/lit8 v2, v1, 0x10

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public inverse()Lcom/keephealth/android/views/camera/AspectRatio;
    .registers 3

    .line 134
    iget v0, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mY:I

    iget v1, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mX:I

    invoke-static {v0, v1}, Lcom/keephealth/android/views/camera/AspectRatio;->of(II)Lcom/keephealth/android/views/camera/AspectRatio;

    move-result-object v0

    return-object v0
.end method

.method public matches(Lcom/keephealth/android/views/camera/Size;)Z
    .registers 4

    .line 83
    invoke-virtual {p1}, Lcom/keephealth/android/views/camera/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/keephealth/android/views/camera/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/keephealth/android/views/camera/AspectRatio;->gcd(II)I

    move-result v0

    .line 84
    invoke-virtual {p1}, Lcom/keephealth/android/views/camera/Size;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    .line 85
    invoke-virtual {p1}, Lcom/keephealth/android/views/camera/Size;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    .line 86
    iget v0, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mX:I

    if-ne v0, v1, :cond_20

    iget v0, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mY:I

    if-ne v0, p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method

.method public toFloat()F
    .registers 3

    .line 110
    iget v0, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 153
    iget p2, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget p2, p0, Lcom/keephealth/android/views/camera/AspectRatio;->mY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
