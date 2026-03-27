.class Lfreemarker/core/LegacyConstructorParserConfiguration;
.super Ljava/lang/Object;
.source "LegacyConstructorParserConfiguration.java"

# interfaces
.implements Lfreemarker/core/ParserConfiguration;


# instance fields
.field private arithmeticEngine:Lfreemarker/core/ArithmeticEngine;

.field private autoEscapingPolicy:Ljava/lang/Integer;

.field private final incompatibleImprovements:Lfreemarker/template/Version;

.field private final interpolationSyntax:I

.field private final namingConvention:I

.field private outputFormat:Lfreemarker/core/OutputFormat;

.field private recognizeStandardFileExtensions:Ljava/lang/Boolean;

.field private final strictSyntaxMode:Z

.field private tabSize:Ljava/lang/Integer;

.field private final tagSyntax:I

.field private final whitespaceStripping:Z


# direct methods
.method constructor <init>(ZZIIILjava/lang/Integer;Lfreemarker/core/OutputFormat;Ljava/lang/Boolean;Ljava/lang/Integer;Lfreemarker/template/Version;Lfreemarker/core/ArithmeticEngine;)V
    .registers 12

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p3, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->tagSyntax:I

    .line 48
    iput p4, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->interpolationSyntax:I

    .line 49
    iput p5, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->namingConvention:I

    .line 50
    iput-boolean p2, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->whitespaceStripping:Z

    .line 51
    iput-boolean p1, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->strictSyntaxMode:Z

    .line 52
    iput-object p6, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->autoEscapingPolicy:Ljava/lang/Integer;

    .line 53
    iput-object p7, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->outputFormat:Lfreemarker/core/OutputFormat;

    .line 54
    iput-object p8, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->recognizeStandardFileExtensions:Ljava/lang/Boolean;

    .line 55
    iput-object p9, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->tabSize:Ljava/lang/Integer;

    .line 56
    iput-object p10, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->incompatibleImprovements:Lfreemarker/template/Version;

    .line 57
    iput-object p11, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->arithmeticEngine:Lfreemarker/core/ArithmeticEngine;

    return-void
.end method


# virtual methods
.method public getArithmeticEngine()Lfreemarker/core/ArithmeticEngine;
    .registers 2

    .line 85
    iget-object v0, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->arithmeticEngine:Lfreemarker/core/ArithmeticEngine;

    if-eqz v0, :cond_5

    return-object v0

    .line 86
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAutoEscapingPolicy()I
    .registers 2

    .line 98
    iget-object v0, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->autoEscapingPolicy:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 101
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 99
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getIncompatibleImprovements()Lfreemarker/template/Version;
    .registers 2

    .line 81
    iget-object v0, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->incompatibleImprovements:Lfreemarker/template/Version;

    return-object v0
.end method

.method public getInterpolationSyntax()I
    .registers 2

    .line 65
    iget v0, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->interpolationSyntax:I

    return v0
.end method

.method public getNamingConvention()I
    .registers 2

    .line 69
    iget v0, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->namingConvention:I

    return v0
.end method

.method public getOutputFormat()Lfreemarker/core/OutputFormat;
    .registers 2

    .line 111
    iget-object v0, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->outputFormat:Lfreemarker/core/OutputFormat;

    if-eqz v0, :cond_5

    return-object v0

    .line 112
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getRecognizeStandardFileExtensions()Z
    .registers 2

    .line 124
    iget-object v0, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->recognizeStandardFileExtensions:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 127
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 125
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getStrictSyntaxMode()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->strictSyntaxMode:Z

    return v0
.end method

.method public getTabSize()I
    .registers 2

    .line 137
    iget-object v0, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->tabSize:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 140
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 138
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getTagSyntax()I
    .registers 2

    .line 61
    iget v0, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->tagSyntax:I

    return v0
.end method

.method public getWhitespaceStripping()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->whitespaceStripping:Z

    return v0
.end method

.method setArithmeticEngineIfNotSet(Lfreemarker/core/ArithmeticEngine;)V
    .registers 3

    .line 92
    iget-object v0, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->arithmeticEngine:Lfreemarker/core/ArithmeticEngine;

    if-nez v0, :cond_6

    .line 93
    iput-object p1, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->arithmeticEngine:Lfreemarker/core/ArithmeticEngine;

    :cond_6
    return-void
.end method

.method setAutoEscapingPolicyIfNotSet(I)V
    .registers 3

    .line 105
    iget-object v0, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->autoEscapingPolicy:Ljava/lang/Integer;

    if-nez v0, :cond_a

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->autoEscapingPolicy:Ljava/lang/Integer;

    :cond_a
    return-void
.end method

.method setOutputFormatIfNotSet(Lfreemarker/core/OutputFormat;)V
    .registers 3

    .line 118
    iget-object v0, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->outputFormat:Lfreemarker/core/OutputFormat;

    if-nez v0, :cond_6

    .line 119
    iput-object p1, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->outputFormat:Lfreemarker/core/OutputFormat;

    :cond_6
    return-void
.end method

.method setRecognizeStandardFileExtensionsIfNotSet(Z)V
    .registers 3

    .line 131
    iget-object v0, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->recognizeStandardFileExtensions:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    .line 132
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->recognizeStandardFileExtensions:Ljava/lang/Boolean;

    :cond_a
    return-void
.end method

.method setTabSizeIfNotSet(I)V
    .registers 3

    .line 144
    iget-object v0, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->tabSize:Ljava/lang/Integer;

    if-nez v0, :cond_a

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/LegacyConstructorParserConfiguration;->tabSize:Ljava/lang/Integer;

    :cond_a
    return-void
.end method
