.class public Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;
.super Ljava/lang/Object;
.source "DataBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadDataBuffer"
.end annotation


# instance fields
.field mBuffer:[B

.field mBufferCount:I

.field final mConditionEmpty:Ljava/util/concurrent/locks/Condition;

.field mCount:I

.field mItem:[B

.field mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field final mLock:Ljava/util/concurrent/locks/Lock;

.field mOffset:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 110
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mConditionEmpty:Ljava/util/concurrent/locks/Condition;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mItemList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 113
    iput-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mItem:[B

    const/4 v2, 0x0

    .line 114
    iput v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mCount:I

    .line 115
    iput v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mOffset:I

    .line 117
    iput-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mBuffer:[B

    .line 118
    iput v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mBufferCount:I

    .line 121
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private add()V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mItemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mBuffer:[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mConditionEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 192
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method private reload()Z
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mItemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mItem:[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_21

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mItem:[B

    .line 128
    array-length v0, v0

    iput v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mCount:I

    .line 129
    iput v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mOffset:I

    const/4 v0, 0x1

    return v0

    :cond_21
    return v1
.end method


# virtual methods
.method public add(I)V
    .registers 2

    .line 175
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mBuffer:[B

    const/4 p1, 0x0

    .line 176
    iput p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mBufferCount:I

    return-void
.end method

.method public read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    move v1, p3

    move v2, v0

    .line 147
    :cond_8
    :try_start_8
    iget v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mCount:I

    add-int v4, v1, p2

    if-ge v3, v4, :cond_2d

    sub-int v4, v3, p2

    if-lez v4, :cond_1e

    .line 150
    iget-object v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mItem:[B

    iget v5, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mOffset:I

    add-int/2addr v5, p2

    invoke-static {v3, v5, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    sub-int/2addr v1, v4

    move p2, v0

    goto :goto_21

    :cond_1e
    if-lez v3, :cond_21

    sub-int/2addr p2, v3

    .line 159
    :cond_21
    :goto_21
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->reload()Z

    move-result v3

    if-nez v3, :cond_8

    .line 160
    iget-object v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mConditionEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_21

    .line 164
    :cond_2d
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mItem:[B

    iget v3, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mOffset:I

    add-int/2addr v3, p2

    invoke-static {v0, v3, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mOffset:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mOffset:I

    .line 166
    iget p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mCount:I
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_45

    .line 168
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p3

    :catchall_45
    move-exception p1

    iget-object p2, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 169
    throw p1
.end method

.method public write([B)V
    .registers 6

    .line 180
    array-length v0, p1

    .line 181
    iget-object v1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mBuffer:[B

    iget v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mBufferCount:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mBufferCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mBufferCount:I

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->mBuffer:[B

    array-length v0, v0

    if-lt p1, v0, :cond_16

    .line 184
    invoke-direct {p0}, Lcom/keephealth/android/twootablue/ibluz/device/DataBuffer$ReadDataBuffer;->add()V

    :cond_16
    return-void
.end method
