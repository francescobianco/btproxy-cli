.class Lfreemarker/ext/jsp/SimpleTagDirectiveModel;
.super Lfreemarker/ext/jsp/JspTagModelBase;
.source "SimpleTagDirectiveModel.java"

# interfaces
.implements Lfreemarker/template/TemplateDirectiveModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jsp/SimpleTagDirectiveModel$TemplateExceptionWrapperJspException;
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/jsp/JspTagModelBase;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 47
    const-class p1, Ljavax/servlet/jsp/tagext/SimpleTag;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    .line 48
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " does not implement either the "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-class v0, Ljavax/servlet/jsp/tagext/Tag;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " interface or the "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-class v0, Ljavax/servlet/jsp/tagext/SimpleTag;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " interface."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute(Lfreemarker/core/Environment;Ljava/util/Map;[Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateDirectiveBody;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lfreemarker/ext/jsp/SimpleTagDirectiveModel;->getTagInstance()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/servlet/jsp/tagext/SimpleTag;

    .line 60
    invoke-static {}, Lfreemarker/ext/jsp/PageContextFactory;->getCurrentPageContext()Lfreemarker/ext/jsp/FreeMarkerPageContext;

    move-result-object v0

    .line 61
    new-instance v1, Lfreemarker/ext/jsp/JspWriterAdapter;

    invoke-virtual {p1}, Lfreemarker/core/Environment;->getOut()Ljava/io/Writer;

    move-result-object p1

    invoke-direct {v1, p1}, Lfreemarker/ext/jsp/JspWriterAdapter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->pushWriter(Ljavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;
    :try_end_16
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_16} :catch_58
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_52

    .line 63
    :try_start_16
    invoke-interface {p3, v0}, Ljavax/servlet/jsp/tagext/SimpleTag;->setJspContext(Ljavax/servlet/jsp/JspContext;)V

    .line 64
    const-class p1, Ljavax/servlet/jsp/tagext/JspTag;

    invoke-virtual {v0, p1}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->peekTopTag(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/servlet/jsp/tagext/JspTag;

    if-eqz p1, :cond_26

    .line 66
    invoke-interface {p3, p1}, Ljavax/servlet/jsp/tagext/SimpleTag;->setParent(Ljavax/servlet/jsp/tagext/JspTag;)V

    .line 68
    :cond_26
    invoke-virtual {v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object p1

    invoke-virtual {p0, p3, p2, p1}, Lfreemarker/ext/jsp/SimpleTagDirectiveModel;->setupTag(Ljava/lang/Object;Ljava/util/Map;Lfreemarker/template/ObjectWrapper;)V

    if-eqz p4, :cond_46

    .line 70
    new-instance p1, Lfreemarker/ext/jsp/SimpleTagDirectiveModel$1;

    invoke-direct {p1, p0, v0, p4}, Lfreemarker/ext/jsp/SimpleTagDirectiveModel$1;-><init>(Lfreemarker/ext/jsp/SimpleTagDirectiveModel;Lfreemarker/ext/jsp/FreeMarkerPageContext;Lfreemarker/template/TemplateDirectiveBody;)V

    invoke-interface {p3, p1}, Ljavax/servlet/jsp/tagext/SimpleTag;->setJspBody(Ljavax/servlet/jsp/tagext/JspFragment;)V

    .line 85
    invoke-virtual {v0, p3}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->pushTopTag(Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_16 .. :try_end_3a} :catchall_4d

    .line 87
    :try_start_3a
    invoke-interface {p3}, Ljavax/servlet/jsp/tagext/SimpleTag;->doTag()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_41

    .line 89
    :try_start_3d
    invoke-virtual {v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->popTopTag()V

    goto :goto_49

    :catchall_41
    move-exception p1

    invoke-virtual {v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->popTopTag()V

    .line 90
    throw p1

    .line 92
    :cond_46
    invoke-interface {p3}, Ljavax/servlet/jsp/tagext/SimpleTag;->doTag()V
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_4d

    .line 95
    :goto_49
    :try_start_49
    invoke-virtual {v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->popWriter()V

    return-void

    :catchall_4d
    move-exception p1

    invoke-virtual {v0}, Lfreemarker/ext/jsp/FreeMarkerPageContext;->popWriter()V

    .line 96
    throw p1
    :try_end_52
    .catch Lfreemarker/template/TemplateException; {:try_start_49 .. :try_end_52} :catch_58
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_52} :catch_52

    :catch_52
    move-exception p1

    .line 100
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/SimpleTagDirectiveModel;->toTemplateModelExceptionOrRethrow(Ljava/lang/Exception;)Lfreemarker/template/TemplateModelException;

    move-result-object p1

    throw p1

    :catch_58
    move-exception p1

    .line 98
    throw p1
.end method
