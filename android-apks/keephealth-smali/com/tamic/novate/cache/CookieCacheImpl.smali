.class public Lcom/tamic/novate/cache/CookieCacheImpl;
.super Ljava/lang/Object;
.source "CookieCacheImpl.java"

# interfaces
.implements Lcom/tamic/novate/cache/CookieCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tamic/novate/cache/CookieCacheImpl$SetCookieCacheIterator;
    }
.end annotation


# instance fields
.field private cookies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tamic/novate/cache/IdentifiableCookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tamic/novate/cache/CookieCacheImpl;->cookies:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/tamic/novate/cache/CookieCacheImpl;)Ljava/util/Set;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/tamic/novate/cache/CookieCacheImpl;->cookies:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-static {p1}, Lcom/tamic/novate/cache/IdentifiableCookie;->decorateAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tamic/novate/cache/IdentifiableCookie;

    .line 40
    iget-object v1, p0, Lcom/tamic/novate/cache/CookieCacheImpl;->cookies:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 41
    iget-object v1, p0, Lcom/tamic/novate/cache/CookieCacheImpl;->cookies:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1f
    return-void
.end method

.method public clear()V
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/tamic/novate/cache/CookieCacheImpl;->cookies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/tamic/novate/cache/CookieCacheImpl$SetCookieCacheIterator;

    invoke-direct {v0, p0}, Lcom/tamic/novate/cache/CookieCacheImpl$SetCookieCacheIterator;-><init>(Lcom/tamic/novate/cache/CookieCacheImpl;)V

    return-object v0
.end method
