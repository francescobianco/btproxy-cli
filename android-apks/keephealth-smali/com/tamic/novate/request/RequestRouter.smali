.class public Lcom/tamic/novate/request/RequestRouter;
.super Lcom/tamic/novate/RxRouter;
.source "RequestRouter.java"


# instance fields
.field private contentType:Lcom/tamic/novate/ContentType;

.field private requestBody:Lcom/tamic/novate/request/NovateRequestBody;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/tamic/novate/RxRouter;-><init>()V

    return-void
.end method
