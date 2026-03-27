.class public Lcom/keephealth/android/util/ByteReceiveBackUtils;
.super Ljava/lang/Object;
.source "ByteReceiveBackUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteEqualReceive([B)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_a0

    .line 6
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 7
    array-length p0, p0

    if-lez p0, :cond_a0

    const/16 p0, 0x81

    if-eq v1, p0, :cond_9e

    const/16 p0, 0x82

    if-eq v1, p0, :cond_9e

    const/16 p0, 0x83

    if-eq v1, p0, :cond_9e

    const/16 p0, 0x84

    if-eq v1, p0, :cond_9e

    const/16 p0, 0x85

    if-eq v1, p0, :cond_9e

    const/16 p0, 0x86

    if-eq v1, p0, :cond_9e

    const/16 p0, 0x87

    if-eq v1, p0, :cond_9e

    const/16 p0, 0x88

    if-eq v1, p0, :cond_9e

    const/16 p0, 0x89

    if-eq v1, p0, :cond_9e

    const/16 p0, 0x8a

    if-eq v1, p0, :cond_9e

    const/16 p0, 0x8b

    if-eq v1, p0, :cond_9e

    const/16 p0, 0x8c

    if-eq v1, p0, :cond_9e

    const/16 p0, 0x90

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xa0

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xa1

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xa2

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xa3

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xa4

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xa5

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xa6

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xa7

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xa8

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xa9

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xaa

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xab

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xac

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xad

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xae

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xaf

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xb0

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xc1

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xc2

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xc3

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xc4

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xc5

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xc6

    if-eq v1, p0, :cond_9e

    const/16 p0, 0xf0

    if-ne v1, p0, :cond_a0

    :cond_9e
    const/4 p0, 0x1

    return p0

    :cond_a0
    return v0
.end method
