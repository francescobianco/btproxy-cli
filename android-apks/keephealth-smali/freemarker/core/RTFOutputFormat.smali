.class public Lfreemarker/core/RTFOutputFormat;
.super Lfreemarker/core/CommonMarkupOutputFormat;
.source "RTFOutputFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfreemarker/core/CommonMarkupOutputFormat<",
        "Lfreemarker/core/TemplateRTFOutputModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lfreemarker/core/RTFOutputFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lfreemarker/core/RTFOutputFormat;

    invoke-direct {v0}, Lfreemarker/core/RTFOutputFormat;-><init>()V

    sput-object v0, Lfreemarker/core/RTFOutputFormat;->INSTANCE:Lfreemarker/core/RTFOutputFormat;

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
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->RTFEnc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .line 57
    const-string v0, "application/rtf"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 52
    const-string v0, "RTF"

    return-object v0
.end method

.method public isLegacyBuiltInBypassed(Ljava/lang/String;)Z
    .registers 3

    .line 72
    const-string v0, "rtf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

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
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/RTFOutputFormat;->newTemplateMarkupOutputModel(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/TemplateRTFOutputModel;

    move-result-object p1

    return-object p1
.end method

.method protected newTemplateMarkupOutputModel(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/TemplateRTFOutputModel;
    .registers 4

    .line 77
    new-instance v0, Lfreemarker/core/TemplateRTFOutputModel;

    invoke-direct {v0, p1, p2}, Lfreemarker/core/TemplateRTFOutputModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-static {p1, p2}, Lfreemarker/template/utility/StringUtil;->RTFEnc(Ljava/lang/String;Ljava/io/Writer;)V

    return-void
.end method
