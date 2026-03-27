.class public final Lcom/google/api/services/fitness/Fitness$Builder;
.super Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
.source "Fitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/fitness/Fitness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .registers 11

    .line 2271
    const-string v4, "fitness/v1/users/"

    const/4 v6, 0x0

    const-string v3, "https://www.googleapis.com/"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;
    .registers 2

    .line 2245
    invoke-virtual {p0}, Lcom/google/api/services/fitness/Fitness$Builder;->build()Lcom/google/api/services/fitness/Fitness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
    .registers 2

    .line 2245
    invoke-virtual {p0}, Lcom/google/api/services/fitness/Fitness$Builder;->build()Lcom/google/api/services/fitness/Fitness;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/api/services/fitness/Fitness;
    .registers 2

    .line 2283
    new-instance v0, Lcom/google/api/services/fitness/Fitness;

    invoke-direct {v0, p0}, Lcom/google/api/services/fitness/Fitness;-><init>(Lcom/google/api/services/fitness/Fitness$Builder;)V

    return-object v0
.end method

.method public bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .registers 2

    .line 2245
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .registers 2

    .line 2245
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Builder;
    .registers 2

    .line 2303
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Builder;

    return-object p1
.end method

.method public setFitnessRequestInitializer(Lcom/google/api/services/fitness/FitnessRequestInitializer;)Lcom/google/api/services/fitness/Fitness$Builder;
    .registers 2

    .line 2328
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Builder;

    return-object p1
.end method

.method public bridge synthetic setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .registers 2

    .line 2245
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/services/fitness/Fitness$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .registers 2

    .line 2245
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/services/fitness/Fitness$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/services/fitness/Fitness$Builder;
    .registers 2

    .line 2334
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Builder;

    return-object p1
.end method

.method public bridge synthetic setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .registers 2

    .line 2245
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/fitness/Fitness$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .registers 2

    .line 2245
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/fitness/Fitness$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/fitness/Fitness$Builder;
    .registers 2

    .line 2298
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Builder;

    return-object p1
.end method

.method public bridge synthetic setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .registers 2

    .line 2245
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .registers 2

    .line 2245
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRootUrl(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Builder;
    .registers 2

    .line 2288
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Builder;

    return-object p1
.end method

.method public bridge synthetic setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .registers 2

    .line 2245
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .registers 2

    .line 2245
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setServicePath(Ljava/lang/String;)Lcom/google/api/services/fitness/Fitness$Builder;
    .registers 2

    .line 2293
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Builder;

    return-object p1
.end method

.method public bridge synthetic setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .registers 2

    .line 2245
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Builder;->setSuppressAllChecks(Z)Lcom/google/api/services/fitness/Fitness$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .registers 2

    .line 2245
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Builder;->setSuppressAllChecks(Z)Lcom/google/api/services/fitness/Fitness$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSuppressAllChecks(Z)Lcom/google/api/services/fitness/Fitness$Builder;
    .registers 2

    .line 2318
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Builder;

    return-object p1
.end method

.method public bridge synthetic setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .registers 2

    .line 2245
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/services/fitness/Fitness$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .registers 2

    .line 2245
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/services/fitness/Fitness$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSuppressPatternChecks(Z)Lcom/google/api/services/fitness/Fitness$Builder;
    .registers 2

    .line 2308
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Builder;

    return-object p1
.end method

.method public bridge synthetic setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .registers 2

    .line 2245
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/fitness/Fitness$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .registers 2

    .line 2245
    invoke-virtual {p0, p1}, Lcom/google/api/services/fitness/Fitness$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/fitness/Fitness$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/fitness/Fitness$Builder;
    .registers 2

    .line 2313
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/fitness/Fitness$Builder;

    return-object p1
.end method
