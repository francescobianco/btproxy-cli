.class Lcom/tamic/novate/cache/CookieCacheImpl$SetCookieCacheIterator;
.super Ljava/lang/Object;
.source "CookieCacheImpl.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tamic/novate/cache/CookieCacheImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetCookieCacheIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lokhttp3/Cookie;",
        ">;"
    }
.end annotation


# instance fields
.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/tamic/novate/cache/IdentifiableCookie;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tamic/novate/cache/CookieCacheImpl;


# direct methods
.method public constructor <init>(Lcom/tamic/novate/cache/CookieCacheImpl;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/tamic/novate/cache/CookieCacheImpl$SetCookieCacheIterator;->this$0:Lcom/tamic/novate/cache/CookieCacheImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    # getter for: Lcom/tamic/novate/cache/CookieCacheImpl;->cookies:Ljava/util/Set;
    invoke-static {p1}, Lcom/tamic/novate/cache/CookieCacheImpl;->access$000(Lcom/tamic/novate/cache/CookieCacheImpl;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/cache/CookieCacheImpl$SetCookieCacheIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/tamic/novate/cache/CookieCacheImpl$SetCookieCacheIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/tamic/novate/cache/CookieCacheImpl$SetCookieCacheIterator;->next()Lokhttp3/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public next()Lokhttp3/Cookie;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/tamic/novate/cache/CookieCacheImpl$SetCookieCacheIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tamic/novate/cache/IdentifiableCookie;

    invoke-virtual {v0}, Lcom/tamic/novate/cache/IdentifiableCookie;->getCookie()Lokhttp3/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/tamic/novate/cache/CookieCacheImpl$SetCookieCacheIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
