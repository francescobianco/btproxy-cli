.class public Lfreemarker/ext/servlet/IncludePage;
.super Ljava/lang/Object;
.source "IncludePage.java"

# interfaces
.implements Lfreemarker/template/TemplateDirectiveModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/servlet/IncludePage$CustomParamsRequest;
    }
.end annotation


# instance fields
.field private final request:Ljavax/servlet/http/HttpServletRequest;

.field private final response:Ljavax/servlet/http/HttpServletResponse;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lfreemarker/ext/servlet/IncludePage;->request:Ljavax/servlet/http/HttpServletRequest;

    .line 68
    iput-object p2, p0, Lfreemarker/ext/servlet/IncludePage;->response:Ljavax/servlet/http/HttpServletResponse;

    return-void
.end method


# virtual methods
.method public execute(Lfreemarker/core/Environment;Ljava/util/Map;[Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateDirectiveBody;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const-string p3, "path"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lfreemarker/template/TemplateModel;

    if-eqz p3, :cond_cd

    .line 79
    instance-of p4, p3, Lfreemarker/template/TemplateScalarModel;

    if-eqz p4, :cond_bc

    .line 83
    check-cast p3, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p3}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_b4

    .line 92
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getOut()Ljava/io/Writer;

    move-result-object p4

    .line 94
    iget-object v0, p0, Lfreemarker/ext/servlet/IncludePage;->response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-ne p4, v0, :cond_25

    .line 97
    iget-object p4, p0, Lfreemarker/ext/servlet/IncludePage;->response:Ljavax/servlet/http/HttpServletResponse;

    goto :goto_3a

    .line 99
    :cond_25
    instance-of v0, p4, Ljava/io/PrintWriter;

    if-eqz v0, :cond_2c

    check-cast p4, Ljava/io/PrintWriter;

    goto :goto_32

    :cond_2c
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object p4, v0

    .line 105
    :goto_32
    new-instance v0, Lfreemarker/ext/servlet/IncludePage$1;

    iget-object v1, p0, Lfreemarker/ext/servlet/IncludePage;->response:Ljavax/servlet/http/HttpServletResponse;

    invoke-direct {v0, p0, v1, p4}, Lfreemarker/ext/servlet/IncludePage$1;-><init>(Lfreemarker/ext/servlet/IncludePage;Ljavax/servlet/http/HttpServletResponse;Ljava/io/PrintWriter;)V

    move-object p4, v0

    .line 115
    :goto_3a
    const-string v0, "inherit_params"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateModel;

    if-nez v0, :cond_46

    const/4 v0, 0x1

    goto :goto_50

    .line 120
    :cond_46
    instance-of v1, v0, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v1, :cond_9e

    .line 125
    check-cast v0, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v0

    .line 129
    :goto_50
    const-string v1, "params"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfreemarker/template/TemplateModel;

    if-nez p2, :cond_5f

    if-eqz v0, :cond_5f

    .line 136
    iget-object p2, p0, Lfreemarker/ext/servlet/IncludePage;->request:Ljavax/servlet/http/HttpServletRequest;

    goto :goto_8d

    :cond_5f
    if-eqz p2, :cond_82

    .line 142
    invoke-static {p2}, Lfreemarker/template/utility/DeepUnwrap;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object p2

    .line 143
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_6c

    .line 148
    check-cast p2, Ljava/util/Map;

    goto :goto_84

    .line 144
    :cond_6c
    new-instance p3, Lfreemarker/core/_MiscTemplateException;

    .line 146
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p4, " instead."

    const-string v0, "Expected \"params\" to unwrap into a java.util.Map. It unwrapped into "

    filled-new-array {v0, p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw p3

    .line 150
    :cond_82
    sget-object p2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 152
    :goto_84
    new-instance v1, Lfreemarker/ext/servlet/IncludePage$CustomParamsRequest;

    iget-object v2, p0, Lfreemarker/ext/servlet/IncludePage;->request:Ljavax/servlet/http/HttpServletRequest;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v0, v3}, Lfreemarker/ext/servlet/IncludePage$CustomParamsRequest;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljava/util/Map;ZLfreemarker/ext/servlet/IncludePage$1;)V

    move-object p2, v1

    .line 158
    :goto_8d
    :try_start_8d
    iget-object v0, p0, Lfreemarker/ext/servlet/IncludePage;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object p3

    invoke-interface {p3, p2, p4}, Ljavax/servlet/RequestDispatcher;->include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_96
    .catch Ljavax/servlet/ServletException; {:try_start_8d .. :try_end_96} :catch_97

    return-void

    :catch_97
    move-exception p2

    .line 161
    new-instance p3, Lfreemarker/core/_MiscTemplateException;

    invoke-direct {p3, p2, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;)V

    throw p3

    .line 121
    :cond_9e
    new-instance p2, Lfreemarker/core/_MiscTemplateException;

    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const-string p4, " instead"

    const-string v0, "\"inherit_params\" should be a boolean but it\'s a(n) "

    filled-new-array {v0, p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw p2

    .line 85
    :cond_b4
    new-instance p2, Lfreemarker/core/_MiscTemplateException;

    const-string p3, "String value of \"path\" parameter is null"

    invoke-direct {p2, p1, p3}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw p2

    .line 80
    :cond_bc
    new-instance p2, Lfreemarker/core/_MiscTemplateException;

    new-instance p4, Lfreemarker/core/_DelayedFTLTypeDescription;

    invoke-direct {p4, p3}, Lfreemarker/core/_DelayedFTLTypeDescription;-><init>(Lfreemarker/template/TemplateModel;)V

    const-string p3, "Expected a scalar model. \"path\" is instead "

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw p2

    .line 77
    :cond_cd
    new-instance p2, Lfreemarker/core/_MiscTemplateException;

    const-string p3, "Missing required parameter \"path\""

    invoke-direct {p2, p1, p3}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw p2
.end method
