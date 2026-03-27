.class public Lfreemarker/cache/MruCacheStorage;
.super Ljava/lang/Object;
.source "MruCacheStorage.java"

# interfaces
.implements Lfreemarker/cache/CacheStorageWithGetSize;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/cache/MruCacheStorage$MruReference;,
        Lfreemarker/cache/MruCacheStorage$MruEntry;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;

.field private final refQueue:Ljava/lang/ref/ReferenceQueue;

.field private final softHead:Lfreemarker/cache/MruCacheStorage$MruEntry;

.field private softSize:I

.field private final softSizeLimit:I

.field private final strongHead:Lfreemarker/cache/MruCacheStorage$MruEntry;

.field private strongSize:I

.field private final strongSizeLimit:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lfreemarker/cache/MruCacheStorage$MruEntry;

    invoke-direct {v0}, Lfreemarker/cache/MruCacheStorage$MruEntry;-><init>()V

    iput-object v0, p0, Lfreemarker/cache/MruCacheStorage;->strongHead:Lfreemarker/cache/MruCacheStorage$MruEntry;

    .line 59
    new-instance v1, Lfreemarker/cache/MruCacheStorage$MruEntry;

    invoke-direct {v1}, Lfreemarker/cache/MruCacheStorage$MruEntry;-><init>()V

    iput-object v1, p0, Lfreemarker/cache/MruCacheStorage;->softHead:Lfreemarker/cache/MruCacheStorage$MruEntry;

    .line 61
    invoke-virtual {v1, v0}, Lfreemarker/cache/MruCacheStorage$MruEntry;->linkAfter(Lfreemarker/cache/MruCacheStorage$MruEntry;)V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/cache/MruCacheStorage;->map:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lfreemarker/cache/MruCacheStorage;->refQueue:Ljava/lang/ref/ReferenceQueue;

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lfreemarker/cache/MruCacheStorage;->strongSize:I

    .line 68
    iput v0, p0, Lfreemarker/cache/MruCacheStorage;->softSize:I

    if-ltz p1, :cond_38

    if-ltz p2, :cond_30

    .line 81
    iput p1, p0, Lfreemarker/cache/MruCacheStorage;->strongSizeLimit:I

    .line 82
    iput p2, p0, Lfreemarker/cache/MruCacheStorage;->softSizeLimit:I

    return-void

    .line 80
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "softSizeLimit < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "strongSizeLimit < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private linkAfterStrongHead(Lfreemarker/cache/MruCacheStorage$MruEntry;)V
    .registers 4

    .line 154
    iget-object v0, p0, Lfreemarker/cache/MruCacheStorage;->strongHead:Lfreemarker/cache/MruCacheStorage$MruEntry;

    invoke-virtual {p1, v0}, Lfreemarker/cache/MruCacheStorage$MruEntry;->linkAfter(Lfreemarker/cache/MruCacheStorage$MruEntry;)V

    .line 155
    iget p1, p0, Lfreemarker/cache/MruCacheStorage;->strongSize:I

    iget v0, p0, Lfreemarker/cache/MruCacheStorage;->strongSizeLimit:I

    if-ne p1, v0, :cond_53

    .line 157
    iget-object p1, p0, Lfreemarker/cache/MruCacheStorage;->softHead:Lfreemarker/cache/MruCacheStorage$MruEntry;

    invoke-virtual {p1}, Lfreemarker/cache/MruCacheStorage$MruEntry;->getPrevious()Lfreemarker/cache/MruCacheStorage$MruEntry;

    move-result-object p1

    .line 161
    iget-object v0, p0, Lfreemarker/cache/MruCacheStorage;->strongHead:Lfreemarker/cache/MruCacheStorage$MruEntry;

    if-eq p1, v0, :cond_57

    .line 162
    invoke-virtual {p1}, Lfreemarker/cache/MruCacheStorage$MruEntry;->unlink()V

    .line 163
    iget v0, p0, Lfreemarker/cache/MruCacheStorage;->softSizeLimit:I

    if-lez v0, :cond_49

    .line 164
    iget-object v0, p0, Lfreemarker/cache/MruCacheStorage;->softHead:Lfreemarker/cache/MruCacheStorage$MruEntry;

    invoke-virtual {p1, v0}, Lfreemarker/cache/MruCacheStorage$MruEntry;->linkAfter(Lfreemarker/cache/MruCacheStorage$MruEntry;)V

    .line 165
    new-instance v0, Lfreemarker/cache/MruCacheStorage$MruReference;

    iget-object v1, p0, Lfreemarker/cache/MruCacheStorage;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Lfreemarker/cache/MruCacheStorage$MruReference;-><init>(Lfreemarker/cache/MruCacheStorage$MruEntry;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {p1, v0}, Lfreemarker/cache/MruCacheStorage$MruEntry;->setValue(Ljava/lang/Object;)V

    .line 166
    iget p1, p0, Lfreemarker/cache/MruCacheStorage;->softSize:I

    iget v0, p0, Lfreemarker/cache/MruCacheStorage;->softSizeLimit:I

    if-ne p1, v0, :cond_44

    .line 168
    iget-object p1, p0, Lfreemarker/cache/MruCacheStorage;->strongHead:Lfreemarker/cache/MruCacheStorage$MruEntry;

    invoke-virtual {p1}, Lfreemarker/cache/MruCacheStorage$MruEntry;->getPrevious()Lfreemarker/cache/MruCacheStorage$MruEntry;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lfreemarker/cache/MruCacheStorage$MruEntry;->unlink()V

    .line 170
    iget-object v0, p0, Lfreemarker/cache/MruCacheStorage;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lfreemarker/cache/MruCacheStorage$MruEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    :cond_44
    add-int/lit8 p1, p1, 0x1

    .line 172
    iput p1, p0, Lfreemarker/cache/MruCacheStorage;->softSize:I

    goto :goto_57

    .line 175
    :cond_49
    iget-object v0, p0, Lfreemarker/cache/MruCacheStorage;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lfreemarker/cache/MruCacheStorage$MruEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    :cond_53
    add-int/lit8 p1, p1, 0x1

    .line 179
    iput p1, p0, Lfreemarker/cache/MruCacheStorage;->strongSize:I

    :cond_57
    :goto_57
    return-void
.end method

.method private relinkEntryAfterStrongHead(Lfreemarker/cache/MruCacheStorage$MruEntry;Ljava/lang/Object;)V
    .registers 4

    .line 135
    invoke-direct {p0, p1}, Lfreemarker/cache/MruCacheStorage;->unlinkEntryAndInspectIfSoft(Lfreemarker/cache/MruCacheStorage$MruEntry;)Z

    move-result v0

    if-eqz v0, :cond_25

    if-nez p2, :cond_25

    .line 137
    invoke-virtual {p1}, Lfreemarker/cache/MruCacheStorage$MruEntry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfreemarker/cache/MruCacheStorage$MruReference;

    .line 138
    invoke-virtual {p2}, Lfreemarker/cache/MruCacheStorage$MruReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 140
    invoke-virtual {p1, v0}, Lfreemarker/cache/MruCacheStorage$MruEntry;->setValue(Ljava/lang/Object;)V

    .line 141
    invoke-direct {p0, p1}, Lfreemarker/cache/MruCacheStorage;->linkAfterStrongHead(Lfreemarker/cache/MruCacheStorage$MruEntry;)V

    goto :goto_2d

    .line 143
    :cond_1b
    iget-object p1, p0, Lfreemarker/cache/MruCacheStorage;->map:Ljava/util/Map;

    invoke-virtual {p2}, Lfreemarker/cache/MruCacheStorage$MruReference;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_25
    if-eqz p2, :cond_2a

    .line 147
    invoke-virtual {p1, p2}, Lfreemarker/cache/MruCacheStorage$MruEntry;->setValue(Ljava/lang/Object;)V

    .line 149
    :cond_2a
    invoke-direct {p0, p1}, Lfreemarker/cache/MruCacheStorage;->linkAfterStrongHead(Lfreemarker/cache/MruCacheStorage$MruEntry;)V

    :goto_2d
    return-void
.end method

.method private removeClearedReferences()V
    .registers 2

    .line 196
    :goto_0
    iget-object v0, p0, Lfreemarker/cache/MruCacheStorage;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lfreemarker/cache/MruCacheStorage$MruReference;

    if-nez v0, :cond_b

    return-void

    .line 200
    :cond_b
    invoke-virtual {v0}, Lfreemarker/cache/MruCacheStorage$MruReference;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/cache/MruCacheStorage;->removeInternal(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private removeInternal(Ljava/lang/Object;)V
    .registers 3

    .line 119
    iget-object v0, p0, Lfreemarker/cache/MruCacheStorage;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/cache/MruCacheStorage$MruEntry;

    if-eqz p1, :cond_d

    .line 121
    invoke-direct {p0, p1}, Lfreemarker/cache/MruCacheStorage;->unlinkEntryAndInspectIfSoft(Lfreemarker/cache/MruCacheStorage$MruEntry;)Z

    :cond_d
    return-void
.end method

.method private unlinkEntryAndInspectIfSoft(Lfreemarker/cache/MruCacheStorage$MruEntry;)Z
    .registers 3

    .line 184
    invoke-virtual {p1}, Lfreemarker/cache/MruCacheStorage$MruEntry;->unlink()V

    .line 185
    invoke-virtual {p1}, Lfreemarker/cache/MruCacheStorage$MruEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lfreemarker/cache/MruCacheStorage$MruReference;

    const/4 v0, 0x1

    if-eqz p1, :cond_12

    .line 186
    iget p1, p0, Lfreemarker/cache/MruCacheStorage;->softSize:I

    sub-int/2addr p1, v0

    iput p1, p0, Lfreemarker/cache/MruCacheStorage;->softSize:I

    return v0

    .line 189
    :cond_12
    iget p1, p0, Lfreemarker/cache/MruCacheStorage;->strongSize:I

    sub-int/2addr p1, v0

    iput p1, p0, Lfreemarker/cache/MruCacheStorage;->strongSize:I

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 126
    iget-object v0, p0, Lfreemarker/cache/MruCacheStorage;->strongHead:Lfreemarker/cache/MruCacheStorage$MruEntry;

    invoke-virtual {v0}, Lfreemarker/cache/MruCacheStorage$MruEntry;->makeHead()V

    .line 127
    iget-object v0, p0, Lfreemarker/cache/MruCacheStorage;->softHead:Lfreemarker/cache/MruCacheStorage$MruEntry;

    iget-object v1, p0, Lfreemarker/cache/MruCacheStorage;->strongHead:Lfreemarker/cache/MruCacheStorage$MruEntry;

    invoke-virtual {v0, v1}, Lfreemarker/cache/MruCacheStorage$MruEntry;->linkAfter(Lfreemarker/cache/MruCacheStorage$MruEntry;)V

    .line 128
    iget-object v0, p0, Lfreemarker/cache/MruCacheStorage;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lfreemarker/cache/MruCacheStorage;->softSize:I

    iput v0, p0, Lfreemarker/cache/MruCacheStorage;->strongSize:I

    .line 131
    :goto_16
    iget-object v0, p0, Lfreemarker/cache/MruCacheStorage;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1f

    goto :goto_16

    :cond_1f
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 86
    invoke-direct {p0}, Lfreemarker/cache/MruCacheStorage;->removeClearedReferences()V

    .line 87
    iget-object v0, p0, Lfreemarker/cache/MruCacheStorage;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/cache/MruCacheStorage$MruEntry;

    const/4 v0, 0x0

    if-nez p1, :cond_f

    return-object v0

    .line 91
    :cond_f
    invoke-direct {p0, p1, v0}, Lfreemarker/cache/MruCacheStorage;->relinkEntryAfterStrongHead(Lfreemarker/cache/MruCacheStorage$MruEntry;Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p1}, Lfreemarker/cache/MruCacheStorage$MruEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 93
    instance-of v0, p1, Lfreemarker/cache/MruCacheStorage$MruReference;

    if-eqz v0, :cond_20

    .line 95
    check-cast p1, Lfreemarker/cache/MruCacheStorage$MruReference;

    invoke-virtual {p1}, Lfreemarker/cache/MruCacheStorage$MruReference;->get()Ljava/lang/Object;

    move-result-object p1

    :cond_20
    return-object p1
.end method

.method public getSize()I
    .registers 3

    .line 251
    invoke-virtual {p0}, Lfreemarker/cache/MruCacheStorage;->getSoftSize()I

    move-result v0

    invoke-virtual {p0}, Lfreemarker/cache/MruCacheStorage;->getStrongSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSoftSize()I
    .registers 2

    .line 239
    invoke-direct {p0}, Lfreemarker/cache/MruCacheStorage;->removeClearedReferences()V

    .line 240
    iget v0, p0, Lfreemarker/cache/MruCacheStorage;->softSize:I

    return v0
.end method

.method public getSoftSizeLimit()I
    .registers 2

    .line 219
    iget v0, p0, Lfreemarker/cache/MruCacheStorage;->softSizeLimit:I

    return v0
.end method

.method public getStrongSize()I
    .registers 2

    .line 229
    iget v0, p0, Lfreemarker/cache/MruCacheStorage;->strongSize:I

    return v0
.end method

.method public getStrongSizeLimit()I
    .registers 2

    .line 210
    iget v0, p0, Lfreemarker/cache/MruCacheStorage;->strongSizeLimit:I

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 101
    invoke-direct {p0}, Lfreemarker/cache/MruCacheStorage;->removeClearedReferences()V

    .line 102
    iget-object v0, p0, Lfreemarker/cache/MruCacheStorage;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/cache/MruCacheStorage$MruEntry;

    if-nez v0, :cond_1b

    .line 104
    new-instance v0, Lfreemarker/cache/MruCacheStorage$MruEntry;

    invoke-direct {v0, p1, p2}, Lfreemarker/cache/MruCacheStorage$MruEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    iget-object p2, p0, Lfreemarker/cache/MruCacheStorage;->map:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-direct {p0, v0}, Lfreemarker/cache/MruCacheStorage;->linkAfterStrongHead(Lfreemarker/cache/MruCacheStorage$MruEntry;)V

    goto :goto_1e

    .line 108
    :cond_1b
    invoke-direct {p0, v0, p2}, Lfreemarker/cache/MruCacheStorage;->relinkEntryAfterStrongHead(Lfreemarker/cache/MruCacheStorage$MruEntry;Ljava/lang/Object;)V

    :goto_1e
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 2

    .line 114
    invoke-direct {p0}, Lfreemarker/cache/MruCacheStorage;->removeClearedReferences()V

    .line 115
    invoke-direct {p0, p1}, Lfreemarker/cache/MruCacheStorage;->removeInternal(Ljava/lang/Object;)V

    return-void
.end method
