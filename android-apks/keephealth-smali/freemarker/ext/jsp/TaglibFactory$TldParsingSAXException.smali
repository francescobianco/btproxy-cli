.class Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;
.super Lorg/xml/sax/SAXParseException;
.source "TaglibFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TaglibFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TldParsingSAXException"
.end annotation


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V
    .registers 4

    const/4 v0, 0x0

    .line 1878
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Throwable;)V
    .registers 6

    .line 1882
    instance-of v0, p3, Ljava/lang/Exception;

    if-eqz v0, :cond_8

    move-object v0, p3

    check-cast v0, Ljava/lang/Exception;

    goto :goto_f

    :cond_8
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unchecked exception; see cause"

    invoke-direct {v0, v1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f
    invoke-direct {p0, p1, p2, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    .line 1884
    iput-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .line 1936
    invoke-super {p0}, Lorg/xml/sax/SAXParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1937
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;->cause:Ljava/lang/Throwable;

    :cond_8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1890
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1893
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1894
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;->getPublicId()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_22

    if-eqz v3, :cond_3f

    .line 1896
    :cond_22
    const-string v4, "In "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2c

    .line 1898
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    if-eqz v3, :cond_3f

    if-eqz v2, :cond_35

    .line 1902
    const-string v4, " (public ID: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1904
    :cond_35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3f

    const/16 v2, 0x29

    .line 1906
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1911
    :cond_3f
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;->getLineNumber()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6a

    .line 1913
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eq v4, v1, :cond_4f

    const-string v4, ", at "

    goto :goto_51

    :cond_4f
    const-string v4, "At "

    :goto_51
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    const-string v4, "line "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1916
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;->getColumnNumber()I

    move-result v2

    if-eq v2, v3, :cond_6a

    .line 1918
    const-string v3, ", column "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1923
    :cond_6a
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7e

    .line 1925
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v3, v1, :cond_7b

    .line 1926
    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    :cond_7b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1931
    :cond_7e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
