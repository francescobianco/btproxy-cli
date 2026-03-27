.class Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateTransformModelAndSimpleMethodModel;
.super Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$CombinedTemplateModel;
.source "CustomTagAndELFunctionCombiner.java"

# interfaces
.implements Lfreemarker/template/TemplateTransformModel;
.implements Lfreemarker/template/TemplateMethodModelEx;
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/core/_UnexpectedTypeErrorExplainerTemplateModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemplateTransformModelAndSimpleMethodModel"
.end annotation


# instance fields
.field private final simpleMethodModel:Lfreemarker/ext/beans/SimpleMethodModel;

.field private final templateTransformModel:Lfreemarker/template/TemplateTransformModel;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateTransformModel;Lfreemarker/ext/beans/SimpleMethodModel;)V
    .registers 4

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, v0}, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$CombinedTemplateModel;-><init>(Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$1;)V

    .line 184
    iput-object p1, p0, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateTransformModelAndSimpleMethodModel;->templateTransformModel:Lfreemarker/template/TemplateTransformModel;

    .line 185
    iput-object p2, p0, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateTransformModelAndSimpleMethodModel;->simpleMethodModel:Lfreemarker/ext/beans/SimpleMethodModel;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateTransformModelAndSimpleMethodModel;->simpleMethodModel:Lfreemarker/ext/beans/SimpleMethodModel;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/SimpleMethodModel;->exec(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public explainTypeError([Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 3

    .line 193
    iget-object v0, p0, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateTransformModelAndSimpleMethodModel;->simpleMethodModel:Lfreemarker/ext/beans/SimpleMethodModel;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/SimpleMethodModel;->explainTypeError([Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateTransformModelAndSimpleMethodModel;->simpleMethodModel:Lfreemarker/ext/beans/SimpleMethodModel;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/SimpleMethodModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateTransformModelAndSimpleMethodModel;->templateTransformModel:Lfreemarker/template/TemplateTransformModel;

    invoke-interface {v0, p1, p2}, Lfreemarker/template/TemplateTransformModel;->getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lfreemarker/ext/jsp/CustomTagAndELFunctionCombiner$TemplateTransformModelAndSimpleMethodModel;->simpleMethodModel:Lfreemarker/ext/beans/SimpleMethodModel;

    invoke-virtual {v0}, Lfreemarker/ext/beans/SimpleMethodModel;->size()I

    move-result v0

    return v0
.end method
