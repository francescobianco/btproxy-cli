.class public Lfreemarker/ext/util/IdentityHashMap;
.super Ljava/util/AbstractMap;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/util/IdentityHashMap$HashIterator;,
        Lfreemarker/ext/util/IdentityHashMap$EmptyHashIterator;,
        Lfreemarker/ext/util/IdentityHashMap$Entry;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ENTRIES:I = 0x2

.field private static final KEYS:I = 0x0

.field private static final VALUES:I = 0x1

.field private static emptyHashIterator:Lfreemarker/ext/util/IdentityHashMap$EmptyHashIterator; = null

.field public static final serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field private transient count:I

.field private transient entrySet:Ljava/util/Set;

.field private transient keySet:Ljava/util/Set;

.field private loadFactor:F

.field private transient modCount:I

.field private transient table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

.field private threshold:I

.field private transient values:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 671
    new-instance v0, Lfreemarker/ext/util/IdentityHashMap$EmptyHashIterator;

    invoke-direct {v0}, Lfreemarker/ext/util/IdentityHashMap$EmptyHashIterator;-><init>()V

    sput-object v0, Lfreemarker/ext/util/IdentityHashMap;->emptyHashIterator:Lfreemarker/ext/util/IdentityHashMap$EmptyHashIterator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/16 v0, 0xb

    const/high16 v1, 0x3f400000    # 0.75f

    .line 114
    invoke-direct {p0, v0, v1}, Lfreemarker/ext/util/IdentityHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/high16 v0, 0x3f400000    # 0.75f

    .line 106
    invoke-direct {p0, p1, v0}, Lfreemarker/ext/util/IdentityHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 5

    .line 83
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    const/4 v0, 0x0

    .line 428
    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->keySet:Ljava/util/Set;

    .line 429
    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    .line 430
    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->values:Ljava/util/Collection;

    if-ltz p1, :cond_3e

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_29

    .line 87
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_29

    if-nez p1, :cond_1d

    const/4 p1, 0x1

    .line 92
    :cond_1d
    iput p2, p0, Lfreemarker/ext/util/IdentityHashMap;->loadFactor:F

    .line 93
    new-array v0, p1, [Lfreemarker/ext/util/IdentityHashMap$Entry;

    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 94
    iput p1, p0, Lfreemarker/ext/util/IdentityHashMap;->threshold:I

    return-void

    .line 88
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal Load factor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_3e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal Initial Capacity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 4

    .line 126
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xb

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lfreemarker/ext/util/IdentityHashMap;-><init>(IF)V

    .line 127
    invoke-virtual {p0, p1}, Lfreemarker/ext/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lfreemarker/ext/util/IdentityHashMap;I)Ljava/util/Iterator;
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lfreemarker/ext/util/IdentityHashMap;->getHashIterator(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lfreemarker/ext/util/IdentityHashMap;)I
    .registers 1

    .line 39
    iget p0, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    return p0
.end method

.method static synthetic access$110(Lfreemarker/ext/util/IdentityHashMap;)I
    .registers 3

    .line 39
    iget v0, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    return v0
.end method

.method static synthetic access$200(Lfreemarker/ext/util/IdentityHashMap;)[Lfreemarker/ext/util/IdentityHashMap$Entry;
    .registers 1

    .line 39
    iget-object p0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    return-object p0
.end method

.method static synthetic access$300(Lfreemarker/ext/util/IdentityHashMap;)I
    .registers 1

    .line 39
    iget p0, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    return p0
.end method

.method static synthetic access$308(Lfreemarker/ext/util/IdentityHashMap;)I
    .registers 3

    .line 39
    iget v0, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    return v0
.end method

.method private getHashIterator(I)Ljava/util/Iterator;
    .registers 3

    .line 595
    iget v0, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    if-nez v0, :cond_7

    .line 596
    sget-object p1, Lfreemarker/ext/util/IdentityHashMap;->emptyHashIterator:Lfreemarker/ext/util/IdentityHashMap$EmptyHashIterator;

    return-object p1

    .line 598
    :cond_7
    new-instance v0, Lfreemarker/ext/util/IdentityHashMap$HashIterator;

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/util/IdentityHashMap$HashIterator;-><init>(Lfreemarker/ext/util/IdentityHashMap;I)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 815
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 818
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 819
    new-array v0, v0, [Lfreemarker/ext/util/IdentityHashMap$Entry;

    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    .line 822
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    .line 826
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 827
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 828
    invoke-virtual {p0, v2, v3}, Lfreemarker/ext/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method private rehash()V
    .registers 9

    .line 239
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 243
    new-array v3, v2, [Lfreemarker/ext/util/IdentityHashMap$Entry;

    .line 245
    iget v4, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    int-to-float v4, v2

    .line 246
    iget v5, p0, Lfreemarker/ext/util/IdentityHashMap;->loadFactor:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lfreemarker/ext/util/IdentityHashMap;->threshold:I

    .line 247
    iput-object v3, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    :goto_18
    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_33

    .line 250
    aget-object v1, v0, v4

    :goto_1e
    if-eqz v1, :cond_31

    .line 252
    iget-object v5, v1, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    .line 254
    iget v6, v1, Lfreemarker/ext/util/IdentityHashMap$Entry;->hash:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    rem-int/2addr v6, v2

    .line 255
    aget-object v7, v3, v6

    iput-object v7, v1, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    .line 256
    aput-object v1, v3, v6

    move-object v1, v5

    goto :goto_1e

    :cond_31
    move v1, v4

    goto :goto_18

    :cond_33
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 788
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 791
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 794
    iget v0, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 797
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_13
    if-ltz v0, :cond_2b

    .line 798
    iget-object v1, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    aget-object v1, v1, v0

    :goto_19
    if-eqz v1, :cond_28

    .line 801
    iget-object v2, v1, Lfreemarker/ext/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 802
    iget-object v2, v1, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 803
    iget-object v1, v1, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    goto :goto_19

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_2b
    return-void
.end method


# virtual methods
.method capacity()I
    .registers 2

    .line 833
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .registers 4

    .line 393
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    .line 394
    iget v1, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    .line 395
    array-length v1, v0

    :goto_9
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_11

    const/4 v2, 0x0

    .line 396
    aput-object v2, v0, v1

    goto :goto_9

    :cond_11
    const/4 v0, 0x0

    .line 397
    iput v0, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 6

    .line 409
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/util/IdentityHashMap;

    .line 410
    iget-object v1, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    array-length v1, v1

    new-array v1, v1, [Lfreemarker/ext/util/IdentityHashMap$Entry;

    iput-object v1, v0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    .line 411
    iget-object v1, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    array-length v1, v1

    :goto_10
    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    if-lez v1, :cond_27

    .line 412
    iget-object v1, v0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    iget-object v4, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    aget-object v4, v4, v2

    if-eqz v4, :cond_23

    .line 413
    invoke-virtual {v4}, Lfreemarker/ext/util/IdentityHashMap$Entry;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/ext/util/IdentityHashMap$Entry;

    :cond_23
    aput-object v3, v1, v2

    move v1, v2

    goto :goto_10

    .line 415
    :cond_27
    iput-object v3, v0, Lfreemarker/ext/util/IdentityHashMap;->keySet:Ljava/util/Set;

    .line 416
    iput-object v3, v0, Lfreemarker/ext/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    .line 417
    iput-object v3, v0, Lfreemarker/ext/util/IdentityHashMap;->values:Ljava/util/Collection;

    const/4 v1, 0x0

    .line 418
    iput v1, v0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I
    :try_end_30
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_30} :catch_31

    return-object v0

    .line 422
    :catch_31
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 8

    .line 187
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_20

    .line 189
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v4, v3

    .line 190
    array-length v5, v0

    rem-int/2addr v4, v5

    .line 191
    aget-object v0, v0, v4

    :goto_12
    if-eqz v0, :cond_2c

    .line 192
    iget v4, v0, Lfreemarker/ext/util/IdentityHashMap$Entry;->hash:I

    if-ne v4, v3, :cond_1d

    iget-object v4, v0, Lfreemarker/ext/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    if-ne p1, v4, :cond_1d

    return v1

    .line 191
    :cond_1d
    iget-object v0, v0, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    goto :goto_12

    .line 195
    :cond_20
    aget-object p1, v0, v2

    :goto_22
    if-eqz p1, :cond_2c

    .line 196
    iget-object v0, p1, Lfreemarker/ext/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    if-nez v0, :cond_29

    return v1

    .line 195
    :cond_29
    iget-object p1, p1, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    goto :goto_22

    :cond_2c
    return v2
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 7

    .line 160
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    const/4 v1, 0x1

    if-nez p1, :cond_18

    .line 163
    array-length p1, v0

    :goto_6
    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_2f

    .line 164
    aget-object p1, v0, v2

    :goto_c
    if-eqz p1, :cond_16

    .line 165
    iget-object v3, p1, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v3, :cond_13

    return v1

    .line 164
    :cond_13
    iget-object p1, p1, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    goto :goto_c

    :cond_16
    move p1, v2

    goto :goto_6

    .line 168
    :cond_18
    array-length v2, v0

    :goto_19
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_2f

    .line 169
    aget-object v2, v0, v3

    :goto_1f
    if-eqz v2, :cond_2d

    .line 170
    iget-object v4, v2, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    return v1

    .line 169
    :cond_2a
    iget-object v2, v2, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    goto :goto_1f

    :cond_2d
    move v2, v3

    goto :goto_19

    :cond_2f
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .line 527
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 528
    new-instance v0, Lfreemarker/ext/util/IdentityHashMap$3;

    invoke-direct {v0, p0}, Lfreemarker/ext/util/IdentityHashMap$3;-><init>(Lfreemarker/ext/util/IdentityHashMap;)V

    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    .line 591
    :cond_b
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 216
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    if-eqz p1, :cond_20

    .line 219
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    .line 220
    array-length v3, v0

    rem-int/2addr v2, v3

    .line 221
    aget-object v0, v0, v2

    :goto_10
    if-eqz v0, :cond_2f

    .line 222
    iget v2, v0, Lfreemarker/ext/util/IdentityHashMap$Entry;->hash:I

    if-ne v2, v1, :cond_1d

    iget-object v2, v0, Lfreemarker/ext/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    if-ne p1, v2, :cond_1d

    .line 223
    iget-object p1, v0, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    return-object p1

    .line 221
    :cond_1d
    iget-object v0, v0, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    goto :goto_10

    :cond_20
    const/4 p1, 0x0

    .line 225
    aget-object p1, v0, p1

    :goto_23
    if-eqz p1, :cond_2f

    .line 226
    iget-object v0, p1, Lfreemarker/ext/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    if-nez v0, :cond_2c

    .line 227
    iget-object p1, p1, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    return-object p1

    .line 225
    :cond_2c
    iget-object p1, p1, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    goto :goto_23

    :cond_2f
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 147
    iget v0, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .line 445
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 446
    new-instance v0, Lfreemarker/ext/util/IdentityHashMap$1;

    invoke-direct {v0, p0}, Lfreemarker/ext/util/IdentityHashMap$1;-><init>(Lfreemarker/ext/util/IdentityHashMap;)V

    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->keySet:Ljava/util/Set;

    .line 472
    :cond_b
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method loadFactor()F
    .registers 2

    .line 837
    iget v0, p0, Lfreemarker/ext/util/IdentityHashMap;->loadFactor:F

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 276
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    const v1, 0x7fffffff

    if-eqz p1, :cond_23

    .line 281
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    and-int v3, v2, v1

    .line 282
    array-length v4, v0

    rem-int/2addr v3, v4

    .line 283
    aget-object v4, v0, v3

    :goto_11
    if-eqz v4, :cond_35

    .line 284
    iget v5, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->hash:I

    if-ne v5, v2, :cond_20

    iget-object v5, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    if-ne p1, v5, :cond_20

    .line 285
    iget-object p1, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    .line 286
    iput-object p2, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    return-object p1

    .line 283
    :cond_20
    iget-object v4, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    goto :goto_11

    :cond_23
    const/4 v2, 0x0

    .line 291
    aget-object v3, v0, v2

    :goto_26
    if-eqz v3, :cond_34

    .line 292
    iget-object v4, v3, Lfreemarker/ext/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    if-nez v4, :cond_31

    .line 293
    iget-object p1, v3, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    .line 294
    iput-object p2, v3, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    return-object p1

    .line 291
    :cond_31
    iget-object v3, v3, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    goto :goto_26

    :cond_34
    move v3, v2

    .line 300
    :cond_35
    iget v4, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    .line 301
    iget v4, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    iget v5, p0, Lfreemarker/ext/util/IdentityHashMap;->threshold:I

    if-lt v4, v5, :cond_4a

    .line 303
    invoke-direct {p0}, Lfreemarker/ext/util/IdentityHashMap;->rehash()V

    .line 305
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    and-int/2addr v1, v2

    .line 306
    array-length v3, v0

    rem-int v3, v1, v3

    .line 310
    :cond_4a
    new-instance v1, Lfreemarker/ext/util/IdentityHashMap$Entry;

    aget-object v4, v0, v3

    invoke-direct {v1, v2, p1, p2, v4}, Lfreemarker/ext/util/IdentityHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lfreemarker/ext/util/IdentityHashMap$Entry;)V

    .line 311
    aput-object v1, v0, v3

    .line 312
    iget p1, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4

    .line 381
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 382
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 383
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 384
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lfreemarker/ext/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_20
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 327
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->table:[Lfreemarker/ext/util/IdentityHashMap$Entry;

    const/4 v1, 0x0

    if-eqz p1, :cond_3e

    .line 330
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v3, v2

    .line 331
    array-length v4, v0

    rem-int/2addr v3, v4

    .line 333
    aget-object v4, v0, v3

    move-object v5, v1

    :goto_12
    if-eqz v4, :cond_6a

    .line 336
    iget v6, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->hash:I

    if-ne v6, v2, :cond_38

    iget-object v6, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    if-ne p1, v6, :cond_38

    .line 337
    iget p1, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    if-eqz v5, :cond_29

    .line 339
    iget-object p1, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    iput-object p1, v5, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    goto :goto_2d

    .line 341
    :cond_29
    iget-object p1, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    aput-object p1, v0, v3

    .line 343
    :goto_2d
    iget p1, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    .line 344
    iget-object p1, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    .line 345
    iput-object v1, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    return-object p1

    .line 335
    :cond_38
    iget-object v5, v4, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    goto :goto_12

    :cond_3e
    const/4 p1, 0x0

    .line 350
    aget-object v2, v0, p1

    move-object v3, v1

    :goto_42
    if-eqz v2, :cond_6a

    .line 353
    iget-object v4, v2, Lfreemarker/ext/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    if-nez v4, :cond_64

    .line 354
    iget v4, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lfreemarker/ext/util/IdentityHashMap;->modCount:I

    if-eqz v3, :cond_55

    .line 356
    iget-object p1, v2, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    iput-object p1, v3, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    goto :goto_59

    .line 358
    :cond_55
    iget-object v3, v2, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    aput-object v3, v0, p1

    .line 360
    :goto_59
    iget p1, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    .line 361
    iget-object p1, v2, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    .line 362
    iput-object v1, v2, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    return-object p1

    .line 352
    :cond_64
    iget-object v3, v2, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_42

    :cond_6a
    return-object v1
.end method

.method public size()I
    .registers 2

    .line 137
    iget v0, p0, Lfreemarker/ext/util/IdentityHashMap;->count:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .line 488
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_b

    .line 489
    new-instance v0, Lfreemarker/ext/util/IdentityHashMap$2;

    invoke-direct {v0, p0}, Lfreemarker/ext/util/IdentityHashMap$2;-><init>(Lfreemarker/ext/util/IdentityHashMap;)V

    iput-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->values:Ljava/util/Collection;

    .line 509
    :cond_b
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap;->values:Ljava/util/Collection;

    return-object v0
.end method
