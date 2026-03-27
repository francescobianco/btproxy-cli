.class Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner;
.super Ljava/lang/Object;
.source "CustomTagAndELFunctionCombiner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateTransformModelAndSimpleMethodModel;,
        Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateTransformModelAndTemplateMethodModelEx;,
        Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateDirectiveModelAndTemplateMethodModelEx;,
        Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateDirectiveModelAndSimpleMethodModel;,
        Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$CombinedTemplateModel;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static canBeCombinedAsCustomTag(Lfreemarker/template/TemplateModel;)Z
    .registers 2

    .line 78
    instance-of v0, p0, Lfreemarker/template/TemplateDirectiveModel;

    if-nez v0, :cond_8

    instance-of v0, p0, Lfreemarker/template/TemplateTransformModel;

    if-eqz v0, :cond_e

    :cond_8
    instance-of p0, p0, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$CombinedTemplateModel;

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method static canBeCombinedAsELFunction(Lfreemarker/template/TemplateModel;)Z
    .registers 2

    .line 87
    instance-of v0, p0, Lfreemarker/template/TemplateMethodModelEx;

    if-eqz v0, :cond_a

    instance-of p0, p0, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$CombinedTemplateModel;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static combine(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateMethodModelEx;)Lfreemarker/template/TemplateModel;
    .registers 4

    .line 55
    instance-of v0, p0, Lfreemarker/template/TemplateDirectiveModel;

    if-eqz v0, :cond_1c

    .line 56
    instance-of v0, p1, Lfreemarker/ext/beans/SimpleMethodModel;

    if-eqz v0, :cond_12

    new-instance v0, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateDirectiveModelAndSimpleMethodModel;

    check-cast p0, Lfreemarker/template/TemplateDirectiveModel;

    check-cast p1, Lfreemarker/ext/beans/SimpleMethodModel;

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateDirectiveModelAndSimpleMethodModel;-><init>(Lfreemarker/template/TemplateDirectiveModel;Lfreemarker/ext/beans/SimpleMethodModel;)V

    goto :goto_19

    :cond_12
    new-instance v0, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateDirectiveModelAndTemplateMethodModelEx;

    check-cast p0, Lfreemarker/template/TemplateDirectiveModel;

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateDirectiveModelAndTemplateMethodModelEx;-><init>(Lfreemarker/template/TemplateDirectiveModel;Lfreemarker/template/TemplateMethodModelEx;)V

    :goto_19
    check-cast v0, Lfreemarker/template/TemplateModel;

    return-object v0

    .line 61
    :cond_1c
    instance-of v0, p0, Lfreemarker/template/TemplateTransformModel;

    if-eqz v0, :cond_38

    .line 62
    instance-of v0, p1, Lfreemarker/ext/beans/SimpleMethodModel;

    if-eqz v0, :cond_2e

    new-instance v0, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateTransformModelAndSimpleMethodModel;

    check-cast p0, Lfreemarker/template/TemplateTransformModel;

    check-cast p1, Lfreemarker/ext/beans/SimpleMethodModel;

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateTransformModelAndSimpleMethodModel;-><init>(Lfreemarker/template/TemplateTransformModel;Lfreemarker/ext/beans/SimpleMethodModel;)V

    goto :goto_35

    :cond_2e
    new-instance v0, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateTransformModelAndTemplateMethodModelEx;

    check-cast p0, Lfreemarker/template/TemplateTransformModel;

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateTransformModelAndTemplateMethodModelEx;-><init>(Lfreemarker/template/TemplateTransformModel;Lfreemarker/template/TemplateMethodModelEx;)V

    :goto_35
    check-cast v0, Lfreemarker/template/TemplateModel;

    return-object v0

    .line 68
    :cond_38
    new-instance p1, Lfreemarker/core/BugException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected custom JSP tag class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {p0}, Lfreemarker/template/utility/ClassUtil;->getShortClassNameOfObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
