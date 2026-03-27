.class public Lfreemarker/template/MalformedTemplateNameException;
.super Ljava/io/IOException;
.source "MalformedTemplateNameException.java"


# instance fields
.field private final malformednessDescription:Ljava/lang/String;

.field private final templateName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Malformed template name, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lfreemarker/template/MalformedTemplateNameException;->templateName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lfreemarker/template/MalformedTemplateNameException;->malformednessDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMalformednessDescription()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lfreemarker/template/MalformedTemplateNameException;->malformednessDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lfreemarker/template/MalformedTemplateNameException;->templateName:Ljava/lang/String;

    return-object v0
.end method
