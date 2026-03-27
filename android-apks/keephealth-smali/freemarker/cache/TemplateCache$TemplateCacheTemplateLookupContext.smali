.class Lfreemarker/cache/TemplateCache$TemplateCacheTemplateLookupContext;
.super Lfreemarker/cache/TemplateLookupContext;
.source "TemplateCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/cache/TemplateCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TemplateCacheTemplateLookupContext"
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/cache/TemplateCache;


# direct methods
.method constructor <init>(Lfreemarker/cache/TemplateCache;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)V
    .registers 5

    .line 906
    iput-object p1, p0, Lfreemarker/cache/TemplateCache$TemplateCacheTemplateLookupContext;->this$0:Lfreemarker/cache/TemplateCache;

    .line 907
    # getter for: Lfreemarker/cache/TemplateCache;->localizedLookup:Z
    invoke-static {p1}, Lfreemarker/cache/TemplateCache;->access$400(Lfreemarker/cache/TemplateCache;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 p3, 0x0

    :goto_a
    invoke-direct {p0, p2, p3, p4}, Lfreemarker/cache/TemplateLookupContext;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public lookupWithAcquisitionStrategy(Ljava/lang/String;)Lfreemarker/cache/TemplateLookupResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 913
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 917
    iget-object v0, p0, Lfreemarker/cache/TemplateCache$TemplateCacheTemplateLookupContext;->this$0:Lfreemarker/cache/TemplateCache;

    # invokes: Lfreemarker/cache/TemplateCache;->lookupTemplateWithAcquisitionStrategy(Ljava/lang/String;)Lfreemarker/cache/TemplateLookupResult;
    invoke-static {v0, p1}, Lfreemarker/cache/TemplateCache;->access$500(Lfreemarker/cache/TemplateCache;Ljava/lang/String;)Lfreemarker/cache/TemplateLookupResult;

    move-result-object p1

    return-object p1

    .line 914
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-normalized name, starts with \"/\": "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lookupWithLocalizedThenAcquisitionStrategy(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/cache/TemplateLookupResult;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_7

    .line 925
    invoke-virtual {p0, p1}, Lfreemarker/cache/TemplateCache$TemplateCacheTemplateLookupContext;->lookupWithAcquisitionStrategy(Ljava/lang/String;)Lfreemarker/cache/TemplateLookupResult;

    move-result-object p1

    return-object p1

    :cond_7
    const/16 v0, 0x2e

    .line 928
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_13

    move-object v3, p1

    goto :goto_17

    .line 929
    :cond_13
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_17
    if-ne v0, v2, :cond_1c

    .line 930
    const-string v0, ""

    goto :goto_20

    :cond_1c
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 931
    :goto_20
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 932
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr p1, v5

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 933
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    :goto_44
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 936
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 937
    invoke-virtual {p0, p1}, Lfreemarker/cache/TemplateCache$TemplateCacheTemplateLookupContext;->lookupWithAcquisitionStrategy(Ljava/lang/String;)Lfreemarker/cache/TemplateLookupResult;

    move-result-object p1

    .line 938
    invoke-virtual {p1}, Lfreemarker/cache/TemplateLookupResult;->isPositive()Z

    move-result v5

    if-eqz v5, :cond_62

    return-object p1

    :cond_62
    const/16 p1, 0x5f

    .line 942
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-ne p1, v2, :cond_6f

    .line 948
    invoke-virtual {p0}, Lfreemarker/cache/TemplateCache$TemplateCacheTemplateLookupContext;->createNegativeLookupResult()Lfreemarker/cache/TemplateLookupResult;

    move-result-object p1

    return-object p1

    .line 946
    :cond_6f
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_44
.end method
