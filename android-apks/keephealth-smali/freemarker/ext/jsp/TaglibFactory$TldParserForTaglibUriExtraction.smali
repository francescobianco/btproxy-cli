.class Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibUriExtraction;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TaglibFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TaglibFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TldParserForTaglibUriExtraction"
.end annotation


# static fields
.field private static final E_URI:Ljava/lang/String; = "uri"


# instance fields
.field private cDataCollector:Ljava/lang/StringBuilder;

.field private uri:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1564
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5

    .line 1584
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibUriExtraction;->cDataCollector:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    .line 1585
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_7
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1591
    const-string p1, "uri"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1592
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibUriExtraction;->cDataCollector:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibUriExtraction;->uri:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1593
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibUriExtraction;->cDataCollector:Ljava/lang/StringBuilder;

    :cond_17
    return-void
.end method

.method getTaglibUri()Ljava/lang/String;
    .registers 2

    .line 1568
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibUriExtraction;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5

    .line 1577
    const-string p1, "uri"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1578
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibUriExtraction;->cDataCollector:Ljava/lang/StringBuilder;

    :cond_f
    return-void
.end method
