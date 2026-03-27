.class public Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;
.super Ljava/lang/Object;
.source "DataBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteDataBuffer"
.end annotation


# static fields
.field private static final DEFAULT_WRITE_MAX_LENGTH:I = 0x14

.field private static final MAX_CMDS:I = 0xa


# instance fields
.field private isWriteMaxLengthChanged:Z

.field public mCallback:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;

.field private mCount:I

.field private mItem:[B

.field mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field final mLock:Ljava/util/concurrent/locks/Lock;

.field private mOffset:I

.field private tempWriteMaxLength:I

.field private writeMaxLength:I


# direct methods
.method public constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;)V
    .registers 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mItemList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mItem:[B

    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mCount:I

    .line 27
    iput v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mOffset:I

    const/16 v2, 0x14

    .line 30
    iput v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->writeMaxLength:I

    .line 31
    iput-boolean v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->isWriteMaxLengthChanged:Z

    .line 32
    iput v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->tempWriteMaxLength:I

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 37
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mCallback:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;

    return-void
.end method

.method private reload()V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mItemList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mItem:[B

    .line 65
    array-length v0, v0

    iput v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mCount:I

    .line 66
    iput v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mOffset:I

    .line 67
    iget-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->isWriteMaxLengthChanged:Z

    if-eqz v0, :cond_1a

    .line 68
    iget v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->tempWriteMaxLength:I

    iput v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->writeMaxLength:I

    .line 69
    iput-boolean v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->isWriteMaxLengthChanged:Z

    .line 72
    :cond_1a
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mCallback:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;

    if-eqz v0, :cond_2a

    .line 73
    const-string v0, "ggrr9"

    const-string v1, "mCallback.onStart()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mCallback:Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;

    invoke-virtual {v0}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteCallback;->onStart()V

    :cond_2a
    return-void
.end method


# virtual methods
.method public add([B)Z
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_1c

    .line 49
    const-string p1, "ggrr9"

    const-string v0, "mCallback.onStart()...next1"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->reload()V

    .line 53
    :cond_1c
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x1

    return p1
.end method

.method public getBuffer()[B
    .registers 6

    .line 89
    iget v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mCount:I

    iget v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->writeMaxLength:I

    if-gt v0, v1, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    .line 90
    :goto_8
    new-array v1, v0, [B

    .line 92
    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mItem:[B

    iget v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mOffset:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mCount:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mCount:I

    .line 94
    iget v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mOffset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mOffset:I

    return-object v1
.end method

.method public isEnd()Z
    .registers 2

    .line 100
    iget v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isStart()Z
    .registers 3

    .line 104
    iget v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mCount:I

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mItem:[B

    array-length v1, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public next()V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mItemList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 82
    const-string v0, "ggrr9"

    const-string v1, "mCallback.onStart()...next2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->reload()V

    .line 85
    :cond_1d
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public setWriteMaxLength(I)V
    .registers 3

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->isWriteMaxLengthChanged:Z

    .line 59
    iput p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$WriteDataBuffer;->tempWriteMaxLength:I

    return-void
.end method
