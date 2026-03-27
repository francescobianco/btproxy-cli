.class final Lfreemarker/cache/MruCacheStorage$MruEntry;
.super Ljava/lang/Object;
.source "MruCacheStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/cache/MruCacheStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MruEntry"
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;

.field private next:Lfreemarker/cache/MruCacheStorage$MruEntry;

.field private prev:Lfreemarker/cache/MruCacheStorage$MruEntry;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    invoke-virtual {p0}, Lfreemarker/cache/MruCacheStorage$MruEntry;->makeHead()V

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->value:Ljava/lang/Object;

    iput-object v0, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->key:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->key:Ljava/lang/Object;

    .line 270
    iput-object p2, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getKey()Ljava/lang/Object;
    .registers 2

    .line 274
    iget-object v0, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method getPrevious()Lfreemarker/cache/MruCacheStorage$MruEntry;
    .registers 2

    .line 286
    iget-object v0, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->prev:Lfreemarker/cache/MruCacheStorage$MruEntry;

    return-object v0
.end method

.method getValue()Ljava/lang/Object;
    .registers 2

    .line 278
    iget-object v0, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method linkAfter(Lfreemarker/cache/MruCacheStorage$MruEntry;)V
    .registers 3

    .line 290
    iget-object v0, p1, Lfreemarker/cache/MruCacheStorage$MruEntry;->next:Lfreemarker/cache/MruCacheStorage$MruEntry;

    iput-object v0, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->next:Lfreemarker/cache/MruCacheStorage$MruEntry;

    .line 291
    iput-object p0, p1, Lfreemarker/cache/MruCacheStorage$MruEntry;->next:Lfreemarker/cache/MruCacheStorage$MruEntry;

    .line 292
    iput-object p1, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->prev:Lfreemarker/cache/MruCacheStorage$MruEntry;

    .line 293
    iget-object p1, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->next:Lfreemarker/cache/MruCacheStorage$MruEntry;

    iput-object p0, p1, Lfreemarker/cache/MruCacheStorage$MruEntry;->prev:Lfreemarker/cache/MruCacheStorage$MruEntry;

    return-void
.end method

.method makeHead()V
    .registers 1

    .line 304
    iput-object p0, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->next:Lfreemarker/cache/MruCacheStorage$MruEntry;

    iput-object p0, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->prev:Lfreemarker/cache/MruCacheStorage$MruEntry;

    return-void
.end method

.method setValue(Ljava/lang/Object;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->value:Ljava/lang/Object;

    return-void
.end method

.method unlink()V
    .registers 3

    .line 297
    iget-object v0, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->next:Lfreemarker/cache/MruCacheStorage$MruEntry;

    iget-object v1, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->prev:Lfreemarker/cache/MruCacheStorage$MruEntry;

    iput-object v1, v0, Lfreemarker/cache/MruCacheStorage$MruEntry;->prev:Lfreemarker/cache/MruCacheStorage$MruEntry;

    .line 298
    iget-object v1, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->prev:Lfreemarker/cache/MruCacheStorage$MruEntry;

    iput-object v0, v1, Lfreemarker/cache/MruCacheStorage$MruEntry;->next:Lfreemarker/cache/MruCacheStorage$MruEntry;

    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->prev:Lfreemarker/cache/MruCacheStorage$MruEntry;

    .line 300
    iput-object v0, p0, Lfreemarker/cache/MruCacheStorage$MruEntry;->next:Lfreemarker/cache/MruCacheStorage$MruEntry;

    return-void
.end method
