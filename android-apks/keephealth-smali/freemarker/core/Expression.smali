.class public abstract Lfreemarker/core/Expression;
.super Lfreemarker/core/TemplateObject;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/Expression$ReplacemenetState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field constantValue:Lfreemarker/template/TemplateModel;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lfreemarker/core/TemplateObject;-><init>()V

    return-void
.end method

.method private evalToBoolean(Lfreemarker/core/Environment;Lfreemarker/template/Configuration;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0, p1, p2}, Lfreemarker/core/Expression;->modelToBoolean(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;Lfreemarker/template/Configuration;)Z

    move-result p1

    return p1
.end method

.method static isEmpty(Lfreemarker/template/TemplateModel;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 225
    instance-of v0, p0, Lfreemarker/ext/beans/BeanModel;

    if-eqz v0, :cond_b

    .line 226
    check-cast p0, Lfreemarker/ext/beans/BeanModel;

    invoke-virtual {p0}, Lfreemarker/ext/beans/BeanModel;->isEmpty()Z

    move-result p0

    return p0

    .line 227
    :cond_b
    instance-of v0, p0, Lfreemarker/template/TemplateSequenceModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    .line 228
    check-cast p0, Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {p0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result p0

    if-nez p0, :cond_1a

    move v1, v2

    :cond_1a
    return v1

    .line 229
    :cond_1b
    instance-of v0, p0, Lfreemarker/template/TemplateScalarModel;

    if-eqz v0, :cond_2f

    .line 230
    check-cast p0, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_2e

    :cond_2d
    move v1, v2

    :cond_2e
    return v1

    :cond_2f
    if-nez p0, :cond_32

    return v2

    .line 234
    :cond_32
    instance-of v0, p0, Lfreemarker/core/TemplateMarkupOutputModel;

    if-eqz v0, :cond_41

    .line 235
    check-cast p0, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 236
    invoke-interface {p0}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/MarkupOutputFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfreemarker/core/MarkupOutputFormat;->isEmpty(Lfreemarker/core/TemplateMarkupOutputModel;)Z

    move-result p0

    return p0

    .line 237
    :cond_41
    instance-of v0, p0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v0, :cond_51

    .line 238
    check-cast p0, Lfreemarker/template/TemplateCollectionModel;

    invoke-interface {p0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p0

    invoke-interface {p0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 239
    :cond_51
    instance-of v0, p0, Lfreemarker/template/TemplateHashModel;

    if-eqz v0, :cond_5c

    .line 240
    check-cast p0, Lfreemarker/template/TemplateHashModel;

    invoke-interface {p0}, Lfreemarker/template/TemplateHashModel;->isEmpty()Z

    move-result p0

    return p0

    .line 241
    :cond_5c
    instance-of v0, p0, Lfreemarker/template/TemplateNumberModel;

    if-nez v0, :cond_6a

    instance-of v0, p0, Lfreemarker/template/TemplateDateModel;

    if-nez v0, :cond_6a

    instance-of p0, p0, Lfreemarker/template/TemplateBooleanModel;

    if-eqz p0, :cond_69

    goto :goto_6a

    :cond_69
    return v2

    :cond_6a
    :goto_6a
    return v1
.end method

.method private modelToBoolean(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;Lfreemarker/template/Configuration;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 192
    instance-of v0, p1, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v0, :cond_b

    .line 193
    check-cast p1, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result p1

    return p1

    :cond_b
    if-eqz p2, :cond_14

    .line 194
    invoke-virtual {p2}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result p3

    if-eqz p3, :cond_26

    goto :goto_1a

    :cond_14
    invoke-virtual {p3}, Lfreemarker/template/Configuration;->isClassicCompatible()Z

    move-result p3

    if-eqz p3, :cond_26

    :goto_1a
    if-eqz p1, :cond_24

    .line 195
    invoke-static {p1}, Lfreemarker/core/Expression;->isEmpty(Lfreemarker/template/TemplateModel;)Z

    move-result p1

    if-nez p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    return p1

    .line 197
    :cond_26
    new-instance p3, Lfreemarker/core/NonBooleanException;

    invoke-direct {p3, p0, p1, p2}, Lfreemarker/core/NonBooleanException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw p3
.end method


# virtual methods
.method abstract _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method

.method final assertNonNull(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    if-eqz p1, :cond_3

    return-void

    .line 251
    :cond_3
    invoke-static {p0, p2}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p1

    throw p1
.end method

.method final deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
    .registers 4

    .line 203
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object p1

    .line 204
    iget p2, p1, Lfreemarker/core/Expression;->beginLine:I

    if-nez p2, :cond_b

    .line 205
    invoke-virtual {p1, p0}, Lfreemarker/core/Expression;->copyLocationFrom(Lfreemarker/core/TemplateObject;)Lfreemarker/core/TemplateObject;

    :cond_b
    return-object p1
.end method

.method protected abstract deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
.end method

.method enableLazilyGeneratedResult()V
    .registers 1

    return-void
.end method

.method final eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 101
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/Expression;->constantValue:Lfreemarker/template/TemplateModel;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {p0, p1}, Lfreemarker/core/Expression;->_eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0
    :try_end_9
    .catch Lfreemarker/core/FlowControlException; {:try_start_0 .. :try_end_9} :catch_2b
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_9} :catch_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    if-eqz p1, :cond_1c

    .line 107
    invoke-static {v0, p1}, Lfreemarker/core/EvalUtil;->shouldWrapUncheckedException(Ljava/lang/Throwable;Lfreemarker/core/Environment;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1c

    .line 108
    :cond_14
    new-instance v1, Lfreemarker/core/_MiscTemplateException;

    const-string v2, "Expression has thrown an unchecked exception; see the cause exception."

    invoke-direct {v1, p0, v0, p1, v2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;Ljava/lang/Throwable;Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_1c
    :goto_1c
    instance-of p1, v0, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_23

    .line 111
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 113
    :cond_23
    new-instance p1, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {p1, v0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_29
    move-exception p1

    .line 105
    throw p1

    :catch_2b
    move-exception p1

    .line 103
    throw p1
.end method

.method evalAndCoerceToPlainText(Lfreemarker/core/Environment;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lfreemarker/core/EvalUtil;->coerceModelToPlainText(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method evalAndCoerceToPlainText(Lfreemarker/core/Environment;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    invoke-static {v0, p0, p2, p1}, Lfreemarker/core/EvalUtil;->coerceModelToPlainText(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method evalAndCoerceToStringOrMarkup(Lfreemarker/core/Environment;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lfreemarker/core/EvalUtil;->coerceModelToStringOrMarkup(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method evalAndCoerceToStringOrMarkup(Lfreemarker/core/Environment;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    invoke-static {v0, p0, p2, p1}, Lfreemarker/core/EvalUtil;->coerceModelToStringOrMarkup(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method evalAndCoerceToStringOrUnsupportedMarkup(Lfreemarker/core/Environment;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lfreemarker/core/EvalUtil;->coerceModelToStringOrUnsupportedMarkup(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method evalAndCoerceToStringOrUnsupportedMarkup(Lfreemarker/core/Environment;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    invoke-static {v0, p0, p2, p1}, Lfreemarker/core/EvalUtil;->coerceModelToStringOrUnsupportedMarkup(Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method evalToBoolean(Lfreemarker/core/Environment;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, p1, v0}, Lfreemarker/core/Expression;->evalToBoolean(Lfreemarker/core/Environment;Lfreemarker/template/Configuration;)Z

    move-result p1

    return p1
.end method

.method evalToBoolean(Lfreemarker/template/Configuration;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, v0, p1}, Lfreemarker/core/Expression;->evalToBoolean(Lfreemarker/core/Environment;Lfreemarker/template/Configuration;)Z

    move-result p1

    return p1
.end method

.method final evalToNonMissing(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 174
    invoke-virtual {p0, v0, p1}, Lfreemarker/core/Expression;->assertNonNull(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    return-object v0
.end method

.method evalToNumber(Lfreemarker/core/Environment;)Ljava/lang/Number;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 153
    invoke-virtual {p0, v0, p1}, Lfreemarker/core/Expression;->modelToNumber(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public final getAsTemplateModel(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    invoke-virtual {p0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method abstract isLiteral()Z
.end method

.method final modelToBoolean(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/core/Expression;->modelToBoolean(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;Lfreemarker/template/Configuration;)Z

    move-result p1

    return p1
.end method

.method final modelToBoolean(Lfreemarker/template/TemplateModel;Lfreemarker/template/Configuration;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, p1, v0, p2}, Lfreemarker/core/Expression;->modelToBoolean(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;Lfreemarker/template/Configuration;)Z

    move-result p1

    return p1
.end method

.method final modelToNumber(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Ljava/lang/Number;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 157
    instance-of v0, p1, Lfreemarker/template/TemplateNumberModel;

    if-eqz v0, :cond_b

    .line 158
    check-cast p1, Lfreemarker/template/TemplateNumberModel;

    invoke-static {p1, p0}, Lfreemarker/core/EvalUtil;->modelToNumber(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/Expression;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 160
    :cond_b
    new-instance v0, Lfreemarker/core/NonNumericalException;

    invoke-direct {v0, p0, p1, p2}, Lfreemarker/core/NonNumericalException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v0
.end method

.method final setLocation(Lfreemarker/template/Template;IIII)V
    .registers 6

    .line 63
    invoke-super/range {p0 .. p5}, Lfreemarker/core/TemplateObject;->setLocation(Lfreemarker/template/Template;IIII)V

    .line 64
    invoke-virtual {p0}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    .line 66
    :try_start_a
    invoke-virtual {p0, p1}, Lfreemarker/core/Expression;->_eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Expression;->constantValue:Lfreemarker/template/TemplateModel;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_10

    :catch_10
    :cond_10
    return-void
.end method
