.class public final Lfreemarker/template/TemplateNotFoundException;
.super Ljava/io/FileNotFoundException;
.source "TemplateNotFoundException.java"


# instance fields
.field private final customLookupCondition:Ljava/lang/Object;

.field private final templateName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 40
    invoke-direct {p0, p3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lfreemarker/template/TemplateNotFoundException;->templateName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lfreemarker/template/TemplateNotFoundException;->customLookupCondition:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCustomLookupCondition()Ljava/lang/Object;
    .registers 2

    .line 58
    iget-object v0, p0, Lfreemarker/template/TemplateNotFoundException;->customLookupCondition:Ljava/lang/Object;

    return-object v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lfreemarker/template/TemplateNotFoundException;->templateName:Ljava/lang/String;

    return-object v0
.end method
