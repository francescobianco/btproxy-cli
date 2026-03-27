.class abstract Lfreemarker/core/BuiltInsForStringsEncoding$AbstractUrlBIResult;
.super Ljava/lang/Object;
.source "BuiltInsForStringsEncoding.java"

# interfaces
.implements Lfreemarker/template/TemplateScalarModel;
.implements Lfreemarker/template/TemplateMethodModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForStringsEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractUrlBIResult"
.end annotation


# instance fields
.field private cachedResult:Ljava/lang/String;

.field private final env:Lfreemarker/core/Environment;

.field protected final parent:Lfreemarker/core/BuiltIn;

.field protected final targetAsString:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lfreemarker/core/BuiltIn;Ljava/lang/String;Lfreemarker/core/Environment;)V
    .registers 4

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lfreemarker/core/BuiltInsForStringsEncoding$AbstractUrlBIResult;->parent:Lfreemarker/core/BuiltIn;

    .line 161
    iput-object p2, p0, Lfreemarker/core/BuiltInsForStringsEncoding$AbstractUrlBIResult;->targetAsString:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lfreemarker/core/BuiltInsForStringsEncoding$AbstractUrlBIResult;->env:Lfreemarker/core/Environment;

    return-void
.end method


# virtual methods
.method protected abstract encodeWithCharset(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsEncoding$AbstractUrlBIResult;->parent:Lfreemarker/core/BuiltIn;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lfreemarker/core/BuiltIn;->checkMethodArgCount(II)V

    .line 170
    :try_start_a
    new-instance v0, Lfreemarker/template/SimpleScalar;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lfreemarker/core/BuiltInsForStringsEncoding$AbstractUrlBIResult;->encodeWithCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception p1

    .line 172
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    const-string v1, "Failed to execute URL encoding."

    invoke-direct {v0, p1, v1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v0
.end method

.method public getAsString()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsEncoding$AbstractUrlBIResult;->cachedResult:Ljava/lang/String;

    if-nez v0, :cond_34

    .line 178
    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsEncoding$AbstractUrlBIResult;->env:Lfreemarker/core/Environment;

    invoke-virtual {v0}, Lfreemarker/core/Environment;->getEffectiveURLEscapingCharset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 191
    :try_start_c
    invoke-virtual {p0, v0}, Lfreemarker/core/BuiltInsForStringsEncoding$AbstractUrlBIResult;->encodeWithCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/BuiltInsForStringsEncoding$AbstractUrlBIResult;->cachedResult:Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_12} :catch_13

    goto :goto_34

    :catch_13
    move-exception v0

    .line 193
    new-instance v1, Lfreemarker/core/_TemplateModelException;

    const-string v2, "Failed to execute URL encoding."

    invoke-direct {v1, v0, v2}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_1c
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    const-string v6, "url_escaping_charset"

    const-string v7, "=\'ISO-8859-1\'>, or give the charset explicitly to the built-in, e.g. foo?url(\'ISO-8859-1\')."

    const-string v1, "To do URL encoding, the framework that encloses FreeMarker must specify the \""

    const-string v2, "output_encoding"

    const-string v3, "\" setting or the \""

    const-string v4, "url_escaping_charset"

    const-string v5, "\" setting, so ask the programmers to set them. Or, as a last chance, you can set the url_encoding_charset setting in the template, e.g. <#setting "

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw v0

    .line 196
    :cond_34
    :goto_34
    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsEncoding$AbstractUrlBIResult;->cachedResult:Ljava/lang/String;

    return-object v0
.end method
