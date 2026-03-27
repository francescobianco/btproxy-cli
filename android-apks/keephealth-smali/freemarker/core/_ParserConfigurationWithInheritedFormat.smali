.class public final Lfreemarker/core/_ParserConfigurationWithInheritedFormat;
.super Ljava/lang/Object;
.source "_ParserConfigurationWithInheritedFormat.java"

# interfaces
.implements Lfreemarker/core/ParserConfiguration;


# instance fields
.field private final autoEscapingPolicy:Ljava/lang/Integer;

.field private final outputFormat:Lfreemarker/core/OutputFormat;

.field private final wrappedPCfg:Lfreemarker/core/ParserConfiguration;


# direct methods
.method public constructor <init>(Lfreemarker/core/ParserConfiguration;Lfreemarker/core/OutputFormat;Ljava/lang/Integer;)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;->outputFormat:Lfreemarker/core/OutputFormat;

    .line 35
    iput-object p3, p0, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;->autoEscapingPolicy:Ljava/lang/Integer;

    .line 36
    iput-object p1, p0, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;->wrappedPCfg:Lfreemarker/core/ParserConfiguration;

    return-void
.end method


# virtual methods
.method public getArithmeticEngine()Lfreemarker/core/ArithmeticEngine;
    .registers 2

    .line 76
    iget-object v0, p0, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;->wrappedPCfg:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getArithmeticEngine()Lfreemarker/core/ArithmeticEngine;

    move-result-object v0

    return-object v0
.end method

.method public getAutoEscapingPolicy()I
    .registers 2

    .line 72
    iget-object v0, p0, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;->autoEscapingPolicy:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;->wrappedPCfg:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getAutoEscapingPolicy()I

    move-result v0

    :goto_f
    return v0
.end method

.method public getIncompatibleImprovements()Lfreemarker/template/Version;
    .registers 2

    .line 68
    iget-object v0, p0, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;->wrappedPCfg:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    return-object v0
.end method

.method public getInterpolationSyntax()I
    .registers 2

    .line 48
    iget-object v0, p0, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;->wrappedPCfg:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getInterpolationSyntax()I

    move-result v0

    return v0
.end method

.method public getNamingConvention()I
    .registers 2

    .line 64
    iget-object v0, p0, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;->wrappedPCfg:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getNamingConvention()I

    move-result v0

    return v0
.end method

.method public getOutputFormat()Lfreemarker/core/OutputFormat;
    .registers 2

    .line 56
    iget-object v0, p0, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;->outputFormat:Lfreemarker/core/OutputFormat;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;->wrappedPCfg:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getOutputFormat()Lfreemarker/core/OutputFormat;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getRecognizeStandardFileExtensions()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getStrictSyntaxMode()Z
    .registers 2

    .line 52
    iget-object v0, p0, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;->wrappedPCfg:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getStrictSyntaxMode()Z

    move-result v0

    return v0
.end method

.method public getTabSize()I
    .registers 2

    .line 80
    iget-object v0, p0, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;->wrappedPCfg:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getTabSize()I

    move-result v0

    return v0
.end method

.method public getTagSyntax()I
    .registers 2

    .line 44
    iget-object v0, p0, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;->wrappedPCfg:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getTagSyntax()I

    move-result v0

    return v0
.end method

.method public getWhitespaceStripping()Z
    .registers 2

    .line 40
    iget-object v0, p0, Lfreemarker/core/_ParserConfigurationWithInheritedFormat;->wrappedPCfg:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getWhitespaceStripping()Z

    move-result v0

    return v0
.end method
