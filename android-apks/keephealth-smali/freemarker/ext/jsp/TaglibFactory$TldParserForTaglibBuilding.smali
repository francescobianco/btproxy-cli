.class final Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TaglibFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TaglibFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TldParserForTaglibBuilding"
.end annotation


# static fields
.field private static final E_FUNCTION:Ljava/lang/String; = "function"

.field private static final E_FUNCTION_CLASS:Ljava/lang/String; = "function-class"

.field private static final E_FUNCTION_SIGNATURE:Ljava/lang/String; = "function-signature"

.field private static final E_LISTENER:Ljava/lang/String; = "listener"

.field private static final E_LISTENER_CLASS:Ljava/lang/String; = "listener-class"

.field private static final E_NAME:Ljava/lang/String; = "name"

.field private static final E_TAG:Ljava/lang/String; = "tag"

.field private static final E_TAG_CLASS:Ljava/lang/String; = "tag-class"

.field private static final E_TAG_CLASS_LEGACY:Ljava/lang/String; = "tagclass"


# instance fields
.field private final beansWrapper:Lfreemarker/ext/beans/BeansWrapper;

.field private cDataCollector:Ljava/lang/StringBuilder;

.field private functionClassCData:Ljava/lang/String;

.field private functionNameCData:Ljava/lang/String;

.field private functionSignatureCData:Ljava/lang/String;

.field private listenerClassCData:Ljava/lang/String;

.field private final listeners:Ljava/util/List;

.field private locator:Lorg/xml/sax/Locator;

.field private stack:Ljava/util/Stack;

.field private tagClassCData:Ljava/lang/String;

.field private tagNameCData:Ljava/lang/String;

.field private final tagsAndFunctions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lfreemarker/template/TemplateModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lfreemarker/template/ObjectWrapper;)V
    .registers 5

    .line 1628
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 1613
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagsAndFunctions:Ljava/util/Map;

    .line 1614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->listeners:Ljava/util/List;

    .line 1619
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->stack:Ljava/util/Stack;

    .line 1629
    instance-of v0, p1, Lfreemarker/ext/beans/BeansWrapper;

    if-eqz v0, :cond_21

    .line 1630
    check-cast p1, Lfreemarker/ext/beans/BeansWrapper;

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->beansWrapper:Lfreemarker/ext/beans/BeansWrapper;

    goto :goto_64

    :cond_21
    const/4 v0, 0x0

    .line 1632
    iput-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->beansWrapper:Lfreemarker/ext/beans/BeansWrapper;

    .line 1633
    # getter for: Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->access$1000()Lfreemarker/log/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/log/Logger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1634
    # getter for: Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->access$1000()Lfreemarker/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Custom EL functions won\'t be loaded because "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_3e

    const-string p1, "no ObjectWrapper was specified for the TaglibFactory (via TaglibFactory.setObjectWrapper(...), exists since 2.3.22)"

    goto :goto_53

    :cond_3e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "the ObjectWrapper wasn\'t instance of "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lfreemarker/ext/beans/BeansWrapper;

    .line 1638
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1634
    invoke-virtual {v0, p1}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;)V

    :cond_64
    :goto_64
    return-void
.end method

.method private checkChildElementNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;
        }
    .end annotation

    if-eqz p3, :cond_3

    return-void

    .line 1816
    :cond_3
    new-instance p3, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Missing required \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\" element inside the \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" element."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->locator:Lorg/xml/sax/Locator;

    invoke-direct {p3, p1, p2}, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p3
.end method

.method private newTLDEntryClassLoadingException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;
        }
    .end annotation

    const/16 v0, 0x2e

    .line 1836
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    add-int/lit8 v1, v1, -0x1

    .line 1838
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    :cond_f
    if-eq v1, v2, :cond_24

    .line 1841
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-le v0, v1, :cond_24

    .line 1842
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    .line 1843
    :goto_25
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v3, p1, Ljava/lang/ClassNotFoundException;

    if-eqz v3, :cond_33

    const-string v3, "Not found class "

    goto :goto_35

    :cond_33
    const-string v3, "Can\'t load class "

    :goto_35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1845
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ""

    if-eqz p4, :cond_63

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1846
    invoke-static {p4}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_64

    :cond_63
    move-object p4, p3

    :goto_64
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "."

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz v2, :cond_72

    const-string p3, " Hint: Before nested classes, use \"$\", not \".\"."

    :cond_72
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->locator:Lorg/xml/sax/Locator;

    invoke-direct {v0, p2, p3, p1}, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private pullCData()Ljava/lang/String;
    .registers 3

    .line 1808
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->cDataCollector:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1809
    iput-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->cDataCollector:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private resoveClassFromTLD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;
        }
    .end annotation

    .line 1825
    :try_start_0
    invoke-static {p1}, Lfreemarker/template/utility/ClassUtil;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_4} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception v0

    .line 1829
    invoke-direct {p0, v0, p1, p2, p3}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->newTLDEntryClassLoadingException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;

    move-result-object p1

    throw p1

    :catch_b
    move-exception v0

    .line 1827
    invoke-direct {p0, v0, p1, p2, p3}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->newTLDEntryClassLoadingException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public characters([CII)V
    .registers 5

    .line 1671
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->cDataCollector:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    .line 1672
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_7
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;
        }
    .end annotation

    .line 1678
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_268

    .line 1682
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    const/4 p2, 0x3

    const-string v0, "function-signature"

    const-string v1, "function-class"

    const-string v2, "listener-class"

    const-string v3, "tag-class"

    const-string v4, "function"

    const-string v5, "tag"

    const-string v6, "name"

    if-ne p1, p2, :cond_93

    .line 1683
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 1684
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->stack:Ljava/util/Stack;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 1685
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->pullCData()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagNameCData:Ljava/lang/String;

    goto/16 :goto_262

    .line 1686
    :cond_3e
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->stack:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_262

    .line 1687
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->pullCData()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->functionNameCData:Ljava/lang/String;

    goto/16 :goto_262

    .line 1689
    :cond_52
    const-string p1, "tagclass"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8b

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    goto :goto_8b

    .line 1691
    :cond_61
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 1692
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->pullCData()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->listenerClassCData:Ljava/lang/String;

    goto/16 :goto_262

    .line 1693
    :cond_6f
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 1694
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->pullCData()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->functionClassCData:Ljava/lang/String;

    goto/16 :goto_262

    .line 1695
    :cond_7d
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_262

    .line 1696
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->pullCData()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->functionSignatureCData:Ljava/lang/String;

    goto/16 :goto_262

    .line 1690
    :cond_8b
    :goto_8b
    invoke-direct {p0}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->pullCData()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagClassCData:Ljava/lang/String;

    goto/16 :goto_262

    .line 1698
    :cond_93
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_262

    .line 1699
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "; keeping only the last one."

    const/4 v5, 0x0

    if-eqz p1, :cond_130

    .line 1700
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagNameCData:Ljava/lang/String;

    invoke-direct {p0, p3, v6, p1}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->checkChildElementNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagClassCData:Ljava/lang/String;

    invoke-direct {p0, p3, v3, p1}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->checkChildElementNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagClassCData:Ljava/lang/String;

    const-string p3, "custom tag"

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagNameCData:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->resoveClassFromTLD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 1707
    :try_start_b9
    const-class p3, Ljavax/servlet/jsp/tagext/Tag;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_c9

    .line 1708
    new-instance p3, Lfreemarker/ext/jsp/TagTransformModel;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagNameCData:Ljava/lang/String;

    invoke-direct {p3, v0, p1}, Lfreemarker/ext/jsp/TagTransformModel;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_d0

    .line 1710
    :cond_c9
    new-instance p3, Lfreemarker/ext/jsp/SimpleTagDirectiveModel;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagNameCData:Ljava/lang/String;

    invoke-direct {p3, v0, p1}, Lfreemarker/ext/jsp/SimpleTagDirectiveModel;-><init>(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_d0
    .catch Ljava/beans/IntrospectionException; {:try_start_b9 .. :try_end_d0} :catch_116

    .line 1719
    :goto_d0
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagsAndFunctions:Ljava/util/Map;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagNameCData:Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    if-eqz p1, :cond_110

    .line 1721
    invoke-static {p1}, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner;->canBeCombinedAsELFunction(Lfreemarker/template/TemplateModel;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 1722
    iget-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagsAndFunctions:Ljava/util/Map;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagNameCData:Ljava/lang/String;

    check-cast p1, Lfreemarker/template/TemplateMethodModelEx;

    invoke-static {p3, p1}, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner;->combine(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateMethodModelEx;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_110

    .line 1725
    :cond_f0
    # getter for: Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->access$1000()Lfreemarker/log/Logger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "TLD contains multiple tags with name "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagNameCData:Ljava/lang/String;

    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;)V

    .line 1730
    :cond_110
    :goto_110
    iput-object v5, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagNameCData:Ljava/lang/String;

    .line 1731
    iput-object v5, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagClassCData:Ljava/lang/String;

    goto/16 :goto_262

    :catch_116
    move-exception p1

    .line 1713
    new-instance p2, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "JavaBean introspection failed on custom tag class "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagClassCData:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->locator:Lorg/xml/sax/Locator;

    invoke-direct {p2, p3, v0, p1}, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Throwable;)V

    throw p2

    .line 1732
    :cond_130
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_229

    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->beansWrapper:Lfreemarker/ext/beans/BeansWrapper;

    if-eqz p1, :cond_229

    .line 1733
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->functionClassCData:Ljava/lang/String;

    invoke-direct {p0, p3, v1, p1}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->checkChildElementNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->functionSignatureCData:Ljava/lang/String;

    invoke-direct {p0, p3, v0, p1}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->checkChildElementNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->functionNameCData:Ljava/lang/String;

    invoke-direct {p0, p3, v6, p1}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->checkChildElementNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->functionClassCData:Ljava/lang/String;

    const-string p3, "custom EL function"

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->functionNameCData:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->resoveClassFromTLD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 1742
    :try_start_153
    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->functionSignatureCData:Ljava/lang/String;

    invoke-static {p1, p3}, Lfreemarker/ext/jsp/TaglibMethodUtil;->getMethodByFunctionSignature(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_159} :catch_1e3

    .line 1753
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p3

    .line 1754
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_1cc

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p3

    if-eqz p3, :cond_1cc

    .line 1762
    :try_start_169
    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->beansWrapper:Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {p3, v5, p1}, Lfreemarker/ext/beans/BeansWrapper;->wrap(Ljava/lang/Object;Ljava/lang/reflect/Method;)Lfreemarker/template/TemplateMethodModelEx;

    move-result-object p1
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_16f} :catch_1b5

    .line 1769
    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagsAndFunctions:Ljava/util/Map;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->functionNameCData:Ljava/lang/String;

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lfreemarker/template/TemplateModel;

    if-eqz p3, :cond_1ad

    .line 1771
    invoke-static {p3}, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner;->canBeCombinedAsCustomTag(Lfreemarker/template/TemplateModel;)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 1772
    iget-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagsAndFunctions:Ljava/util/Map;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->functionNameCData:Ljava/lang/String;

    invoke-static {p3, p1}, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner;->combine(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateMethodModelEx;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ad

    .line 1775
    :cond_18d
    # getter for: Lfreemarker/ext/jsp/TaglibFactory;->LOG:Lfreemarker/log/Logger;
    invoke-static {}, Lfreemarker/ext/jsp/TaglibFactory;->access$1000()Lfreemarker/log/Logger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "TLD contains multiple functions with name "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->functionNameCData:Ljava/lang/String;

    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;)V

    .line 1780
    :cond_1ad
    :goto_1ad
    iput-object v5, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->functionNameCData:Ljava/lang/String;

    .line 1781
    iput-object v5, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->functionClassCData:Ljava/lang/String;

    .line 1782
    iput-object v5, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->functionSignatureCData:Ljava/lang/String;

    goto/16 :goto_262

    .line 1764
    :catch_1b5
    new-instance p2, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "FreeMarker object wrapping failed on method : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->locator:Lorg/xml/sax/Locator;

    invoke-direct {p2, p1, p3}, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p2

    .line 1755
    :cond_1cc
    new-instance p2, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "The custom EL function method must be public and static: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->locator:Lorg/xml/sax/Locator;

    invoke-direct {p2, p1, p3}, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p2

    :catch_1e3
    move-exception p2

    .line 1745
    new-instance p3, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while trying to resolve signature "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->functionSignatureCData:Ljava/lang/String;

    .line 1746
    invoke-static {v1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1747
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " for custom EL function "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->functionNameCData:Ljava/lang/String;

    .line 1748
    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->locator:Lorg/xml/sax/Locator;

    invoke-direct {p3, p1, v0, p2}, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Throwable;)V

    throw p3

    .line 1783
    :cond_229
    const-string p1, "listener"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_262

    .line 1784
    iget-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->listenerClassCData:Ljava/lang/String;

    invoke-direct {p0, p3, v2, p2}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->checkChildElementNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    iget-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->listenerClassCData:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v5}, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->resoveClassFromTLD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 1790
    :try_start_23c
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_240
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_240} :catch_248

    .line 1798
    iget-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->listeners:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1800
    iput-object v5, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->listenerClassCData:Ljava/lang/String;

    goto :goto_262

    :catch_248
    move-exception p1

    .line 1792
    new-instance p2, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to create new instantiate from listener class "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->listenerClassCData:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->locator:Lorg/xml/sax/Locator;

    invoke-direct {p2, p3, v0, p1}, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Throwable;)V

    throw p2

    .line 1804
    :cond_262
    :goto_262
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void

    .line 1679
    :cond_268
    new-instance p1, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unbalanced tag nesting at \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\" end-tag."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->locator:Lorg/xml/sax/Locator;

    invoke-direct {p1, p2, p3}, Lfreemarker/ext/jsp/TaglibFactory$TldParsingSAXException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p1
.end method

.method getListeners()Ljava/util/List;
    .registers 2

    .line 1649
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->listeners:Ljava/util/List;

    return-object v0
.end method

.method getTagsAndFunctions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lfreemarker/template/TemplateModel;",
            ">;"
        }
    .end annotation

    .line 1645
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->tagsAndFunctions:Ljava/util/Map;

    return-object v0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2

    .line 1654
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5

    .line 1659
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->stack:Ljava/util/Stack;

    invoke-virtual {p1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_45

    .line 1661
    const-string p1, "name"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    const-string p1, "tagclass"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    const-string p1, "tag-class"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    const-string p1, "listener-class"

    .line 1662
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    const-string p1, "function-class"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    const-string p1, "function-signature"

    .line 1663
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 1664
    :cond_3e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$TldParserForTaglibBuilding;->cDataCollector:Ljava/lang/StringBuilder;

    :cond_45
    return-void
.end method
