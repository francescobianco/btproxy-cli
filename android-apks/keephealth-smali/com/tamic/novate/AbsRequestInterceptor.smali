.class public abstract Lcom/tamic/novate/AbsRequestInterceptor;
.super Ljava/lang/Object;
.source "AbsRequestInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tamic/novate/AbsRequestInterceptor$Type;
    }
.end annotation


# instance fields
.field public control:Lcom/tamic/novate/AbsRequestInterceptor$Type;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getControlType()Lcom/tamic/novate/AbsRequestInterceptor$Type;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/tamic/novate/AbsRequestInterceptor;->control:Lcom/tamic/novate/AbsRequestInterceptor$Type;

    return-object v0
.end method

.method abstract interceptor(Lokhttp3/Request;)Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public setControlType(Lcom/tamic/novate/AbsRequestInterceptor$Type;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/tamic/novate/AbsRequestInterceptor;->control:Lcom/tamic/novate/AbsRequestInterceptor$Type;

    return-void
.end method
