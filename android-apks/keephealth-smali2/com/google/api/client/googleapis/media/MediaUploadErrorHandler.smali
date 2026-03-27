.class Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;
.super Ljava/lang/Object;
.source "MediaUploadErrorHandler.java"

# interfaces
.implements Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;
.implements Lcom/google/api/client/http/HttpIOExceptionHandler;


# static fields
.field static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final originalIOExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

.field private final originalUnsuccessfulHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

.field private final uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/googleapis/media/MediaHttpUploader;Lcom/google/api/client/http/HttpRequest;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 53
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpRequest;->getIOExceptionHandler()Lcom/google/api/client/http/HttpIOExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->originalIOExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

    .line 54
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpRequest;->getUnsuccessfulResponseHandler()Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->originalUnsuccessfulHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    .line 56
    invoke-virtual {p2, p0}, Lcom/google/api/client/http/HttpRequest;->setIOExceptionHandler(Lcom/google/api/client/http/HttpIOExceptionHandler;)Lcom/google/api/client/http/HttpRequest;

    .line 57
    invoke-virtual {p2, p0}, Lcom/google/api/client/http/HttpRequest;->setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;

    return-void
.end method


# virtual methods
.method public handleIOException(Lcom/google/api/client/http/HttpRequest;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->originalIOExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Lcom/google/api/client/http/HttpIOExceptionHandler;->handleIOException(Lcom/google/api/client/http/HttpRequest;Z)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    if-eqz p1, :cond_1f

    .line 68
    :try_start_f
    iget-object p2, p0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    invoke-virtual {p2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->serverErrorCallback()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_1f

    :catch_15
    move-exception p2

    .line 70
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "exception thrown while calling server callback"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return p1
.end method

.method public handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->originalUnsuccessfulHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2, p3}, Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;->handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    if-eqz p1, :cond_2a

    if-eqz p3, :cond_2a

    .line 83
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result p2

    div-int/lit8 p2, p2, 0x64

    const/4 p3, 0x5

    if-ne p2, p3, :cond_2a

    .line 85
    :try_start_1a
    iget-object p2, p0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    invoke-virtual {p2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->serverErrorCallback()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_2a

    :catch_20
    move-exception p2

    .line 87
    sget-object p3, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->LOGGER:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "exception thrown while calling server callback"

    invoke-virtual {p3, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2a
    :goto_2a
    return p1
.end method
