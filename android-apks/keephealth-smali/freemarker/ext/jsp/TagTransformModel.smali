.class Lfreemarker/ext/jsp/TagTransformModel;
.super Lfreemarker/ext/jsp/JspTagModelBase;
.source "TagTransformModel.java"

# interfaces
.implements Lfreemarker/template/TemplateTransformModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jsp/TagTransformModel$TagWriter;,
        Lfreemarker/ext/jsp/TagTransformModel$BodyContentImpl;
    }
.end annotation


# static fields
.field private static final LOG:Lfreemarker/log/Logger;


# instance fields
.field private final isBodyTag:Z

.field private final isIterationTag:Z

.field private final isTryCatchFinally:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const-string v0, "freemarker.jsp"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/TagTransformModel;->LOG:Lfreemarker/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/jsp/JspTagModelBase;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 57
    const-class p1, Ljavax/servlet/jsp/tagext/IterationTag;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Lfreemarker/ext/jsp/TagTransformModel;->isIterationTag:Z

    if-eqz p1, :cond_17

    .line 58
    const-class p1, Ljavax/servlet/jsp/tagext/BodyTag;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    iput-boolean p1, p0, Lfreemarker/ext/jsp/TagTransformModel;->isBodyTag:Z

    .line 59
    const-class p1, Ljavax/servlet/jsp/tagext/TryCatchFinally;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Lfreemarker/ext/jsp/TagTransformModel;->isTryCatchFinally:Z

    return-void
.end method

.method static synthetic access$000(Lfreemarker/ext/jsp/TagTransformModel;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lfreemarker/ext/jsp/TagTransformModel;->isBodyTag:Z

    return p0
.end method

.method static synthetic access$100(Lfreemarker/ext/jsp/TagTransformModel;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lfreemarker/ext/jsp/TagTransformModel;->isIterationTag:Z

    return p0
.end method

.method static synthetic access$200()Lfreemarker/log/Logger;
    .registers 1

    .line 48
    sget-object v0, Lfreemarker/ext/jsp/TagTransformModel;->LOG:Lfreemarker/log/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lfreemarker/ext/jsp/TagTransformModel;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lfreemarker/ext/jsp/TagTransformModel;->isTryCatchFinally:Z

    return p0
.end method


# virtual methods
.method public getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const-string v0, "out != pageContext.getOut(). Out is "

    .line 64
    :try_start_2
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TagTransformModel;->getTagInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/servlet/jsp/tagext/Tag;

    .line 65
    invoke-static {}, Lfreemarker/ext/jsp/PageContextFactory;->getCurrentPageContext()Lfreemarker/ext/jsp/FreeMarkerPageContext;

    move-result-object v8

    .line 66
    const-class v2, Ljavax/servlet/jsp/tagext/Tag;

    invoke-virtual {v8, v2}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->peekTopTag(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/jsp/tagext/Tag;

    .line 67
    invoke-interface {v1, v2}, Ljavax/servlet/jsp/tagext/Tag;->setParent(Ljavax/servlet/jsp/tagext/Tag;)V

    .line 68
    invoke-interface {v1, v8}, Ljavax/servlet/jsp/tagext/Tag;->setPageContext(Ljavax/servlet/jsp/PageContext;)V

    .line 69
    invoke-virtual {v8}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v2

    invoke-virtual {p0, v1, p2, v2}, Lfreemarker/ext/jsp/TagTransformModel;->setupTag(Ljava/lang/Object;Ljava/util/Map;Lfreemarker/template/ObjectWrapper;)V

    .line 73
    instance-of p2, p1, Ljavax/servlet/jsp/JspWriter;

    if-eqz p2, :cond_50

    .line 76
    invoke-virtual {v8}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getOut()Ljavax/servlet/jsp/JspWriter;

    move-result-object p2

    if-ne p1, p2, :cond_2f

    const/4 p2, 0x0

    move-object v4, p1

    move v7, p2

    goto :goto_5e

    .line 77
    :cond_2f
    new-instance p2, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " pageContext.getOut() is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 80
    invoke-virtual {v8}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getOut()Ljavax/servlet/jsp/JspWriter;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 84
    :cond_50
    new-instance p2, Lfreemarker/ext/jsp/JspWriterAdapter;

    invoke-direct {p2, p1}, Lfreemarker/ext/jsp/JspWriterAdapter;-><init>(Ljava/io/Writer;)V

    .line 85
    move-object p1, p2

    check-cast p1, Ljavax/servlet/jsp/JspWriter;

    invoke-virtual {v8, p1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->pushWriter(Ljavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;

    const/4 p1, 0x1

    move v7, p1

    move-object v4, p2

    .line 88
    :goto_5e
    new-instance p1, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;

    move-object v2, p1

    move-object v3, p0

    move-object v5, v1

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Lfreemarker/ext/jsp/TagTransformModel$TagWriter;-><init>(Lfreemarker/ext/jsp/TagTransformModel;Ljava/io/Writer;Ljavax/servlet/jsp/tagext/Tag;Lfreemarker/ext/jsp/FreeMarkerPageContext;Z)V

    .line 89
    invoke-virtual {v8, v1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->pushTopTag(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v8, p1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->pushWriter(Ljavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6d} :catch_6e

    return-object p1

    :catch_6e
    move-exception p1

    .line 93
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/TagTransformModel;->toTemplateModelExceptionOrRethrow(Ljava/lang/Exception;)Lfreemarker/template/TemplateModelException;

    move-result-object p1

    throw p1
.end method
