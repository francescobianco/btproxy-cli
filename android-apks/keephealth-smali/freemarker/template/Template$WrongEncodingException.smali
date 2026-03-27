.class public Lfreemarker/template/Template$WrongEncodingException;
.super Lfreemarker/core/ParseException;
.source "Template.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrongEncodingException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final constructorSpecifiedEncoding:Ljava/lang/String;

.field public specifiedEncoding:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1057
    invoke-direct {p0, p1, v0}, Lfreemarker/template/Template$WrongEncodingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1063
    invoke-direct {p0}, Lfreemarker/core/ParseException;-><init>()V

    .line 1064
    iput-object p1, p0, Lfreemarker/template/Template$WrongEncodingException;->specifiedEncoding:Ljava/lang/String;

    .line 1065
    iput-object p2, p0, Lfreemarker/template/Template$WrongEncodingException;->constructorSpecifiedEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructorSpecifiedEncoding()Ljava/lang/String;
    .registers 2

    .line 1086
    iget-object v0, p0, Lfreemarker/template/Template$WrongEncodingException;->constructorSpecifiedEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 4

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Encoding specified inside the template ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/template/Template$WrongEncodingException;->specifiedEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") doesn\'t match the encoding specified for the Template constructor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/template/Template$WrongEncodingException;->constructorSpecifiedEncoding:Ljava/lang/String;

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/template/Template$WrongEncodingException;->constructorSpecifiedEncoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    :cond_2f
    const-string v1, "."

    :goto_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateSpecifiedEncoding()Ljava/lang/String;
    .registers 2

    .line 1079
    iget-object v0, p0, Lfreemarker/template/Template$WrongEncodingException;->specifiedEncoding:Ljava/lang/String;

    return-object v0
.end method
