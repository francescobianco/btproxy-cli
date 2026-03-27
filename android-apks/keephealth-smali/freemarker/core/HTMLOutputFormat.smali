.class public Lfreemarker/core/HTMLOutputFormat;
.super Lfreemarker/core/CommonMarkupOutputFormat;
.source "HTMLOutputFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfreemarker/core/CommonMarkupOutputFormat<",
        "Lfreemarker/core/TemplateHTMLOutputModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lfreemarker/core/HTMLOutputFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lfreemarker/core/HTMLOutputFormat;

    invoke-direct {v0}, Lfreemarker/core/HTMLOutputFormat;-><init>()V

    sput-object v0, Lfreemarker/core/HTMLOutputFormat;->INSTANCE:Lfreemarker/core/HTMLOutputFormat;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lfreemarker/core/CommonMarkupOutputFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public escapePlainText(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 67
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->XHTMLEnc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .line 57
    const-string v0, "text/html"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 52
    const-string v0, "HTML"

    return-object v0
.end method

.method public isLegacyBuiltInBypassed(Ljava/lang/String;)Z
    .registers 3

    .line 72
    const-string v0, "html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "xhtml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method protected bridge synthetic newTemplateMarkupOutputModel(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/CommonTemplateMarkupOutputModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/HTMLOutputFormat;->newTemplateMarkupOutputModel(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/TemplateHTMLOutputModel;

    move-result-object p1

    return-object p1
.end method

.method protected newTemplateMarkupOutputModel(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/TemplateHTMLOutputModel;
    .registers 4

    .line 77
    new-instance v0, Lfreemarker/core/TemplateHTMLOutputModel;

    invoke-direct {v0, p1, p2}, Lfreemarker/core/TemplateHTMLOutputModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public output(Ljava/lang/String;Ljava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 62
    invoke-static {p1, p2}, Lfreemarker/template/utility/StringUtil;->XHTMLEnc(Ljava/lang/String;Ljava/io/Writer;)V

    return-void
.end method
