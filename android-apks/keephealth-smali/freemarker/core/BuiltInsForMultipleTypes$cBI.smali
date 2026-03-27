.class Lfreemarker/core/BuiltInsForMultipleTypes$cBI;
.super Lfreemarker/core/BuiltInsForMultipleTypes$AbstractCBI;
.source "BuiltInsForMultipleTypes.java"

# interfaces
.implements Lfreemarker/core/ICIChainMember;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForMultipleTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "cBI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BuiltInsForMultipleTypes$cBI$BIBeforeICE2d3d21;
    }
.end annotation


# instance fields
.field private final prevICIObj:Lfreemarker/core/BuiltInsForMultipleTypes$cBI$BIBeforeICE2d3d21;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Lfreemarker/core/BuiltInsForMultipleTypes$AbstractCBI;-><init>()V

    .line 75
    new-instance v0, Lfreemarker/core/BuiltInsForMultipleTypes$cBI$BIBeforeICE2d3d21;

    invoke-direct {v0}, Lfreemarker/core/BuiltInsForMultipleTypes$cBI$BIBeforeICE2d3d21;-><init>()V

    iput-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$cBI;->prevICIObj:Lfreemarker/core/BuiltInsForMultipleTypes$cBI$BIBeforeICE2d3d21;

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$cBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 80
    instance-of v0, v3, Lfreemarker/template/TemplateNumberModel;

    if-eqz v0, :cond_f

    .line 81
    invoke-virtual {p0, p1, v3}, Lfreemarker/core/BuiltInsForMultipleTypes$cBI;->formatNumber(Lfreemarker/core/Environment;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 82
    :cond_f
    instance-of v0, v3, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v0, :cond_26

    .line 83
    new-instance p1, Lfreemarker/template/SimpleScalar;

    check-cast v3, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {v3}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "true"

    goto :goto_22

    :cond_20
    const-string v0, "false"

    :goto_22
    invoke-direct {p1, v0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 86
    :cond_26
    new-instance v0, Lfreemarker/core/UnexpectedTypeException;

    iget-object v2, p0, Lfreemarker/core/BuiltInsForMultipleTypes$cBI;->target:Lfreemarker/core/Expression;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v4, Lfreemarker/template/TemplateNumberModel;

    aput-object v4, v5, v1

    const/4 v1, 0x1

    const-class v4, Lfreemarker/template/TemplateBooleanModel;

    aput-object v4, v5, v1

    const-string v4, "number or boolean"

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    throw v0
.end method

.method protected formatNumber(Lfreemarker/core/Environment;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 95
    check-cast p2, Lfreemarker/template/TemplateNumberModel;

    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$cBI;->target:Lfreemarker/core/Expression;

    invoke-static {p2, v0}, Lfreemarker/core/EvalUtil;->modelToNumber(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/Expression;)Ljava/lang/Number;

    move-result-object p2

    .line 96
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_7d

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_11

    goto :goto_7d

    .line 99
    :cond_11
    instance-of v0, p2, Ljava/lang/Double;

    const-string v1, "NaN"

    const-string v2, "-INF"

    const-string v3, "INF"

    if-eqz v0, :cond_43

    .line 100
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, v4, v6

    if-nez v0, :cond_2b

    .line 102
    new-instance p1, Lfreemarker/template/SimpleScalar;

    invoke-direct {p1, v3}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2b
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, v4, v6

    if-nez v0, :cond_37

    .line 105
    new-instance p1, Lfreemarker/template/SimpleScalar;

    invoke-direct {p1, v2}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 107
    :cond_37
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 108
    new-instance p1, Lfreemarker/template/SimpleScalar;

    invoke-direct {p1, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 111
    :cond_43
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_6f

    .line 112
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v4, v0, v4

    if-nez v4, :cond_57

    .line 114
    new-instance p1, Lfreemarker/template/SimpleScalar;

    invoke-direct {p1, v3}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_57
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v3, v0, v3

    if-nez v3, :cond_63

    .line 117
    new-instance p1, Lfreemarker/template/SimpleScalar;

    invoke-direct {p1, v2}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 119
    :cond_63
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 120
    new-instance p1, Lfreemarker/template/SimpleScalar;

    invoke-direct {p1, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 125
    :cond_6f
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Lfreemarker/core/Environment;->getCNumberFormat()Ljava/text/NumberFormat;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 98
    :cond_7d
    :goto_7d
    new-instance p1, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public getMinimumICIVersion()I
    .registers 2

    .line 129
    sget v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_21:I

    return v0
.end method

.method public getPreviousICIChainMember()Ljava/lang/Object;
    .registers 2

    .line 133
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$cBI;->prevICIObj:Lfreemarker/core/BuiltInsForMultipleTypes$cBI$BIBeforeICE2d3d21;

    return-object v0
.end method
