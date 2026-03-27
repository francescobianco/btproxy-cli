.class public Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$PacketInfo;
.super Ljava/lang/Object;
.source "DataBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PacketInfo"
.end annotation


# static fields
.field public static final TYPE_END:I = 0x2

.field public static final TYPE_ING:I = 0x1

.field public static final TYPE_START:I


# instance fields
.field mLength:I

.field mType:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$PacketInfo;->mType:I

    .line 211
    iput p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$PacketInfo;->mLength:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 205
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$PacketInfo;->mLength:I

    const/4 v0, 0x2

    .line 206
    aget-byte p1, p1, v0

    iput p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$PacketInfo;->mType:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .line 229
    iget v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$PacketInfo;->mLength:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 225
    iget v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$PacketInfo;->mType:I

    return v0
.end method

.method public toByteArray()[B
    .registers 6

    .line 216
    iget v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$PacketInfo;->mLength:I

    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 218
    iget v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$PacketInfo;->mType:I

    int-to-byte v2, v2

    const/4 v3, 0x4

    .line 219
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v1, v3, v4

    const/4 v1, 0x1

    aput-byte v0, v3, v1

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte v4, v3, v0

    return-object v3
.end method
