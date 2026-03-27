.class public Lfreemarker/core/FMParser;
.super Ljava/lang/Object;
.source "FMParser.java"

# interfaces
.implements Lfreemarker/core/FMParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/FMParser$JJCalls;,
        Lfreemarker/core/FMParser$LookaheadSuccess;,
        Lfreemarker/core/FMParser$ParserIteratorBlockContext;
    }
.end annotation


# static fields
.field private static final ITERATOR_BLOCK_KIND_FOREACH:I = 0x1

.field private static final ITERATOR_BLOCK_KIND_ITEMS:I = 0x2

.field private static final ITERATOR_BLOCK_KIND_LIST:I = 0x0

.field private static final ITERATOR_BLOCK_KIND_USER_DIRECTIVE:I = 0x3

.field private static jj_la1_0:[I

.field private static jj_la1_1:[I

.field private static jj_la1_2:[I

.field private static jj_la1_3:[I

.field private static jj_la1_4:[I


# instance fields
.field private autoEscaping:Z

.field private autoEscapingPolicy:I

.field private breakableDirectiveNesting:I

.field private continuableDirectiveNesting:I

.field private escapes:Ljava/util/LinkedList;

.field private inFunction:Z

.field private inMacro:Z

.field private incompatibleImprovements:I

.field private iteratorBlockContexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfreemarker/core/FMParser$ParserIteratorBlockContext;",
            ">;"
        }
    .end annotation
.end field

.field private final jj_2_rtns:[Lfreemarker/core/FMParser$JJCalls;

.field private jj_endpos:I

.field private jj_expentries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private jj_expentry:[I

.field private jj_gc:I

.field private jj_gen:I

.field jj_input_stream:Lfreemarker/core/SimpleCharStream;

.field private jj_kind:I

.field private jj_la:I

.field private final jj_la1:[I

.field private jj_lastpos:Lfreemarker/core/Token;

.field private jj_lasttokens:[I

.field private final jj_ls:Lfreemarker/core/FMParser$LookaheadSuccess;

.field public jj_nt:Lfreemarker/core/Token;

.field private jj_ntk:I

.field private jj_rescan:Z

.field private jj_scanpos:Lfreemarker/core/Token;

.field private mixedContentNesting:I

.field private outputFormat:Lfreemarker/core/OutputFormat;

.field private pCfg:Lfreemarker/core/ParserConfiguration;

.field private preventStrippings:Z

.field private stripText:Z

.field private stripWhitespace:Z

.field private template:Lfreemarker/template/Template;

.field public token:Lfreemarker/core/Token;

.field public token_source:Lfreemarker/core/FMParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 5840
    invoke-static {}, Lfreemarker/core/FMParser;->jj_la1_init_0()V

    .line 5841
    invoke-static {}, Lfreemarker/core/FMParser;->jj_la1_init_1()V

    .line 5842
    invoke-static {}, Lfreemarker/core/FMParser;->jj_la1_init_2()V

    .line 5843
    invoke-static {}, Lfreemarker/core/FMParser;->jj_la1_init_3()V

    .line 5844
    invoke-static {}, Lfreemarker/core/FMParser;->jj_la1_init_4()V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/FMParserTokenManager;)V
    .registers 6

    .line 5926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfreemarker/core/FMParser;->escapes:Ljava/util/LinkedList;

    const/16 v0, 0x74

    .line 5833
    new-array v1, v0, [I

    iput-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x11

    .line 5861
    new-array v1, v1, [Lfreemarker/core/FMParser$JJCalls;

    iput-object v1, p0, Lfreemarker/core/FMParser;->jj_2_rtns:[Lfreemarker/core/FMParser$JJCalls;

    const/4 v1, 0x0

    .line 5862
    iput-boolean v1, p0, Lfreemarker/core/FMParser;->jj_rescan:Z

    .line 5863
    iput v1, p0, Lfreemarker/core/FMParser;->jj_gc:I

    .line 5971
    new-instance v2, Lfreemarker/core/FMParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lfreemarker/core/FMParser$LookaheadSuccess;-><init>(Lfreemarker/core/FMParser$1;)V

    iput-object v2, p0, Lfreemarker/core/FMParser;->jj_ls:Lfreemarker/core/FMParser$LookaheadSuccess;

    .line 6020
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lfreemarker/core/FMParser;->jj_expentries:Ljava/util/List;

    const/4 v2, -0x1

    .line 6022
    iput v2, p0, Lfreemarker/core/FMParser;->jj_kind:I

    const/16 v3, 0x64

    .line 6023
    new-array v3, v3, [I

    iput-object v3, p0, Lfreemarker/core/FMParser;->jj_lasttokens:[I

    .line 5927
    iput-object p1, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    .line 5928
    new-instance p1, Lfreemarker/core/Token;

    invoke-direct {p1}, Lfreemarker/core/Token;-><init>()V

    iput-object p1, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    .line 5929
    iput v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    .line 5930
    iput v1, p0, Lfreemarker/core/FMParser;->jj_gen:I

    move p1, v1

    :goto_41
    if-ge p1, v0, :cond_4a

    .line 5931
    iget-object v3, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    aput v2, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_41

    .line 5932
    :cond_4a
    :goto_4a
    iget-object p1, p0, Lfreemarker/core/FMParser;->jj_2_rtns:[Lfreemarker/core/FMParser$JJCalls;

    array-length v0, p1

    if-ge v1, v0, :cond_59

    new-instance v0, Lfreemarker/core/FMParser$JJCalls;

    invoke-direct {v0}, Lfreemarker/core/FMParser$JJCalls;-><init>()V

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_59
    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Template;Ljava/io/Reader;Lfreemarker/core/ParserConfiguration;)V
    .registers 5

    const/4 v0, 0x1

    .line 162
    invoke-static {p2, p3}, Lfreemarker/core/FMParser;->readerToTokenManager(Ljava/io/Reader;Lfreemarker/core/ParserConfiguration;)Lfreemarker/core/FMParserTokenManager;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2, p3}, Lfreemarker/core/FMParser;-><init>(Lfreemarker/template/Template;ZLfreemarker/core/FMParserTokenManager;Lfreemarker/core/ParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Template;Ljava/io/Reader;ZZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 99
    invoke-direct/range {v0 .. v5}, Lfreemarker/core/FMParser;-><init>(Lfreemarker/template/Template;Ljava/io/Reader;ZZI)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Template;Ljava/io/Reader;ZZI)V
    .registers 13

    .line 106
    sget v6, Lfreemarker/template/Configuration;->PARSED_DEFAULT_INCOMPATIBLE_ENHANCEMENTS:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/FMParser;-><init>(Lfreemarker/template/Template;Ljava/io/Reader;ZZII)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Template;Ljava/io/Reader;ZZII)V
    .registers 15

    const/16 v6, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    .line 115
    invoke-direct/range {v0 .. v7}, Lfreemarker/core/FMParser;-><init>(Lfreemarker/template/Template;Ljava/io/Reader;ZZIII)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Template;Ljava/io/Reader;ZZIII)V
    .registers 22

    move-object v0, p1

    .line 140
    new-instance v13, Lfreemarker/core/LegacyConstructorParserConfiguration;

    if-eqz v0, :cond_e

    .line 144
    invoke-virtual {p1}, Lfreemarker/template/Template;->getParserConfiguration()Lfreemarker/core/ParserConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lfreemarker/core/ParserConfiguration;->getAutoEscapingPolicy()I

    move-result v1

    goto :goto_10

    :cond_e
    const/16 v1, 0x15

    :goto_10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 146
    invoke-virtual {p1}, Lfreemarker/template/Template;->getParserConfiguration()Lfreemarker/core/ParserConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lfreemarker/core/ParserConfiguration;->getOutputFormat()Lfreemarker/core/OutputFormat;

    move-result-object v2

    move-object v8, v2

    goto :goto_22

    :cond_21
    move-object v8, v1

    :goto_22
    if-eqz v0, :cond_32

    .line 148
    invoke-virtual {p1}, Lfreemarker/template/Template;->getParserConfiguration()Lfreemarker/core/ParserConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lfreemarker/core/ParserConfiguration;->getRecognizeStandardFileExtensions()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v9, v2

    goto :goto_33

    :cond_32
    move-object v9, v1

    :goto_33
    if-eqz v0, :cond_43

    .line 150
    invoke-virtual {p1}, Lfreemarker/template/Template;->getParserConfiguration()Lfreemarker/core/ParserConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lfreemarker/core/ParserConfiguration;->getTabSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v10, v2

    goto :goto_44

    :cond_43
    move-object v10, v1

    :goto_44
    new-instance v11, Lfreemarker/template/Version;

    move/from16 v2, p7

    invoke-direct {v11, v2}, Lfreemarker/template/Version;-><init>(I)V

    if-eqz v0, :cond_51

    .line 153
    invoke-virtual {p1}, Lfreemarker/template/Template;->getArithmeticEngine()Lfreemarker/core/ArithmeticEngine;

    move-result-object v1

    :cond_51
    move-object v12, v1

    const/16 v5, 0x14

    move-object v1, v13

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v12}, Lfreemarker/core/LegacyConstructorParserConfiguration;-><init>(ZZIIILjava/lang/Integer;Lfreemarker/core/OutputFormat;Ljava/lang/Boolean;Ljava/lang/Integer;Lfreemarker/template/Version;Lfreemarker/core/ArithmeticEngine;)V

    move-object v1, p0

    move-object/from16 v2, p2

    .line 140
    invoke-direct {p0, p1, v2, v13}, Lfreemarker/core/FMParser;-><init>(Lfreemarker/template/Template;Ljava/io/Reader;Lfreemarker/core/ParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Template;ZLfreemarker/core/FMParserTokenManager;Lfreemarker/core/ParserConfiguration;)V
    .registers 7

    .line 177
    invoke-direct {p0, p3}, Lfreemarker/core/FMParser;-><init>(Lfreemarker/core/FMParserTokenManager;)V

    .line 179
    invoke-static {p4}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/Object;)V

    .line 180
    iput-object p4, p0, Lfreemarker/core/FMParser;->pCfg:Lfreemarker/core/ParserConfiguration;

    .line 182
    invoke-static {p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/Object;)V

    .line 183
    iput-object p1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    .line 186
    instance-of p3, p4, Lfreemarker/core/LegacyConstructorParserConfiguration;

    if-eqz p3, :cond_43

    .line 187
    move-object p3, p4

    check-cast p3, Lfreemarker/core/LegacyConstructorParserConfiguration;

    .line 188
    invoke-virtual {p1}, Lfreemarker/template/Template;->getArithmeticEngine()Lfreemarker/core/ArithmeticEngine;

    move-result-object v0

    invoke-virtual {p3, v0}, Lfreemarker/core/LegacyConstructorParserConfiguration;->setArithmeticEngineIfNotSet(Lfreemarker/core/ArithmeticEngine;)V

    .line 189
    invoke-virtual {p1}, Lfreemarker/template/Template;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getAutoEscapingPolicy()I

    move-result v0

    invoke-virtual {p3, v0}, Lfreemarker/core/LegacyConstructorParserConfiguration;->setAutoEscapingPolicyIfNotSet(I)V

    .line 190
    invoke-virtual {p1}, Lfreemarker/template/Template;->getOutputFormat()Lfreemarker/core/OutputFormat;

    move-result-object v0

    invoke-virtual {p3, v0}, Lfreemarker/core/LegacyConstructorParserConfiguration;->setOutputFormatIfNotSet(Lfreemarker/core/OutputFormat;)V

    .line 192
    invoke-virtual {p1}, Lfreemarker/template/Template;->getParserConfiguration()Lfreemarker/core/ParserConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getRecognizeStandardFileExtensions()Z

    move-result v0

    .line 191
    invoke-virtual {p3, v0}, Lfreemarker/core/LegacyConstructorParserConfiguration;->setRecognizeStandardFileExtensionsIfNotSet(Z)V

    .line 194
    invoke-virtual {p1}, Lfreemarker/template/Template;->getParserConfiguration()Lfreemarker/core/ParserConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getTabSize()I

    move-result v0

    .line 193
    invoke-virtual {p3, v0}, Lfreemarker/core/LegacyConstructorParserConfiguration;->setTabSizeIfNotSet(I)V

    .line 197
    :cond_43
    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object p3

    invoke-virtual {p3}, Lfreemarker/template/Version;->intValue()I

    move-result p3

    .line 198
    iget-object v0, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    iput p3, v0, Lfreemarker/core/FMParserTokenManager;->incompatibleImprovements:I

    .line 199
    iput p3, p0, Lfreemarker/core/FMParser;->incompatibleImprovements:I

    .line 203
    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getRecognizeStandardFileExtensions()Z

    move-result p3

    if-eqz p3, :cond_65

    .line 204
    invoke-direct {p0}, Lfreemarker/core/FMParser;->getFormatFromStdFileExt()Lfreemarker/core/OutputFormat;

    move-result-object p3

    if-nez p3, :cond_5e

    goto :goto_65

    :cond_5e
    const/16 v0, 0x15

    .line 209
    iput v0, p0, Lfreemarker/core/FMParser;->autoEscapingPolicy:I

    .line 210
    iput-object p3, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    goto :goto_71

    .line 205
    :cond_65
    :goto_65
    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getAutoEscapingPolicy()I

    move-result p3

    iput p3, p0, Lfreemarker/core/FMParser;->autoEscapingPolicy:I

    .line 206
    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getOutputFormat()Lfreemarker/core/OutputFormat;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    .line 213
    :goto_71
    invoke-direct {p0}, Lfreemarker/core/FMParser;->recalculateAutoEscapingField()V

    .line 215
    iget-object p3, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    invoke-virtual {p3, p0}, Lfreemarker/core/FMParserTokenManager;->setParser(Lfreemarker/core/FMParser;)V

    .line 217
    iget-object p3, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getStrictSyntaxMode()Z

    move-result v0

    iput-boolean v0, p3, Lfreemarker/core/FMParserTokenManager;->strictSyntaxMode:Z

    .line 219
    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getTagSyntax()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_ad

    if-eq p3, v0, :cond_a7

    const/4 v1, 0x2

    if-ne p3, v1, :cond_92

    .line 228
    iget-object p3, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    iput-boolean v0, p3, Lfreemarker/core/FMParserTokenManager;->squBracTagSyntax:Z

    goto :goto_b1

    .line 231
    :cond_92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Illegal argument for tagSyntax: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_a7
    iget-object p3, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    const/4 v0, 0x0

    iput-boolean v0, p3, Lfreemarker/core/FMParserTokenManager;->squBracTagSyntax:Z

    goto :goto_b1

    .line 222
    :cond_ad
    iget-object p3, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    iput-boolean v0, p3, Lfreemarker/core/FMParserTokenManager;->autodetectTagSyntax:Z

    .line 234
    :goto_b1
    iget-object p3, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getInterpolationSyntax()I

    move-result v0

    iput v0, p3, Lfreemarker/core/FMParserTokenManager;->interpolationSyntax:I

    .line 236
    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getNamingConvention()I

    move-result p3

    packed-switch p3, :pswitch_data_f0

    .line 245
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Illegal argument for namingConvention: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 241
    :pswitch_d5
    iget-object v0, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    iput p3, v0, Lfreemarker/core/FMParserTokenManager;->initialNamingConvention:I

    .line 242
    iget-object v0, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    iput p3, v0, Lfreemarker/core/FMParserTokenManager;->namingConvention:I

    .line 248
    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getWhitespaceStripping()Z

    move-result p3

    iput-boolean p3, p0, Lfreemarker/core/FMParser;->stripWhitespace:Z

    if-eqz p2, :cond_ef

    .line 253
    iget-boolean p2, p0, Lfreemarker/core/FMParser;->autoEscaping:Z

    invoke-static {p1, p2}, Lfreemarker/template/_TemplateAPI;->setAutoEscaping(Lfreemarker/template/Template;Z)V

    .line 254
    iget-object p2, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    invoke-static {p1, p2}, Lfreemarker/template/_TemplateAPI;->setOutputFormat(Lfreemarker/template/Template;Lfreemarker/core/OutputFormat;)V

    :cond_ef
    return-void

    :pswitch_data_f0
    .packed-switch 0xa
        :pswitch_d5
        :pswitch_d5
        :pswitch_d5
    .end packed-switch
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    .line 5867
    invoke-direct {p0, p1, v0}, Lfreemarker/core/FMParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 8

    .line 5870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfreemarker/core/FMParser;->escapes:Ljava/util/LinkedList;

    const/16 v0, 0x74

    .line 5833
    new-array v1, v0, [I

    iput-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x11

    .line 5861
    new-array v1, v1, [Lfreemarker/core/FMParser$JJCalls;

    iput-object v1, p0, Lfreemarker/core/FMParser;->jj_2_rtns:[Lfreemarker/core/FMParser$JJCalls;

    const/4 v1, 0x0

    .line 5862
    iput-boolean v1, p0, Lfreemarker/core/FMParser;->jj_rescan:Z

    .line 5863
    iput v1, p0, Lfreemarker/core/FMParser;->jj_gc:I

    .line 5971
    new-instance v2, Lfreemarker/core/FMParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lfreemarker/core/FMParser$LookaheadSuccess;-><init>(Lfreemarker/core/FMParser$1;)V

    iput-object v2, p0, Lfreemarker/core/FMParser;->jj_ls:Lfreemarker/core/FMParser$LookaheadSuccess;

    .line 6020
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lfreemarker/core/FMParser;->jj_expentries:Ljava/util/List;

    const/4 v2, -0x1

    .line 6022
    iput v2, p0, Lfreemarker/core/FMParser;->jj_kind:I

    const/16 v3, 0x64

    .line 6023
    new-array v3, v3, [I

    iput-object v3, p0, Lfreemarker/core/FMParser;->jj_lasttokens:[I

    .line 5871
    :try_start_33
    new-instance v3, Lfreemarker/core/SimpleCharStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, p2, v4, v4}, Lfreemarker/core/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v3, p0, Lfreemarker/core/FMParser;->jj_input_stream:Lfreemarker/core/SimpleCharStream;
    :try_end_3b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_33 .. :try_end_3b} :catch_69

    .line 5872
    new-instance p1, Lfreemarker/core/FMParserTokenManager;

    iget-object p2, p0, Lfreemarker/core/FMParser;->jj_input_stream:Lfreemarker/core/SimpleCharStream;

    invoke-direct {p1, p2}, Lfreemarker/core/FMParserTokenManager;-><init>(Lfreemarker/core/SimpleCharStream;)V

    iput-object p1, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    .line 5873
    new-instance p1, Lfreemarker/core/Token;

    invoke-direct {p1}, Lfreemarker/core/Token;-><init>()V

    iput-object p1, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    .line 5874
    iput v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    .line 5875
    iput v1, p0, Lfreemarker/core/FMParser;->jj_gen:I

    move p1, v1

    :goto_50
    if-ge p1, v0, :cond_59

    .line 5876
    iget-object p2, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    aput v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_50

    .line 5877
    :cond_59
    :goto_59
    iget-object p1, p0, Lfreemarker/core/FMParser;->jj_2_rtns:[Lfreemarker/core/FMParser$JJCalls;

    array-length p2, p1

    if-ge v1, p2, :cond_68

    new-instance p2, Lfreemarker/core/FMParser$JJCalls;

    invoke-direct {p2}, Lfreemarker/core/FMParser$JJCalls;-><init>()V

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_68
    return-void

    :catch_69
    move-exception p1

    .line 5871
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 7

    .line 5896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfreemarker/core/FMParser;->escapes:Ljava/util/LinkedList;

    const/16 v0, 0x74

    .line 5833
    new-array v1, v0, [I

    iput-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x11

    .line 5861
    new-array v1, v1, [Lfreemarker/core/FMParser$JJCalls;

    iput-object v1, p0, Lfreemarker/core/FMParser;->jj_2_rtns:[Lfreemarker/core/FMParser$JJCalls;

    const/4 v1, 0x0

    .line 5862
    iput-boolean v1, p0, Lfreemarker/core/FMParser;->jj_rescan:Z

    .line 5863
    iput v1, p0, Lfreemarker/core/FMParser;->jj_gc:I

    .line 5971
    new-instance v2, Lfreemarker/core/FMParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lfreemarker/core/FMParser$LookaheadSuccess;-><init>(Lfreemarker/core/FMParser$1;)V

    iput-object v2, p0, Lfreemarker/core/FMParser;->jj_ls:Lfreemarker/core/FMParser$LookaheadSuccess;

    .line 6020
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lfreemarker/core/FMParser;->jj_expentries:Ljava/util/List;

    const/4 v2, -0x1

    .line 6022
    iput v2, p0, Lfreemarker/core/FMParser;->jj_kind:I

    const/16 v3, 0x64

    .line 6023
    new-array v3, v3, [I

    iput-object v3, p0, Lfreemarker/core/FMParser;->jj_lasttokens:[I

    .line 5897
    new-instance v3, Lfreemarker/core/SimpleCharStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4, v4}, Lfreemarker/core/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v3, p0, Lfreemarker/core/FMParser;->jj_input_stream:Lfreemarker/core/SimpleCharStream;

    .line 5898
    new-instance p1, Lfreemarker/core/FMParserTokenManager;

    iget-object v3, p0, Lfreemarker/core/FMParser;->jj_input_stream:Lfreemarker/core/SimpleCharStream;

    invoke-direct {p1, v3}, Lfreemarker/core/FMParserTokenManager;-><init>(Lfreemarker/core/SimpleCharStream;)V

    iput-object p1, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    .line 5899
    new-instance p1, Lfreemarker/core/Token;

    invoke-direct {p1}, Lfreemarker/core/Token;-><init>()V

    iput-object p1, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    .line 5900
    iput v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    .line 5901
    iput v1, p0, Lfreemarker/core/FMParser;->jj_gen:I

    move p1, v1

    :goto_50
    if-ge p1, v0, :cond_59

    .line 5902
    iget-object v3, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    aput v2, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_50

    .line 5903
    :cond_59
    :goto_59
    iget-object p1, p0, Lfreemarker/core/FMParser;->jj_2_rtns:[Lfreemarker/core/FMParser$JJCalls;

    array-length v0, p1

    if-ge v1, v0, :cond_68

    new-instance v0, Lfreemarker/core/FMParser$JJCalls;

    invoke-direct {v0}, Lfreemarker/core/FMParser$JJCalls;-><init>()V

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 123
    invoke-static {}, Lfreemarker/core/FMParser;->dummyTemplate()Lfreemarker/template/Template;

    move-result-object v0

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1, p1}, Lfreemarker/core/FMParser;-><init>(Lfreemarker/template/Template;Ljava/io/Reader;ZZ)V

    return-void
.end method

.method private booleanLiteralOnly(Lfreemarker/core/Expression;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 447
    const-string v0, "boolean (true/false)"

    invoke-direct {p0, p1, v0}, Lfreemarker/core/FMParser;->notStringLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 448
    invoke-direct {p0, p1, v0}, Lfreemarker/core/FMParser;->notListLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 449
    invoke-direct {p0, p1, v0}, Lfreemarker/core/FMParser;->notHashLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 450
    invoke-direct {p0, p1, v0}, Lfreemarker/core/FMParser;->notNumberLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    return-void
.end method

.method private checkLoopVariableBuiltInLHO(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Token;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lfreemarker/core/FMParser;->iteratorBlockContexts:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    add-int/lit8 v0, v0, -0x1

    .line 518
    :goto_c
    const-string v1, "The left hand operand of ?"

    if-ltz v0, :cond_57

    .line 519
    iget-object v2, p0, Lfreemarker/core/FMParser;->iteratorBlockContexts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/FMParser$ParserIteratorBlockContext;

    .line 520
    # getter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVarName:Ljava/lang/String;
    invoke-static {v2}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$100(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    # getter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVar2Name:Ljava/lang/String;
    invoke-static {v2}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$200(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_30

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 521
    :cond_30
    :goto_30
    # getter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->kind:I
    invoke-static {v2}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$300(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_38

    return-void

    .line 522
    :cond_38
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p3, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " can\'t be the loop variable of an user defined directive: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v0

    .line 531
    :cond_57
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p3, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " must be a loop variable, but there\'s no loop variable in scope with this name: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v0
.end method

.method public static createExpressionParser(Ljava/lang/String;)Lfreemarker/core/FMParser;
    .registers 4

    .line 78
    new-instance v0, Lfreemarker/core/SimpleCharStream;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v0, v1, v2, v2, p0}, Lfreemarker/core/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 79
    new-instance p0, Lfreemarker/core/FMParserTokenManager;

    invoke-direct {p0, v0}, Lfreemarker/core/FMParserTokenManager;-><init>(Lfreemarker/core/SimpleCharStream;)V

    const/4 v0, 0x2

    .line 80
    invoke-virtual {p0, v0}, Lfreemarker/core/FMParserTokenManager;->SwitchTo(I)V

    .line 81
    new-instance v0, Lfreemarker/core/FMParser;

    invoke-direct {v0, p0}, Lfreemarker/core/FMParser;-><init>(Lfreemarker/core/FMParserTokenManager;)V

    .line 82
    invoke-virtual {p0, v0}, Lfreemarker/core/FMParserTokenManager;->setParser(Lfreemarker/core/FMParser;)V

    return-object v0
.end method

.method private static dummyTemplate()Lfreemarker/template/Template;
    .registers 4

    .line 129
    :try_start_0
    new-instance v0, Lfreemarker/template/Template;

    new-instance v1, Ljava/io/StringReader;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lfreemarker/template/Configuration;->getDefaultConfiguration()Lfreemarker/template/Configuration;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lfreemarker/template/Template;-><init>(Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/Configuration;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    .line 131
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create dummy template"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private escapedExpression(Lfreemarker/core/Expression;)Lfreemarker/core/Expression;
    .registers 3

    .line 454
    iget-object v0, p0, Lfreemarker/core/FMParser;->escapes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 455
    iget-object v0, p0, Lfreemarker/core/FMParser;->escapes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/EscapeBlock;

    invoke-virtual {v0, p1}, Lfreemarker/core/EscapeBlock;->doEscape(Lfreemarker/core/Expression;)Lfreemarker/core/Expression;

    move-result-object p1

    :cond_14
    return-object p1
.end method

.method private forEachDirectiveSymbol()Ljava/lang/String;
    .registers 3

    .line 539
    iget-object v0, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    iget v0, v0, Lfreemarker/core/FMParserTokenManager;->namingConvention:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_b

    const-string v0, "#forEach"

    goto :goto_d

    :cond_b
    const-string v0, "#foreach"

    :goto_d
    return-object v0
.end method

.method private getBoolean(Lfreemarker/core/Expression;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 464
    :try_start_1
    invoke-virtual {p1, v0}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_50

    .line 472
    instance-of v1, v0, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v1, :cond_11

    .line 474
    :try_start_9
    move-object v1, v0

    check-cast v1, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {v1}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result p1
    :try_end_10
    .catch Lfreemarker/template/TemplateModelException; {:try_start_9 .. :try_end_10} :catch_11

    return p1

    :catch_11
    :cond_11
    if-eqz p2, :cond_48

    .line 478
    instance-of p2, v0, Lfreemarker/template/TemplateScalarModel;

    if-eqz p2, :cond_48

    .line 480
    :try_start_17
    check-cast v0, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result p1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_22

    return p1

    :catch_22
    move-exception p2

    .line 482
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\nExpecting boolean (true/false), found: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 483
    invoke-virtual {p1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v0

    .line 487
    :cond_48
    new-instance p2, Lfreemarker/core/ParseException;

    const-string v0, "Expecting boolean (true/false) parameter"

    invoke-direct {p2, v0, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw p2

    :catch_50
    move-exception p2

    .line 466
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nCould not evaluate expression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 468
    invoke-virtual {p1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getFormatFromStdFileExt()Lfreemarker/core/OutputFormat;
    .registers 6

    .line 292
    iget-object v0, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v0}, Lfreemarker/template/Template;->getSourceName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 297
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_12

    return-object v1

    :cond_12
    add-int/lit8 v3, v2, -0x5

    .line 300
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1d

    return-object v1

    :cond_1d
    add-int/lit8 v3, v2, -0x4

    .line 303
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x66

    if-eq v3, v4, :cond_2c

    const/16 v4, 0x46

    if-eq v3, v4, :cond_2c

    return-object v1

    :cond_2c
    add-int/lit8 v3, v2, -0x3

    .line 306
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x74

    if-eq v3, v4, :cond_3b

    const/16 v4, 0x54

    if-eq v3, v4, :cond_3b

    return-object v1

    :cond_3b
    add-int/lit8 v3, v2, -0x2

    .line 309
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6c

    if-eq v3, v4, :cond_4a

    const/16 v4, 0x4c

    if-eq v3, v4, :cond_4a

    return-object v1

    :cond_4a
    add-int/lit8 v2, v2, -0x1

    .line 312
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x68

    if-eq v0, v2, :cond_74

    const/16 v2, 0x48

    if-ne v0, v2, :cond_59

    goto :goto_74

    :cond_59
    const/16 v2, 0x78

    if-eq v0, v2, :cond_63

    const/16 v2, 0x58

    if-ne v0, v2, :cond_62

    goto :goto_63

    :cond_62
    return-object v1

    .line 319
    :cond_63
    :goto_63
    :try_start_63
    iget-object v0, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v0}, Lfreemarker/template/Template;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    sget-object v1, Lfreemarker/core/XMLOutputFormat;->INSTANCE:Lfreemarker/core/XMLOutputFormat;

    invoke-virtual {v1}, Lfreemarker/core/XMLOutputFormat;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/template/Configuration;->getOutputFormat(Ljava/lang/String;)Lfreemarker/core/OutputFormat;

    move-result-object v0

    return-object v0

    .line 316
    :cond_74
    :goto_74
    iget-object v0, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v0}, Lfreemarker/template/Template;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    sget-object v1, Lfreemarker/core/HTMLOutputFormat;->INSTANCE:Lfreemarker/core/HTMLOutputFormat;

    invoke-virtual {v1}, Lfreemarker/core/HTMLOutputFormat;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/template/Configuration;->getOutputFormat(Ljava/lang/String;)Lfreemarker/core/OutputFormat;

    move-result-object v0
    :try_end_84
    .catch Lfreemarker/core/UnregisteredOutputFormatException; {:try_start_63 .. :try_end_84} :catch_85

    return-object v0

    :catch_85
    move-exception v0

    .line 322
    new-instance v1, Lfreemarker/core/BugException;

    const-string v2, "Unregistered std format"

    invoke-direct {v1, v2, v0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private jj_2_1(I)Z
    .registers 5

    .line 4667
    iput p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4668
    :try_start_a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_1()Z

    move-result v2
    :try_end_e
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_a .. :try_end_e} :catch_18
    .catchall {:try_start_a .. :try_end_e} :catchall_13

    xor-int/2addr v0, v2

    .line 4670
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0

    :catchall_13
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    throw v0

    :catch_18
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_10(I)Z
    .registers 5

    .line 4739
    iput p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/16 v1, 0x9

    .line 4740
    :try_start_b
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_10()Z

    move-result v2
    :try_end_f
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_b .. :try_end_f} :catch_19
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    xor-int/2addr v0, v2

    .line 4742
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0

    :catchall_14
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    throw v0

    :catch_19
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_11(I)Z
    .registers 5

    .line 4747
    iput p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/16 v1, 0xa

    .line 4748
    :try_start_b
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_11()Z

    move-result v2
    :try_end_f
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_b .. :try_end_f} :catch_19
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    xor-int/2addr v0, v2

    .line 4750
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0

    :catchall_14
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    throw v0

    :catch_19
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_12(I)Z
    .registers 5

    .line 4755
    iput p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/16 v1, 0xb

    .line 4756
    :try_start_b
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_12()Z

    move-result v2
    :try_end_f
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_b .. :try_end_f} :catch_19
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    xor-int/2addr v0, v2

    .line 4758
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0

    :catchall_14
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    throw v0

    :catch_19
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_13(I)Z
    .registers 5

    .line 4763
    iput p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/16 v1, 0xc

    .line 4764
    :try_start_b
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_13()Z

    move-result v2
    :try_end_f
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_b .. :try_end_f} :catch_19
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    xor-int/2addr v0, v2

    .line 4766
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0

    :catchall_14
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    throw v0

    :catch_19
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_14(I)Z
    .registers 5

    .line 4771
    iput p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/16 v1, 0xd

    .line 4772
    :try_start_b
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_14()Z

    move-result v2
    :try_end_f
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_b .. :try_end_f} :catch_19
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    xor-int/2addr v0, v2

    .line 4774
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0

    :catchall_14
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    throw v0

    :catch_19
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_15(I)Z
    .registers 5

    .line 4779
    iput p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/16 v1, 0xe

    .line 4780
    :try_start_b
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_15()Z

    move-result v2
    :try_end_f
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_b .. :try_end_f} :catch_19
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    xor-int/2addr v0, v2

    .line 4782
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0

    :catchall_14
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    throw v0

    :catch_19
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_16(I)Z
    .registers 5

    .line 4787
    iput p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 4788
    :try_start_b
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_16()Z

    move-result v2
    :try_end_f
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_b .. :try_end_f} :catch_19
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    xor-int/2addr v0, v2

    .line 4790
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0

    :catchall_14
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    throw v0

    :catch_19
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_17(I)Z
    .registers 5

    .line 4795
    iput p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 4796
    :try_start_b
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_17()Z

    move-result v2
    :try_end_f
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_b .. :try_end_f} :catch_19
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    xor-int/2addr v0, v2

    .line 4798
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0

    :catchall_14
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    throw v0

    :catch_19
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_2(I)Z
    .registers 4

    .line 4675
    iput p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v0, 0x1

    .line 4676
    :try_start_9
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_2()Z

    move-result v1
    :try_end_d
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_9 .. :try_end_d} :catch_17
    .catchall {:try_start_9 .. :try_end_d} :catchall_12

    xor-int/2addr v1, v0

    .line 4678
    invoke-direct {p0, v0, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v1

    :catchall_12
    move-exception v1

    invoke-direct {p0, v0, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    throw v1

    :catch_17
    invoke-direct {p0, v0, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_3(I)Z
    .registers 5

    .line 4683
    iput p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 4684
    :try_start_a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_3()Z

    move-result v2
    :try_end_e
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_a .. :try_end_e} :catch_18
    .catchall {:try_start_a .. :try_end_e} :catchall_13

    xor-int/2addr v0, v2

    .line 4686
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0

    :catchall_13
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    throw v0

    :catch_18
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_4(I)Z
    .registers 5

    .line 4691
    iput p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 4692
    :try_start_a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_4()Z

    move-result v2
    :try_end_e
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_a .. :try_end_e} :catch_18
    .catchall {:try_start_a .. :try_end_e} :catchall_13

    xor-int/2addr v0, v2

    .line 4694
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0

    :catchall_13
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    throw v0

    :catch_18
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_5(I)Z
    .registers 5

    .line 4699
    iput p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 4700
    :try_start_a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_5()Z

    move-result v2
    :try_end_e
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_a .. :try_end_e} :catch_18
    .catchall {:try_start_a .. :try_end_e} :catchall_13

    xor-int/2addr v0, v2

    .line 4702
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0

    :catchall_13
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    throw v0

    :catch_18
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_6(I)Z
    .registers 5

    .line 4707
    iput p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 4708
    :try_start_a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_6()Z

    move-result v2
    :try_end_e
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_a .. :try_end_e} :catch_18
    .catchall {:try_start_a .. :try_end_e} :catchall_13

    xor-int/2addr v0, v2

    .line 4710
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0

    :catchall_13
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    throw v0

    :catch_18
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_7(I)Z
    .registers 5

    .line 4715
    iput p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/4 v1, 0x6

    .line 4716
    :try_start_a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_7()Z

    move-result v2
    :try_end_e
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_a .. :try_end_e} :catch_18
    .catchall {:try_start_a .. :try_end_e} :catchall_13

    xor-int/2addr v0, v2

    .line 4718
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0

    :catchall_13
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    throw v0

    :catch_18
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_8(I)Z
    .registers 5

    .line 4723
    iput p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/4 v1, 0x7

    .line 4724
    :try_start_a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_8()Z

    move-result v2
    :try_end_e
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_a .. :try_end_e} :catch_18
    .catchall {:try_start_a .. :try_end_e} :catchall_13

    xor-int/2addr v0, v2

    .line 4726
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0

    :catchall_13
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    throw v0

    :catch_18
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_9(I)Z
    .registers 5

    .line 4731
    iput p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v0, 0x1

    const/16 v1, 0x8

    .line 4732
    :try_start_b
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_9()Z

    move-result v2
    :try_end_f
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_b .. :try_end_f} :catch_19
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    xor-int/2addr v0, v2

    .line 4734
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0

    :catchall_14
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    throw v0

    :catch_19
    invoke-direct {p0, v1, p1}, Lfreemarker/core/FMParser;->jj_save(II)V

    return v0
.end method

.method private jj_3R_100()Z
    .registers 3

    const/16 v0, 0x87

    .line 5054
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 5055
    :cond_a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_98()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const/16 v0, 0x88

    .line 5056
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_101()Z
    .registers 3

    const/16 v0, 0x87

    .line 4936
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 4937
    :cond_a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_109()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const/16 v0, 0x88

    .line 4938
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_102()Z
    .registers 2

    .line 4847
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_88()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_103()Z
    .registers 3

    const/16 v0, 0x81

    .line 5543
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 5545
    :cond_a
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5546
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_110()Z

    move-result v1

    if-eqz v1, :cond_14

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_104()Z
    .registers 2

    const/16 v0, 0x65

    .line 5419
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_105()Z
    .registers 2

    const/16 v0, 0x66

    .line 5401
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_106()Z
    .registers 2

    .line 5377
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_28()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_107()Z
    .registers 4

    const/16 v0, 0x82

    .line 5454
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    return v2

    .line 5455
    :cond_a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_29()Z

    move-result v1

    if-eqz v1, :cond_11

    return v2

    .line 5457
    :cond_11
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5458
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 5459
    iput-object v1, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v0, 0x84

    .line 5460
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_24

    return v2

    .line 5462
    :cond_24
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_2b

    return v2

    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_108()Z
    .registers 3

    .line 5195
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 5198
    :cond_8
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5199
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_111()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_109()Z
    .registers 3

    .line 5147
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5148
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_112()Z

    move-result v1

    if-eqz v1, :cond_a

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_110()Z
    .registers 2

    .line 5468
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_111()Z
    .registers 3

    .line 5176
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x82

    .line 5177
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5178
    :cond_c
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_112()Z
    .registers 3

    .line 5105
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_113()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 5108
    :cond_8
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5109
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_114()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_113()Z
    .registers 3

    .line 5781
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5782
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_115()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 5783
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5784
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_116()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_114()Z
    .registers 3

    .line 5074
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x82

    .line 5075
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5076
    :cond_c
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_113()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_115()Z
    .registers 3

    .line 5733
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_30()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/16 v0, 0x77

    .line 5734
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 5735
    :cond_11
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_33()Z

    move-result v0

    if-eqz v0, :cond_18

    return v1

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_116()Z
    .registers 2

    .line 5677
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_33()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_28()Z
    .registers 3

    .line 5322
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_31()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 5325
    :cond_8
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5326
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_32()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_29()Z
    .registers 2

    .line 5162
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_33()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_30()Z
    .registers 3

    .line 5599
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5600
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_34()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 5601
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5602
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_35()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_31()Z
    .registers 3

    .line 5135
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_36()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 5138
    :cond_8
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5139
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_37()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_32()Z
    .registers 4

    .line 5268
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5269
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_38()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 5270
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5271
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_12

    return v2

    .line 5273
    :cond_12
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_31()Z

    move-result v0

    if-eqz v0, :cond_19

    return v2

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_33()Z
    .registers 3

    .line 5184
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_40()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 5187
    :cond_8
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5188
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_34()Z
    .registers 4

    const/16 v0, 0x87

    .line 5561
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 5563
    :cond_a
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5564
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_42()Z

    move-result v2

    if-eqz v2, :cond_14

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    :cond_14
    const/16 v0, 0x88

    .line 5565
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_35()Z
    .registers 2

    .line 5448
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_43()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_36()Z
    .registers 3

    .line 5658
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5659
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_44()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 5660
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5661
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_45()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 5662
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5663
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_46()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_37()Z
    .registers 4

    .line 5091
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5092
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_47()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    .line 5093
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5094
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_48()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 5095
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5096
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_49()Z

    move-result v0

    if-eqz v0, :cond_1a

    return v2

    .line 5099
    :cond_1a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_36()Z

    move-result v0

    if-eqz v0, :cond_21

    return v2

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_38()Z
    .registers 2

    const/16 v0, 0x78

    .line 5218
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_39()Z
    .registers 2

    const/16 v0, 0x79

    .line 5206
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_40()Z
    .registers 3

    .line 5279
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_50()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 5282
    :cond_8
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5283
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_51()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_41()Z
    .registers 3

    const/16 v0, 0x80

    .line 5168
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 5169
    :cond_a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_40()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_42()Z
    .registers 3

    .line 5492
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_43()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 5495
    :cond_8
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5496
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_52()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_43()Z
    .registers 2

    const/16 v0, 0x8e

    .line 4859
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_44()Z
    .registers 2

    .line 5615
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_53()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_45()Z
    .registers 2

    .line 5609
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_54()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_46()Z
    .registers 2

    .line 5592
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_55()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_47()Z
    .registers 2

    const/16 v0, 0x7a

    .line 5034
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_48()Z
    .registers 2

    const/16 v0, 0x7d

    .line 5028
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_49()Z
    .registers 2

    const/16 v0, 0x7e

    .line 4993
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_50()Z
    .registers 3

    .line 4927
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_56()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 4929
    :cond_8
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 4930
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_57()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_51()Z
    .registers 3

    const/16 v0, 0x7f

    .line 5260
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 5261
    :cond_a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_50()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_52()Z
    .registers 3

    const/16 v0, 0x82

    .line 5434
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 5435
    :cond_a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_43()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_53()Z
    .registers 4

    .line 5390
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x78

    .line 5391
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 5392
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5393
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_58()Z

    move-result v0

    if-eqz v0, :cond_14

    return v2

    .line 5395
    :cond_14
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_55()Z

    move-result v0

    if-eqz v0, :cond_1b

    return v2

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_54()Z
    .registers 4

    .line 5504
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_59()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 5506
    :cond_8
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5507
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_59()Z

    move-result v2

    if-eqz v2, :cond_8

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5509
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_55()Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_55()Z
    .registers 3

    .line 5062
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_60()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 5065
    :cond_8
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5066
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_61()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_56()Z
    .registers 3

    .line 5791
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_62()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 5793
    :cond_8
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5794
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_63()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_57()Z
    .registers 4

    .line 4895
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x6b

    .line 4896
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    .line 4897
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x69

    .line 4898
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 4899
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v0, 0x6a

    .line 4900
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_20

    return v2

    .line 4903
    :cond_20
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_56()Z

    move-result v0

    if-eqz v0, :cond_27

    return v2

    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_58()Z
    .registers 2

    const/16 v0, 0x79

    .line 5371
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_59()Z
    .registers 2

    const/16 v0, 0x81

    .line 5486
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_60()Z
    .registers 3

    .line 4866
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 4867
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_64()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 4868
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 4869
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_65()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 4870
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 4871
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_66()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 4872
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 4873
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_67()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 4874
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 4875
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_68()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 4876
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 4877
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_69()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 4878
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 4879
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_70()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 4880
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 4881
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_71()Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    return v0

    :cond_42
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_61()Z
    .registers 3

    .line 5000
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5001
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_72()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 5002
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5003
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_73()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 5004
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5005
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_74()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 5006
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5007
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_75()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 5008
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5009
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_76()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 5010
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5011
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_77()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    return v0

    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_62()Z
    .registers 3

    .line 5552
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_28()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 5554
    :cond_8
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5555
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_78()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_63()Z
    .registers 4

    .line 5757
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x97

    .line 5758
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3e

    .line 5759
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x76

    .line 5760
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 5761
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x96

    .line 5762
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 5763
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x75

    .line 5764
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 5765
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x74

    .line 5766
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 5767
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v0, 0x73

    .line 5768
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    return v2

    .line 5774
    :cond_3e
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_62()Z

    move-result v0

    if-eqz v0, :cond_45

    return v2

    :cond_45
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_64()Z
    .registers 2

    .line 4841
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_79()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_65()Z
    .registers 2

    .line 4821
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_80()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_66()Z
    .registers 2

    .line 4815
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_81()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_67()Z
    .registers 2

    .line 4803
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_82()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_68()Z
    .registers 2

    .line 5818
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_83()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_69()Z
    .registers 2

    .line 5812
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_43()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_70()Z
    .registers 2

    .line 5806
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_84()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_71()Z
    .registers 2

    .line 5800
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_85()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_72()Z
    .registers 2

    .line 5022
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_86()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_73()Z
    .registers 2

    .line 4987
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_87()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_74()Z
    .registers 2

    .line 4981
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_88()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_75()Z
    .registers 2

    .line 4956
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_89()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_76()Z
    .registers 2

    .line 4950
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_90()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_77()Z
    .registers 2

    .line 4944
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_91()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_78()Z
    .registers 3

    .line 5516
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5517
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_92()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 5518
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5519
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_93()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_79()Z
    .registers 3

    .line 4963
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x61

    .line 4964
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4965
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v0, 0x62

    .line 4966
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_80()Z
    .registers 4

    const/16 v0, 0x89

    .line 5571
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 5573
    :cond_a
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5574
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_94()Z

    move-result v2

    if-eqz v2, :cond_14

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    :cond_14
    const/16 v0, 0x8a

    .line 5575
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_81()Z
    .registers 3

    .line 4917
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x5d

    .line 4918
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4919
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 4920
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_95()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_82()Z
    .registers 3

    .line 5690
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5691
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_96()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 5692
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5693
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_97()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_83()Z
    .registers 3

    const/16 v0, 0x85

    .line 5082
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 5083
    :cond_a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_98()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const/16 v0, 0x86

    .line 5084
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_84()Z
    .registers 3

    const/16 v0, 0x87

    .line 5748
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 5749
    :cond_a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const/16 v0, 0x88

    .line 5750
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_85()Z
    .registers 3

    const/16 v0, 0x63

    .line 5741
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x8e

    .line 5742
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_86()Z
    .registers 4

    const/16 v0, 0x63

    .line 5353
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 5355
    :cond_a
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v2, 0x8e

    .line 5356
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 5357
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v2, 0x7a

    .line 5358
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 5359
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v2, 0x7b

    .line 5360
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 5361
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5362
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_99()Z

    move-result v0

    if-eqz v0, :cond_31

    return v1

    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_87()Z
    .registers 3

    const/16 v0, 0x85

    .line 5154
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 5155
    :cond_a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const/16 v0, 0x86

    .line 5156
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_88()Z
    .registers 3

    const/16 v0, 0x87

    .line 4973
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 4974
    :cond_a
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_98()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const/16 v0, 0x88

    .line 4975
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_89()Z
    .registers 3

    const/16 v0, 0x67

    .line 5333
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x8e

    .line 5334
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 5336
    :cond_13
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5337
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_100()Z

    move-result v1

    if-eqz v1, :cond_1d

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5338
    :cond_1d
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5339
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_101()Z

    move-result v1

    if-eqz v1, :cond_27

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5340
    :cond_27
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5341
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_102()Z

    move-result v1

    if-eqz v1, :cond_31

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_90()Z
    .registers 3

    .line 5582
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x99

    .line 5583
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 5584
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5585
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_103()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_91()Z
    .registers 2

    const/16 v0, 0x68

    .line 5407
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_92()Z
    .registers 4

    .line 5475
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5476
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_104()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 5477
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5478
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_105()Z

    move-result v0

    if-eqz v0, :cond_12

    return v2

    .line 5480
    :cond_12
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_28()Z

    move-result v0

    if-eqz v0, :cond_19

    return v2

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_93()Z
    .registers 3

    const/16 v0, 0x64

    .line 5425
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 5427
    :cond_a
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5428
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_106()Z

    move-result v1

    if-eqz v1, :cond_14

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_94()Z
    .registers 4

    .line 5526
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_29()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 5528
    :cond_8
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v2, 0x82

    .line 5529
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 5530
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v0, 0x84

    .line 5531
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    .line 5533
    :cond_1d
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_24

    return v1

    .line 5535
    :cond_24
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5536
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_107()Z

    move-result v1

    if-eqz v1, :cond_24

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_95()Z
    .registers 2

    const/16 v0, 0x5e

    .line 4853
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_96()Z
    .registers 2

    const/16 v0, 0x5f

    .line 5683
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_97()Z
    .registers 2

    const/16 v0, 0x60

    .line 5671
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_98()Z
    .registers 3

    .line 5225
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5226
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_108()Z

    move-result v1

    if-eqz v1, :cond_a

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_99()Z
    .registers 3

    .line 5291
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x73

    .line 5292
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 5293
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x74

    .line 5294
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 5295
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x75

    .line 5296
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 5297
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x76

    .line 5298
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 5299
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x5f

    .line 5300
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 5301
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x60

    .line 5302
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 5303
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x8b

    .line 5304
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 5305
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x8c

    .line 5306
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 5307
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v0, 0x8d

    .line 5308
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x1

    return v0

    :cond_5c
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_1()Z
    .registers 3

    .line 5233
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x78

    .line 5234
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 5235
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v0, 0x79

    .line 5236
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_10()Z
    .registers 3

    .line 5700
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_30()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/16 v0, 0x77

    .line 5701
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_11()Z
    .registers 4

    .line 5622
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x82

    .line 5623
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5624
    :cond_c
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x8e

    .line 5625
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_22

    .line 5626
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v0, 0x5d

    .line 5627
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_22

    return v2

    .line 5629
    :cond_22
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x69

    .line 5630
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 5631
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x6c

    .line 5632
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 5633
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x6d

    .line 5634
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 5635
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x6e

    .line 5636
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 5637
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x6f

    .line 5638
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 5639
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x70

    .line 5640
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 5641
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x71

    .line 5642
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 5643
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v0, 0x72

    .line 5644
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_73

    return v2

    :cond_73
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_12()Z
    .registers 3

    const/16 v0, 0x8e

    .line 4909
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x69

    .line 4910
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_13()Z
    .registers 2

    const/16 v0, 0x87

    .line 5383
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_14()Z
    .registers 3

    const/16 v0, 0x8e

    .line 5441
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x69

    .line 5442
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_15()Z
    .registers 3

    .line 5250
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x52

    .line 5251
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 5252
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v0, 0x54

    .line 5253
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_16()Z
    .registers 2

    const/16 v0, 0x53

    .line 5243
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_17()Z
    .registers 3

    .line 5117
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x4f

    .line 5118
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5119
    :cond_c
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x4d

    .line 5120
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 5121
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v0, 0x4c

    .line 5122
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_2()Z
    .registers 3

    .line 5041
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x7a

    .line 5042
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 5043
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x7d

    .line 5044
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 5045
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v0, 0x7e

    .line 5046
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_3()Z
    .registers 3

    .line 4828
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x6b

    .line 4829
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 4830
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x69

    .line 4831
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 4832
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v0, 0x6a

    .line 4833
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_4()Z
    .registers 4

    .line 5708
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x97

    .line 5709
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 5710
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x76

    .line 5711
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 5712
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x96

    .line 5713
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 5714
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x75

    .line 5715
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 5716
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v1, 0x74

    .line 5717
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 5718
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5719
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 5720
    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    const/16 v0, 0x73

    .line 5721
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    return v0

    :cond_46
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_5()Z
    .registers 2

    .line 5347
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_28()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_6()Z
    .registers 2

    const/16 v0, 0x7f

    .line 5212
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_7()Z
    .registers 2

    const/16 v0, 0x80

    .line 5129
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_8()Z
    .registers 2

    .line 5413
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_9()Z
    .registers 2

    const/16 v0, 0x87

    .line 4809
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_add_error_token(II)V
    .registers 9

    const/16 v0, 0x64

    if-lt p2, v0, :cond_5

    return-void

    .line 6031
    :cond_5
    iget v0, p0, Lfreemarker/core/FMParser;->jj_endpos:I

    add-int/lit8 v1, v0, 0x1

    if-ne p2, v1, :cond_14

    .line 6032
    iget-object p2, p0, Lfreemarker/core/FMParser;->jj_lasttokens:[I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lfreemarker/core/FMParser;->jj_endpos:I

    aput p1, p2, v0

    goto :goto_62

    :cond_14
    if-eqz v0, :cond_62

    .line 6034
    new-array v0, v0, [I

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_expentry:[I

    const/4 v0, 0x0

    move v1, v0

    .line 6036
    :goto_1c
    iget v2, p0, Lfreemarker/core/FMParser;->jj_endpos:I

    if-ge v1, v2, :cond_2b

    .line 6037
    iget-object v2, p0, Lfreemarker/core/FMParser;->jj_expentry:[I

    iget-object v3, p0, Lfreemarker/core/FMParser;->jj_lasttokens:[I

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 6040
    :cond_2b
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 6041
    array-length v3, v2

    iget-object v4, p0, Lfreemarker/core/FMParser;->jj_expentry:[I

    array-length v4, v4

    if-ne v3, v4, :cond_31

    move v3, v0

    .line 6044
    :goto_44
    iget-object v4, p0, Lfreemarker/core/FMParser;->jj_expentry:[I

    array-length v5, v4

    if-ge v3, v5, :cond_53

    .line 6045
    aget v5, v2, v3

    aget v4, v4, v3

    if-eq v5, v4, :cond_50

    goto :goto_31

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 6052
    :cond_53
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_58
    if-eqz p2, :cond_62

    .line 6059
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_lasttokens:[I

    iput p2, p0, Lfreemarker/core/FMParser;->jj_endpos:I

    add-int/lit8 p2, p2, -0x1

    aput p1, v0, p2

    :cond_62
    :goto_62
    return-void
.end method

.method private jj_consume_token(I)Lfreemarker/core/Token;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 5947
    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iget-object v1, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iget-object v1, v1, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iput-object v1, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    goto :goto_19

    .line 5948
    :cond_d
    iget-object v1, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iget-object v2, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    invoke-virtual {v2}, Lfreemarker/core/FMParserTokenManager;->getNextToken()Lfreemarker/core/Token;

    move-result-object v2

    iput-object v2, v1, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iput-object v2, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    :goto_19
    const/4 v1, -0x1

    .line 5949
    iput v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    .line 5950
    iget-object v1, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iget v1, v1, Lfreemarker/core/Token;->kind:I

    if-ne v1, p1, :cond_50

    .line 5951
    iget p1, p0, Lfreemarker/core/FMParser;->jj_gen:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lfreemarker/core/FMParser;->jj_gen:I

    .line 5952
    iget p1, p0, Lfreemarker/core/FMParser;->jj_gc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lfreemarker/core/FMParser;->jj_gc:I

    const/16 v0, 0x64

    if-le p1, v0, :cond_4d

    const/4 p1, 0x0

    .line 5953
    iput p1, p0, Lfreemarker/core/FMParser;->jj_gc:I

    .line 5954
    :goto_35
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_2_rtns:[Lfreemarker/core/FMParser$JJCalls;

    array-length v1, v0

    if-ge p1, v1, :cond_4d

    .line 5955
    aget-object v0, v0, p1

    :goto_3c
    if-eqz v0, :cond_4a

    .line 5957
    iget v1, v0, Lfreemarker/core/FMParser$JJCalls;->gen:I

    iget v2, p0, Lfreemarker/core/FMParser;->jj_gen:I

    if-ge v1, v2, :cond_47

    const/4 v1, 0x0

    iput-object v1, v0, Lfreemarker/core/FMParser$JJCalls;->first:Lfreemarker/core/Token;

    .line 5958
    :cond_47
    iget-object v0, v0, Lfreemarker/core/FMParser$JJCalls;->next:Lfreemarker/core/FMParser$JJCalls;

    goto :goto_3c

    :cond_4a
    add-int/lit8 p1, p1, 0x1

    goto :goto_35

    .line 5962
    :cond_4d
    iget-object p1, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    return-object p1

    .line 5964
    :cond_50
    iput-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    .line 5965
    iput p1, p0, Lfreemarker/core/FMParser;->jj_kind:I

    .line 5966
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->generateParseException()Lfreemarker/core/ParseException;

    move-result-object p1

    throw p1
.end method

.method private static jj_la1_init_0()V
    .registers 1

    const/16 v0, 0x74

    .line 5847
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lfreemarker/core/FMParser;->jj_la1_0:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x200
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000
        0x2000000
        0x0
        0x0
        0x70000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x600000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8000
        0x0
        0x8000
        0x8000
        0x0
        -0x82c0
        0x0
        0x0
        0x0
        0x0
        -0x82c0
        -0x82c0
        -0x82c0
        -0x82c0
        -0x82c0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static jj_la1_init_1()V
    .registers 1

    const/16 v0, 0x74

    .line 5850
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lfreemarker/core/FMParser;->jj_la1_1:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x400000
        0x300
        0x0
        0x0
        0x400000
        0x0
        0x80
        0x0
        0x0
        0x0
        0x0
        0x2000000
        0x4000000
        0x0
        -0x10000000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3800
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xc000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x6
        0x0
        0x0
        0x0
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x7ffff1
        0x0
        0x0
        0x0
        0x0
        -0x7ffff1
        -0x7ffff1
        -0x7ffff1
        -0x7ffff1
        -0x7ffff1
        0x0
        0x0
        0x6
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static jj_la1_init_2()V
    .registers 1

    const/16 v0, 0x74

    .line 5853
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lfreemarker/core/FMParser;->jj_la1_2:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x0
        -0x20000000
        -0x20000000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x60000000
        0x0
        -0x20000000
        0x0
        0x0
        0x0
        -0x80000000
        -0x80000000
        0x60000000
        -0x80000000
        0x0
        0x0
        0x0
        -0x20000000
        0x140000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x20000000
        0x0
        0x18
        0x0
        0x0
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x20000000
        0x0
        -0x20000000
        -0x20000000
        0x0
        -0x20000000
        0x0
        0x0
        0x0
        0x0
        0x8000
        0x1
        0x8000
        0x1
        0x1
        0x0
        0x57e
        0x38000
        0x38000
        0x0
        0x0
        0x1f857e
        0x1f857e
        0x1f857e
        0x1f857e
        0x1f857e
        0x1f8000
        0x1f8000
        0x8000
        0x8000
        0x8000
        0x0
        0x3000
        0x0
        0x0
        0x1f8000
        0x38000
        0x1f8000
    .end array-data
.end method

.method private static jj_la1_init_3()V
    .registers 1

    const/16 v0, 0x74

    .line 5856
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lfreemarker/core/FMParser;->jj_la1_3:[I

    return-void

    :array_a
    .array-data 4
        0x188
        0x188
        0xf
        0x300000f
        0x0
        0x3000000
        0x3000000
        0x64000000
        0xe00
        0x780000
        0x60
        0x70
        0x70
        0x6
        0x0
        0x0
        0x300000f
        0x0
        0x0
        0x0
        0x780001
        0xc780001
        0x0
        0x1
        0x0
        0x0
        0x0
        0x300000f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x300000f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1f200
        0x60000
        0x7f200
        0x0
        0x1f200
        0x60000
        0x7f200
        0x0
        0x0
        0x0
        0x7f200
        0x0
        0x0
        0x0
        0x0
        0x0
        0x10000000
        0x200
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x300000f
        0x0
        0x300000f
        0x300000f
        0x0
        0x300000f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static jj_la1_init_4()V
    .registers 1

    const/16 v0, 0x74

    .line 5859
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lfreemarker/core/FMParser;->jj_la1_4:[I

    return-void

    :array_a
    .array-data 4
        0x20000a2
        0x20000a2
        0x42a0
        0x42a2
        0x2
        0x0
        0x0
        0x0
        0x0
        0xc00000
        0x0
        0x0
        0x0
        0x0
        0x4000
        0x2000002
        0x42a2
        0x4
        0x4000
        0x4080
        0x3800
        0x7800
        0x0
        0x0
        0x14
        0x4
        0x14
        0x42a2
        0x0
        0x8
        0x0
        0x0
        0x0
        0x4
        0x1000
        0x0
        0x4
        0x0
        0x2000
        0x42a2
        0x2000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x0
        0x0
        0x0
        0x800
        0x800
        0x0
        0x100800
        0x8
        0x4000
        0x0
        0x80
        0x4000
        0x0
        0x0
        0x4
        0x100
        0x0
        0x1000000
        0x1000000
        0x1000004
        0x1000000
        0x1000000
        0x1004000
        0x8
        0x300000
        0x100
        0x4000
        0x42a6
        0x4
        0x42a2
        0x42a6
        0x4
        0x42a2
        0x0
        0x8
        0x4000
        0x300000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x300000
        0x0
        0x0
        0x0
        0x3c000000    # 0.0078125f
        0x3c000000    # 0.0078125f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000
        0x0
        0x4
        0x4000
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private jj_ntk_f()I
    .registers 3

    .line 6014
    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iget-object v0, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_nt:Lfreemarker/core/Token;

    if-nez v0, :cond_17

    .line 6015
    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iget-object v1, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    invoke-virtual {v1}, Lfreemarker/core/FMParserTokenManager;->getNextToken()Lfreemarker/core/Token;

    move-result-object v1

    iput-object v1, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iget v0, v1, Lfreemarker/core/Token;->kind:I

    iput v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    return v0

    .line 6017
    :cond_17
    iget v0, v0, Lfreemarker/core/Token;->kind:I

    iput v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    return v0
.end method

.method private jj_rescan_token()V
    .registers 6

    const/4 v0, 0x1

    .line 6119
    iput-boolean v0, p0, Lfreemarker/core/FMParser;->jj_rescan:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    const/16 v2, 0x11

    if-ge v1, v2, :cond_6b

    .line 6122
    :try_start_9
    iget-object v2, p0, Lfreemarker/core/FMParser;->jj_2_rtns:[Lfreemarker/core/FMParser$JJCalls;

    aget-object v2, v2, v1

    .line 6125
    :cond_d
    iget v3, v2, Lfreemarker/core/FMParser$JJCalls;->gen:I

    iget v4, p0, Lfreemarker/core/FMParser;->jj_gen:I

    if-le v3, v4, :cond_64

    .line 6126
    iget v3, v2, Lfreemarker/core/FMParser$JJCalls;->arg:I

    iput v3, p0, Lfreemarker/core/FMParser;->jj_la:I

    iget-object v3, v2, Lfreemarker/core/FMParser$JJCalls;->first:Lfreemarker/core/Token;

    iput-object v3, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v3, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    packed-switch v1, :pswitch_data_6e

    goto :goto_64

    .line 6144
    :pswitch_21
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_17()Z

    goto :goto_64

    .line 6143
    :pswitch_25
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_16()Z

    goto :goto_64

    .line 6142
    :pswitch_29
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_15()Z

    goto :goto_64

    .line 6141
    :pswitch_2d
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_14()Z

    goto :goto_64

    .line 6140
    :pswitch_31
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_13()Z

    goto :goto_64

    .line 6139
    :pswitch_35
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_12()Z

    goto :goto_64

    .line 6138
    :pswitch_39
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_11()Z

    goto :goto_64

    .line 6137
    :pswitch_3d
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_10()Z

    goto :goto_64

    .line 6136
    :pswitch_41
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_9()Z

    goto :goto_64

    .line 6135
    :pswitch_45
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_8()Z

    goto :goto_64

    .line 6134
    :pswitch_49
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_7()Z

    goto :goto_64

    .line 6133
    :pswitch_4d
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_6()Z

    goto :goto_64

    .line 6132
    :pswitch_51
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_5()Z

    goto :goto_64

    .line 6131
    :pswitch_55
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_4()Z

    goto :goto_64

    .line 6130
    :pswitch_59
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_3()Z

    goto :goto_64

    .line 6129
    :pswitch_5d
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_2()Z

    goto :goto_64

    .line 6128
    :pswitch_61
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_3_1()Z

    .line 6147
    :cond_64
    :goto_64
    iget-object v2, v2, Lfreemarker/core/FMParser$JJCalls;->next:Lfreemarker/core/FMParser$JJCalls;
    :try_end_66
    .catch Lfreemarker/core/FMParser$LookaheadSuccess; {:try_start_9 .. :try_end_66} :catch_68

    if-nez v2, :cond_d

    :catch_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6152
    :cond_6b
    iput-boolean v0, p0, Lfreemarker/core/FMParser;->jj_rescan:Z

    return-void

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
    .end packed-switch
.end method

.method private jj_save(II)V
    .registers 5

    .line 6156
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_2_rtns:[Lfreemarker/core/FMParser$JJCalls;

    aget-object p1, v0, p1

    .line 6157
    :goto_4
    iget v0, p1, Lfreemarker/core/FMParser$JJCalls;->gen:I

    iget v1, p0, Lfreemarker/core/FMParser;->jj_gen:I

    if-le v0, v1, :cond_1a

    .line 6158
    iget-object v0, p1, Lfreemarker/core/FMParser$JJCalls;->next:Lfreemarker/core/FMParser$JJCalls;

    if-nez v0, :cond_17

    new-instance v0, Lfreemarker/core/FMParser$JJCalls;

    invoke-direct {v0}, Lfreemarker/core/FMParser$JJCalls;-><init>()V

    iput-object v0, p1, Lfreemarker/core/FMParser$JJCalls;->next:Lfreemarker/core/FMParser$JJCalls;

    move-object p1, v0

    goto :goto_1a

    .line 6159
    :cond_17
    iget-object p1, p1, Lfreemarker/core/FMParser$JJCalls;->next:Lfreemarker/core/FMParser$JJCalls;

    goto :goto_4

    .line 6162
    :cond_1a
    :goto_1a
    iget v0, p0, Lfreemarker/core/FMParser;->jj_gen:I

    add-int/2addr v0, p2

    iget v1, p0, Lfreemarker/core/FMParser;->jj_la:I

    sub-int/2addr v0, v1

    iput v0, p1, Lfreemarker/core/FMParser$JJCalls;->gen:I

    .line 6163
    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iput-object v0, p1, Lfreemarker/core/FMParser$JJCalls;->first:Lfreemarker/core/Token;

    .line 6164
    iput p2, p1, Lfreemarker/core/FMParser$JJCalls;->arg:I

    return-void
.end method

.method private jj_scan_token(I)Z
    .registers 7

    .line 5973
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_28

    .line 5974
    iget v1, p0, Lfreemarker/core/FMParser;->jj_la:I

    sub-int/2addr v1, v2

    iput v1, p0, Lfreemarker/core/FMParser;->jj_la:I

    .line 5975
    iget-object v0, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    if-nez v0, :cond_1f

    .line 5976
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iget-object v1, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    invoke-virtual {v1}, Lfreemarker/core/FMParserTokenManager;->getNextToken()Lfreemarker/core/Token;

    move-result-object v1

    iput-object v1, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iput-object v1, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v1, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    goto :goto_2c

    .line 5978
    :cond_1f
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iget-object v0, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    goto :goto_2c

    .line 5981
    :cond_28
    iget-object v0, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    .line 5983
    :goto_2c
    iget-boolean v0, p0, Lfreemarker/core/FMParser;->jj_rescan:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 5984
    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    move v3, v1

    :goto_34
    if-eqz v0, :cond_3f

    .line 5985
    iget-object v4, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    if-eq v0, v4, :cond_3f

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    goto :goto_34

    :cond_3f
    if-eqz v0, :cond_44

    .line 5986
    invoke-direct {p0, p1, v3}, Lfreemarker/core/FMParser;->jj_add_error_token(II)V

    .line 5988
    :cond_44
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iget v0, v0, Lfreemarker/core/Token;->kind:I

    if-eq v0, p1, :cond_4b

    return v2

    .line 5989
    :cond_4b
    iget p1, p0, Lfreemarker/core/FMParser;->jj_la:I

    if-nez p1, :cond_59

    iget-object p1, p0, Lfreemarker/core/FMParser;->jj_scanpos:Lfreemarker/core/Token;

    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_lastpos:Lfreemarker/core/Token;

    if-eq p1, v0, :cond_56

    goto :goto_59

    :cond_56
    iget-object p1, p0, Lfreemarker/core/FMParser;->jj_ls:Lfreemarker/core/FMParser$LookaheadSuccess;

    throw p1

    :cond_59
    :goto_59
    return v1
.end method

.method private notBooleanLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 394
    instance-of v0, p1, Lfreemarker/core/BooleanLiteral;

    if-nez v0, :cond_5

    return-void

    .line 395
    :cond_5
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Expecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v0
.end method

.method private notHashLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 403
    instance-of v0, p1, Lfreemarker/core/HashLiteral;

    if-nez v0, :cond_5

    return-void

    .line 404
    :cond_5
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found hash literal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Expecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v0
.end method

.method private notListLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 416
    instance-of v0, p1, Lfreemarker/core/ListLiteral;

    if-nez v0, :cond_5

    return-void

    .line 417
    :cond_5
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found list literal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Expecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v0
.end method

.method private notNumberLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 383
    instance-of v0, p1, Lfreemarker/core/NumberLiteral;

    if-nez v0, :cond_5

    return-void

    .line 384
    :cond_5
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found number literal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Expecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v0
.end method

.method private notStringLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 372
    instance-of v0, p1, Lfreemarker/core/StringLiteral;

    if-nez v0, :cond_5

    return-void

    .line 373
    :cond_5
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found string literal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Expecting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v0
.end method

.method private numberLiteralOnly(Lfreemarker/core/Expression;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 427
    const-string v0, "number"

    invoke-direct {p0, p1, v0}, Lfreemarker/core/FMParser;->notStringLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 428
    invoke-direct {p0, p1, v0}, Lfreemarker/core/FMParser;->notListLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 429
    invoke-direct {p0, p1, v0}, Lfreemarker/core/FMParser;->notHashLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 430
    invoke-direct {p0, p1, v0}, Lfreemarker/core/FMParser;->notBooleanLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    return-void
.end method

.method private peekIteratorBlockContext()Lfreemarker/core/FMParser$ParserIteratorBlockContext;
    .registers 3

    .line 511
    iget-object v0, p0, Lfreemarker/core/FMParser;->iteratorBlockContexts:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_17

    .line 512
    iget-object v1, p0, Lfreemarker/core/FMParser;->iteratorBlockContexts:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/FMParser$ParserIteratorBlockContext;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return-object v0
.end method

.method private popIteratorBlockContext()V
    .registers 3

    .line 507
    iget-object v0, p0, Lfreemarker/core/FMParser;->iteratorBlockContexts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private pushIteratorBlockContext()Lfreemarker/core/FMParser$ParserIteratorBlockContext;
    .registers 3

    .line 498
    iget-object v0, p0, Lfreemarker/core/FMParser;->iteratorBlockContexts:Ljava/util/List;

    if-nez v0, :cond_c

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfreemarker/core/FMParser;->iteratorBlockContexts:Ljava/util/List;

    .line 501
    :cond_c
    new-instance v0, Lfreemarker/core/FMParser$ParserIteratorBlockContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;-><init>(Lfreemarker/core/FMParser$1;)V

    .line 502
    iget-object v1, p0, Lfreemarker/core/FMParser;->iteratorBlockContexts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static readerToTokenManager(Ljava/io/Reader;Lfreemarker/core/ParserConfiguration;)Lfreemarker/core/FMParserTokenManager;
    .registers 4

    .line 166
    new-instance v0, Lfreemarker/core/SimpleCharStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lfreemarker/core/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    .line 167
    invoke-interface {p1}, Lfreemarker/core/ParserConfiguration;->getTabSize()I

    move-result p0

    invoke-virtual {v0, p0}, Lfreemarker/core/SimpleCharStream;->setTabSize(I)V

    .line 168
    new-instance p0, Lfreemarker/core/FMParserTokenManager;

    invoke-direct {p0, v0}, Lfreemarker/core/FMParserTokenManager;-><init>(Lfreemarker/core/SimpleCharStream;)V

    return-object p0
.end method

.method private recalculateAutoEscapingField()V
    .registers 5

    .line 331
    iget-object v0, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    instance-of v1, v0, Lfreemarker/core/MarkupOutputFormat;

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    .line 332
    iget v1, p0, Lfreemarker/core/FMParser;->autoEscapingPolicy:I

    const/16 v3, 0x15

    if-ne v1, v3, :cond_16

    .line 333
    check-cast v0, Lfreemarker/core/MarkupOutputFormat;

    invoke-virtual {v0}, Lfreemarker/core/MarkupOutputFormat;->isAutoEscapedByDefault()Z

    move-result v0

    iput-boolean v0, p0, Lfreemarker/core/FMParser;->autoEscaping:Z

    goto :goto_3e

    :cond_16
    const/16 v0, 0x16

    if-ne v1, v0, :cond_1e

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lfreemarker/core/FMParser;->autoEscaping:Z

    goto :goto_3e

    :cond_1e
    const/16 v0, 0x14

    if-ne v1, v0, :cond_25

    .line 337
    iput-boolean v2, p0, Lfreemarker/core/FMParser;->autoEscaping:Z

    goto :goto_3e

    .line 339
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled autoEscaping ENUM: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lfreemarker/core/FMParser;->autoEscapingPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_3c
    iput-boolean v2, p0, Lfreemarker/core/FMParser;->autoEscaping:Z

    :goto_3e
    return-void
.end method

.method private stringLiteralOnly(Lfreemarker/core/Expression;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 437
    const-string v0, "string"

    invoke-direct {p0, p1, v0}, Lfreemarker/core/FMParser;->notNumberLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 438
    invoke-direct {p0, p1, v0}, Lfreemarker/core/FMParser;->notListLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 439
    invoke-direct {p0, p1, v0}, Lfreemarker/core/FMParser;->notHashLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 440
    invoke-direct {p0, p1, v0}, Lfreemarker/core/FMParser;->notBooleanLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final AdditiveExpression()Lfreemarker/core/Expression;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 774
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MultiplicativeExpression()Lfreemarker/core/Expression;

    move-result-object v0

    :goto_4
    const v1, 0x7fffffff

    .line 778
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_2_1(I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 783
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_16
    const/4 v3, 0x0

    const/16 v4, 0x78

    if-eq v1, v4, :cond_34

    const/16 v4, 0x79

    if-ne v1, v4, :cond_24

    .line 790
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move v1, v3

    goto :goto_38

    .line 795
    :cond_24
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/4 v1, 0x6

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v1

    .line 796
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 797
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 785
    :cond_34
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    const/4 v1, 0x1

    .line 799
    :goto_38
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MultiplicativeExpression()Lfreemarker/core/Expression;

    move-result-object v2

    if-eqz v1, :cond_44

    .line 803
    new-instance v1, Lfreemarker/core/AddConcatExpression;

    invoke-direct {v1, v0, v2}, Lfreemarker/core/AddConcatExpression;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V

    goto :goto_4f

    .line 805
    :cond_44
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->numberLiteralOnly(Lfreemarker/core/Expression;)V

    .line 806
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->numberLiteralOnly(Lfreemarker/core/Expression;)V

    .line 807
    new-instance v1, Lfreemarker/core/ArithmeticExpression;

    invoke-direct {v1, v0, v2, v3}, Lfreemarker/core/ArithmeticExpression;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;I)V

    .line 809
    :goto_4f
    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v3, v0, v2}, Lfreemarker/core/Expression;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V

    move-object v0, v1

    goto :goto_4

    :cond_56
    return-object v0
.end method

.method public final AndExpression()Lfreemarker/core/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 1021
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->EqualityExpression()Lfreemarker/core/Expression;

    move-result-object v0

    :goto_4
    const v1, 0x7fffffff

    .line 1025
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_2_6(I)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x7f

    .line 1030
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1031
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->EqualityExpression()Lfreemarker/core/Expression;

    move-result-object v1

    .line 1032
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->booleanLiteralOnly(Lfreemarker/core/Expression;)V

    .line 1033
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->booleanLiteralOnly(Lfreemarker/core/Expression;)V

    .line 1034
    new-instance v2, Lfreemarker/core/AndExpression;

    invoke-direct {v2, v0, v1}, Lfreemarker/core/AndExpression;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V

    .line 1035
    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v2, v3, v0, v1}, Lfreemarker/core/Expression;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V

    move-object v0, v2

    goto :goto_4

    :cond_28
    return-object v0
.end method

.method public final Assign()Lfreemarker/core/TemplateElement;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2334
    iget v2, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_10
    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_332

    .line 2355
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x2e

    iget v4, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v4, v1, v2

    .line 2356
    invoke-direct {v0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2357
    new-instance v1, Lfreemarker/core/ParseException;

    invoke-direct {v1}, Lfreemarker/core/ParseException;-><init>()V

    throw v1

    :pswitch_27
    const/16 v2, 0x12

    .line 2346
    invoke-direct {v0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 2349
    iget-boolean v7, v0, Lfreemarker/core/FMParser;->inMacro:Z

    if-nez v7, :cond_40

    iget-boolean v7, v0, Lfreemarker/core/FMParser;->inFunction:Z

    if-eqz v7, :cond_36

    goto :goto_40

    .line 2350
    :cond_36
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v3, "Local variable assigned outside a macro."

    iget-object v4, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v3, v4, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :cond_40
    :goto_40
    move v10, v4

    goto :goto_51

    :pswitch_42
    const/16 v2, 0x11

    .line 2341
    invoke-direct {v0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    move v10, v5

    goto :goto_51

    :pswitch_4a
    const/16 v2, 0x10

    .line 2336
    invoke-direct {v0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    move v10, v6

    .line 2359
    :goto_51
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->IdentifierOrStringLiteral()Lfreemarker/core/Expression;

    move-result-object v7

    .line 2360
    instance-of v8, v7, Lfreemarker/core/StringLiteral;

    if-eqz v8, :cond_61

    move-object v8, v7

    check-cast v8, Lfreemarker/core/StringLiteral;

    .line 2361
    invoke-virtual {v8}, Lfreemarker/core/StringLiteral;->getAsString()Ljava/lang/String;

    move-result-object v8

    goto :goto_68

    :cond_61
    move-object v8, v7

    check-cast v8, Lfreemarker/core/Identifier;

    .line 2362
    invoke-virtual {v8}, Lfreemarker/core/Identifier;->getName()Ljava/lang/String;

    move-result-object v8

    :goto_68
    move-object v9, v8

    .line 2363
    iget v8, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v8, v3, :cond_71

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v8

    :cond_71
    const-string v11, "Cannot assign to namespace here."

    const/16 v12, 0x8b

    const/16 v13, 0x69

    if-eq v8, v13, :cond_123

    const/16 v15, 0x94

    if-eq v8, v12, :cond_93

    if-eq v8, v15, :cond_93

    packed-switch v8, :pswitch_data_33c

    .line 2620
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x39

    iget v4, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v4, v1, v2

    .line 2621
    invoke-direct {v0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2622
    new-instance v1, Lfreemarker/core/ParseException;

    invoke-direct {v1}, Lfreemarker/core/ParseException;-><init>()V

    throw v1

    .line 2571
    :cond_93
    iget v1, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v3, :cond_9b

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_9b
    if-eq v1, v12, :cond_a7

    .line 2581
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v7, 0x37

    iget v8, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v8, v1, v7

    const/4 v11, 0x0

    goto :goto_b2

    .line 2573
    :cond_a7
    invoke-direct {v0, v12}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    .line 2574
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v7

    if-ne v10, v6, :cond_11b

    move-object v11, v7

    .line 2584
    :goto_b2
    invoke-direct {v0, v15}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2585
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v8

    .line 2586
    iget v1, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v3, :cond_c1

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_c1
    const-string v7, "Mismatched assignment tags."

    packed-switch v1, :pswitch_data_34e

    .line 2608
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x38

    iget v4, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v4, v1, v2

    .line 2609
    invoke-direct {v0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2610
    new-instance v1, Lfreemarker/core/ParseException;

    invoke-direct {v1}, Lfreemarker/core/ParseException;-><init>()V

    throw v1

    :pswitch_d7
    const/16 v1, 0x2d

    .line 2595
    invoke-direct {v0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    if-ne v10, v6, :cond_e0

    goto :goto_103

    .line 2597
    :cond_e0
    new-instance v2, Lfreemarker/core/ParseException;

    iget-object v3, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v2, v7, v3, v1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v2

    :pswitch_e8
    const/16 v1, 0x2c

    .line 2602
    invoke-direct {v0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    if-ne v10, v5, :cond_f1

    goto :goto_103

    .line 2603
    :cond_f1
    new-instance v2, Lfreemarker/core/ParseException;

    const-string v3, "Mismatched assignment tags"

    iget-object v4, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v2, v3, v4, v1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v2

    :pswitch_fb
    const/16 v1, 0x2b

    .line 2588
    invoke-direct {v0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    if-ne v10, v4, :cond_113

    .line 2612
    :goto_103
    new-instance v3, Lfreemarker/core/BlockAssignment;

    .line 2614
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->getMarkupOutputFormat()Lfreemarker/core/MarkupOutputFormat;

    move-result-object v12

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lfreemarker/core/BlockAssignment;-><init>(Lfreemarker/core/TemplateElements;Ljava/lang/String;ILfreemarker/core/Expression;Lfreemarker/core/MarkupOutputFormat;)V

    .line 2615
    iget-object v4, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v4, v2, v1}, Lfreemarker/core/BlockAssignment;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3

    .line 2590
    :cond_113
    new-instance v2, Lfreemarker/core/ParseException;

    iget-object v3, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v2, v7, v3, v1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v2

    .line 2576
    :cond_11b
    new-instance v2, Lfreemarker/core/ParseException;

    iget-object v3, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v2, v11, v3, v1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v2

    .line 2372
    :cond_123
    :pswitch_123
    iget v4, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v4, v3, :cond_12b

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v4

    :cond_12b
    const/16 v5, 0x70

    const/16 v8, 0x6f

    const/16 v15, 0x6e

    const/16 v14, 0x6d

    const/16 v12, 0x72

    const/16 v6, 0x71

    if-eq v4, v13, :cond_175

    packed-switch v4, :pswitch_data_358

    .line 2434
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x31

    iget v4, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v4, v1, v2

    .line 2435
    invoke-direct {v0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2436
    new-instance v1, Lfreemarker/core/ParseException;

    invoke-direct {v1}, Lfreemarker/core/ParseException;-><init>()V

    throw v1

    .line 2415
    :pswitch_14d
    iget v4, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v4, v3, :cond_155

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v4

    :cond_155
    if-eq v4, v6, :cond_16e

    if-ne v4, v12, :cond_15d

    .line 2421
    invoke-direct {v0, v12}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    goto :goto_171

    .line 2425
    :cond_15d
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x30

    iget v4, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v4, v1, v2

    .line 2426
    invoke-direct {v0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2427
    new-instance v1, Lfreemarker/core/ParseException;

    invoke-direct {v1}, Lfreemarker/core/ParseException;-><init>()V

    throw v1

    .line 2417
    :cond_16e
    invoke-direct {v0, v6}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2429
    :goto_171
    iget-object v4, v0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    const/4 v14, 0x0

    goto :goto_1b4

    .line 2379
    :cond_175
    :pswitch_175
    iget v4, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v4, v3, :cond_17d

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v4

    :cond_17d
    if-eq v4, v13, :cond_1a9

    packed-switch v4, :pswitch_data_36a

    .line 2405
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x2f

    iget v4, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v4, v1, v2

    .line 2406
    invoke-direct {v0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2407
    new-instance v1, Lfreemarker/core/ParseException;

    invoke-direct {v1}, Lfreemarker/core/ParseException;-><init>()V

    throw v1

    .line 2401
    :pswitch_193
    invoke-direct {v0, v5}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    goto :goto_1ac

    .line 2397
    :pswitch_197
    invoke-direct {v0, v8}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    goto :goto_1ac

    .line 2393
    :pswitch_19b
    invoke-direct {v0, v15}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    goto :goto_1ac

    .line 2389
    :pswitch_19f
    invoke-direct {v0, v14}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    goto :goto_1ac

    :pswitch_1a3
    const/16 v4, 0x6c

    .line 2385
    invoke-direct {v0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    goto :goto_1ac

    .line 2381
    :cond_1a9
    invoke-direct {v0, v13}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2409
    :goto_1ac
    iget-object v4, v0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    .line 2410
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v16

    move-object/from16 v14, v16

    .line 2438
    :goto_1b4
    new-instance v15, Lfreemarker/core/Assignment;

    iget v8, v4, Lfreemarker/core/Token;->kind:I

    invoke-direct {v15, v9, v8, v14, v10}, Lfreemarker/core/Assignment;-><init>(Ljava/lang/String;ILfreemarker/core/Expression;I)V

    if-eqz v14, :cond_1c3

    .line 2440
    iget-object v4, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v15, v4, v7, v14}, Lfreemarker/core/Assignment;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V

    goto :goto_1c8

    .line 2442
    :cond_1c3
    iget-object v8, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v15, v8, v7, v4}, Lfreemarker/core/Assignment;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/Token;)V

    .line 2444
    :goto_1c8
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1cb
    const v4, 0x7fffffff

    .line 2447
    invoke-direct {v0, v4}, Lfreemarker/core/FMParser;->jj_2_11(I)Z

    move-result v4

    if-eqz v4, :cond_2ce

    .line 2452
    iget v4, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v4, v3, :cond_1dc

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v4

    :cond_1dc
    const/16 v7, 0x82

    if-eq v4, v7, :cond_1e9

    .line 2458
    iget-object v4, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v7, 0x32

    iget v8, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v8, v4, v7

    goto :goto_1ec

    .line 2454
    :cond_1e9
    invoke-direct {v0, v7}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2461
    :goto_1ec
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->IdentifierOrStringLiteral()Lfreemarker/core/Expression;

    move-result-object v4

    .line 2462
    instance-of v7, v4, Lfreemarker/core/StringLiteral;

    if-eqz v7, :cond_1fc

    move-object v7, v4

    check-cast v7, Lfreemarker/core/StringLiteral;

    .line 2463
    invoke-virtual {v7}, Lfreemarker/core/StringLiteral;->getAsString()Ljava/lang/String;

    move-result-object v7

    goto :goto_203

    :cond_1fc
    move-object v7, v4

    check-cast v7, Lfreemarker/core/Identifier;

    .line 2464
    invoke-virtual {v7}, Lfreemarker/core/Identifier;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2465
    :goto_203
    iget v8, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v8, v3, :cond_20b

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v8

    :cond_20b
    if-eq v8, v13, :cond_250

    packed-switch v8, :pswitch_data_378

    .line 2527
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x35

    iget v4, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v4, v1, v2

    .line 2528
    invoke-direct {v0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2529
    new-instance v1, Lfreemarker/core/ParseException;

    invoke-direct {v1}, Lfreemarker/core/ParseException;-><init>()V

    throw v1

    .line 2508
    :pswitch_221
    iget v8, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v8, v3, :cond_229

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v8

    :cond_229
    if-eq v8, v6, :cond_242

    if-ne v8, v12, :cond_231

    .line 2514
    invoke-direct {v0, v12}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    goto :goto_245

    .line 2518
    :cond_231
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x34

    iget v4, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v4, v1, v2

    .line 2519
    invoke-direct {v0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2520
    new-instance v1, Lfreemarker/core/ParseException;

    invoke-direct {v1}, Lfreemarker/core/ParseException;-><init>()V

    throw v1

    .line 2510
    :cond_242
    invoke-direct {v0, v6}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2522
    :goto_245
    iget-object v8, v0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    move-object v5, v8

    const/4 v6, 0x0

    const/16 v9, 0x6e

    const/16 v14, 0x6d

    const/16 v15, 0x6c

    goto :goto_2b1

    .line 2472
    :cond_250
    :pswitch_250
    iget v8, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v8, v3, :cond_258

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v8

    :cond_258
    if-eq v8, v13, :cond_29e

    packed-switch v8, :pswitch_data_38a

    .line 2498
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x33

    iget v4, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v4, v1, v2

    .line 2499
    invoke-direct {v0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2500
    new-instance v1, Lfreemarker/core/ParseException;

    invoke-direct {v1}, Lfreemarker/core/ParseException;-><init>()V

    throw v1

    .line 2494
    :pswitch_26e
    invoke-direct {v0, v5}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    const/16 v8, 0x6f

    goto :goto_279

    :pswitch_274
    const/16 v8, 0x6f

    .line 2490
    invoke-direct {v0, v8}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    :goto_279
    const/16 v9, 0x6e

    goto :goto_283

    :pswitch_27c
    const/16 v8, 0x6f

    const/16 v9, 0x6e

    .line 2486
    invoke-direct {v0, v9}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    :goto_283
    const/16 v14, 0x6d

    goto :goto_28f

    :pswitch_286
    const/16 v8, 0x6f

    const/16 v9, 0x6e

    const/16 v14, 0x6d

    .line 2482
    invoke-direct {v0, v14}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    :goto_28f
    const/16 v15, 0x6c

    goto :goto_2a9

    :pswitch_292
    const/16 v8, 0x6f

    const/16 v9, 0x6e

    const/16 v14, 0x6d

    const/16 v15, 0x6c

    .line 2478
    invoke-direct {v0, v15}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    goto :goto_2a9

    :cond_29e
    const/16 v8, 0x6f

    const/16 v9, 0x6e

    const/16 v14, 0x6d

    const/16 v15, 0x6c

    .line 2474
    invoke-direct {v0, v13}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2502
    :goto_2a9
    iget-object v5, v0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    .line 2503
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v16

    move-object/from16 v6, v16

    .line 2531
    :goto_2b1
    new-instance v8, Lfreemarker/core/Assignment;

    iget v9, v5, Lfreemarker/core/Token;->kind:I

    invoke-direct {v8, v7, v9, v6, v10}, Lfreemarker/core/Assignment;-><init>(Ljava/lang/String;ILfreemarker/core/Expression;I)V

    if-eqz v6, :cond_2c0

    .line 2533
    iget-object v5, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v8, v5, v4, v6}, Lfreemarker/core/Assignment;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V

    goto :goto_2c5

    .line 2535
    :cond_2c0
    iget-object v6, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v8, v6, v4, v5}, Lfreemarker/core/Assignment;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/Token;)V

    .line 2537
    :goto_2c5
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x70

    const/16 v6, 0x71

    goto/16 :goto_1cb

    .line 2539
    :cond_2ce
    iget v4, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v4, v3, :cond_2d6

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v4

    :cond_2d6
    const/16 v3, 0x8b

    if-eq v4, v3, :cond_2e5

    .line 2549
    iget-object v3, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v4, 0x36

    iget v5, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v14, 0x0

    goto :goto_2f0

    .line 2541
    :cond_2e5
    invoke-direct {v0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v3

    .line 2542
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v14

    const/4 v4, 0x1

    if-ne v10, v4, :cond_32a

    .line 2552
    :goto_2f0
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->LooseDirectiveEnd()Lfreemarker/core/Token;

    move-result-object v3

    .line 2553
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v4, :cond_30a

    .line 2554
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/core/Assignment;

    .line 2555
    invoke-virtual {v1, v14}, Lfreemarker/core/Assignment;->setNamespaceExp(Lfreemarker/core/Expression;)V

    .line 2556
    iget-object v4, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v4, v2, v3}, Lfreemarker/core/Assignment;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    .line 2559
    :cond_30a
    new-instance v4, Lfreemarker/core/AssignmentInstruction;

    invoke-direct {v4, v10}, Lfreemarker/core/AssignmentInstruction;-><init>(I)V

    .line 2560
    :goto_30f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v6, v5, :cond_321

    .line 2561
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfreemarker/core/Assignment;

    invoke-virtual {v4, v5}, Lfreemarker/core/AssignmentInstruction;->addAssignment(Lfreemarker/core/Assignment;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_30f

    .line 2563
    :cond_321
    invoke-virtual {v4, v14}, Lfreemarker/core/AssignmentInstruction;->setNamespaceExp(Lfreemarker/core/Expression;)V

    .line 2564
    iget-object v1, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v4, v1, v2, v3}, Lfreemarker/core/AssignmentInstruction;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v4

    .line 2544
    :cond_32a
    new-instance v1, Lfreemarker/core/ParseException;

    iget-object v2, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v11, v2, v3}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :pswitch_data_332
    .packed-switch 0x10
        :pswitch_4a
        :pswitch_42
        :pswitch_27
    .end packed-switch

    :pswitch_data_33c
    .packed-switch 0x6c
        :pswitch_123
        :pswitch_123
        :pswitch_123
        :pswitch_123
        :pswitch_123
        :pswitch_123
        :pswitch_123
    .end packed-switch

    :pswitch_data_34e
    .packed-switch 0x2b
        :pswitch_fb
        :pswitch_e8
        :pswitch_d7
    .end packed-switch

    :pswitch_data_358
    .packed-switch 0x6c
        :pswitch_175
        :pswitch_175
        :pswitch_175
        :pswitch_175
        :pswitch_175
        :pswitch_14d
        :pswitch_14d
    .end packed-switch

    :pswitch_data_36a
    .packed-switch 0x6c
        :pswitch_1a3
        :pswitch_19f
        :pswitch_19b
        :pswitch_197
        :pswitch_193
    .end packed-switch

    :pswitch_data_378
    .packed-switch 0x6c
        :pswitch_250
        :pswitch_250
        :pswitch_250
        :pswitch_250
        :pswitch_250
        :pswitch_221
        :pswitch_221
    .end packed-switch

    :pswitch_data_38a
    .packed-switch 0x6c
        :pswitch_292
        :pswitch_286
        :pswitch_27c
        :pswitch_274
        :pswitch_26e
    .end packed-switch
.end method

.method public final AtomicExpression()Lfreemarker/core/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 623
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/16 v2, 0x85

    if-eq v0, v2, :cond_50

    const/16 v2, 0x87

    if-eq v0, v2, :cond_4b

    const/16 v2, 0x89

    if-eq v0, v2, :cond_46

    const/16 v2, 0x8e

    if-eq v0, v2, :cond_41

    packed-switch v0, :pswitch_data_56

    .line 660
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/4 v2, 0x2

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 661
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 662
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 656
    :pswitch_2c
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->BuiltinVariable()Lfreemarker/core/BuiltinVariable;

    move-result-object v0

    goto :goto_54

    .line 626
    :pswitch_31
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->NumberLiteral()Lfreemarker/core/Expression;

    move-result-object v0

    goto :goto_54

    .line 640
    :pswitch_36
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->BooleanLiteral()Lfreemarker/core/Expression;

    move-result-object v0

    goto :goto_54

    :pswitch_3b
    const/4 v0, 0x1

    .line 635
    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->StringLiteral(Z)Lfreemarker/core/StringLiteral;

    move-result-object v0

    goto :goto_54

    .line 648
    :cond_41
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Identifier()Lfreemarker/core/Identifier;

    move-result-object v0

    goto :goto_54

    .line 630
    :cond_46
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->HashLiteral()Lfreemarker/core/HashLiteral;

    move-result-object v0

    goto :goto_54

    .line 652
    :cond_4b
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Parenthesis()Lfreemarker/core/Expression;

    move-result-object v0

    goto :goto_54

    .line 644
    :cond_50
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->ListLiteral()Lfreemarker/core/ListLiteral;

    move-result-object v0

    :goto_54
    return-object v0

    nop

    :pswitch_data_56
    .packed-switch 0x5d
        :pswitch_3b
        :pswitch_3b
        :pswitch_36
        :pswitch_36
        :pswitch_31
        :pswitch_31
        :pswitch_2c
    .end packed-switch
.end method

.method public final Attempt()Lfreemarker/core/AttemptBlock;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 1832
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1833
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v1

    .line 1834
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Recover()Lfreemarker/core/RecoveryBlock;

    move-result-object v2

    .line 1835
    iget v3, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v3

    :cond_16
    const/16 v5, 0x28

    if-eq v3, v5, :cond_34

    const/16 v5, 0x29

    if-ne v3, v5, :cond_23

    .line 1841
    invoke-direct {p0, v5}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v3

    goto :goto_38

    .line 1845
    :cond_23
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x20

    iget v2, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v2, v0, v1

    .line 1846
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1847
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 1837
    :cond_34
    invoke-direct {p0, v5}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v3

    .line 1849
    :goto_38
    new-instance v4, Lfreemarker/core/AttemptBlock;

    invoke-direct {v4, v1, v2}, Lfreemarker/core/AttemptBlock;-><init>(Lfreemarker/core/TemplateElements;Lfreemarker/core/RecoveryBlock;)V

    .line 1850
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v4, v1, v0, v3}, Lfreemarker/core/AttemptBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v4
.end method

.method public final AutoEsc()Lfreemarker/core/AutoEscBlock;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x1e

    .line 3540
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 3541
    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->checkCurrentOutputFormatCanEscape(Lfreemarker/core/Token;)V

    .line 3542
    iget v1, p0, Lfreemarker/core/FMParser;->autoEscapingPolicy:I

    const/16 v2, 0x16

    .line 3543
    iput v2, p0, Lfreemarker/core/FMParser;->autoEscapingPolicy:I

    .line 3544
    invoke-direct {p0}, Lfreemarker/core/FMParser;->recalculateAutoEscapingField()V

    .line 3545
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v2

    const/16 v3, 0x31

    .line 3546
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v3

    .line 3547
    new-instance v4, Lfreemarker/core/AutoEscBlock;

    invoke-direct {v4, v2}, Lfreemarker/core/AutoEscBlock;-><init>(Lfreemarker/core/TemplateElements;)V

    .line 3548
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v4, v2, v0, v3}, Lfreemarker/core/AutoEscBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    .line 3550
    iput v1, p0, Lfreemarker/core/FMParser;->autoEscapingPolicy:I

    .line 3551
    invoke-direct {p0}, Lfreemarker/core/FMParser;->recalculateAutoEscapingField()V

    return-object v4
.end method

.method public final BooleanLiteral()Lfreemarker/core/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 1556
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/16 v2, 0x5f

    if-eq v0, v2, :cond_2d

    const/16 v2, 0x60

    if-ne v0, v2, :cond_1c

    .line 1563
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1564
    new-instance v1, Lfreemarker/core/BooleanLiteral;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lfreemarker/core/BooleanLiteral;-><init>(Z)V

    goto :goto_37

    .line 1568
    :cond_1c
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x17

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 1569
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1570
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 1558
    :cond_2d
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1559
    new-instance v1, Lfreemarker/core/BooleanLiteral;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfreemarker/core/BooleanLiteral;-><init>(Z)V

    .line 1572
    :goto_37
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v2, v0, v0}, Lfreemarker/core/Expression;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1
.end method

.method public final Break()Lfreemarker/core/BreakInstruction;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x37

    .line 2159
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2160
    iget v1, p0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_16

    .line 2165
    new-instance v1, Lfreemarker/core/BreakInstruction;

    invoke-direct {v1}, Lfreemarker/core/BreakInstruction;-><init>()V

    .line 2166
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v2, v0, v0}, Lfreemarker/core/BreakInstruction;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    .line 2161
    :cond_16
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be nested inside a directive that supports it:  #list with \"as\", #items, #switch (or the deprecated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2162
    invoke-direct {p0}, Lfreemarker/core/FMParser;->forEachDirectiveSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final BuiltIn(Lfreemarker/core/Expression;)Lfreemarker/core/Expression;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x67

    .line 1195
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    const/16 v0, 0x8e

    .line 1196
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1197
    iget-object v1, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    invoke-virtual {v1, v0}, Lfreemarker/core/FMParserTokenManager;->checkNamingConvention(Lfreemarker/core/Token;)V

    .line 1198
    iget v1, p0, Lfreemarker/core/FMParser;->incompatibleImprovements:I

    iget-object v2, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    invoke-static {v1, p1, v0, v2}, Lfreemarker/core/BuiltIn;->newBuiltIn(ILfreemarker/core/Expression;Lfreemarker/core/Token;Lfreemarker/core/FMParserTokenManager;)Lfreemarker/core/BuiltIn;

    move-result-object v1

    .line 1199
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v2, p1, v0}, Lfreemarker/core/BuiltIn;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/Token;)V

    .line 1201
    instance-of v2, v1, Lfreemarker/core/SpecialBuiltIn;

    if-nez v2, :cond_22

    return-object v1

    .line 1205
    :cond_22
    instance-of v2, v1, Lfreemarker/core/BuiltInForLoopVariable;

    if-eqz v2, :cond_58

    .line 1206
    instance-of v2, p1, Lfreemarker/core/Identifier;

    if-eqz v2, :cond_3b

    .line 1211
    move-object v2, p1

    check-cast v2, Lfreemarker/core/Identifier;

    invoke-virtual {v2}, Lfreemarker/core/Identifier;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1212
    invoke-direct {p0, v2, p1, v0}, Lfreemarker/core/FMParser;->checkLoopVariableBuiltInLHO(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Token;)V

    .line 1213
    move-object p1, v1

    check-cast p1, Lfreemarker/core/BuiltInForLoopVariable;

    invoke-virtual {p1, v2}, Lfreemarker/core/BuiltInForLoopVariable;->bindToLoopVariable(Ljava/lang/String;)V

    return-object v1

    .line 1207
    :cond_3b
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expression used as the left hand operand of ?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must be a simple loop variable name."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v1

    .line 1218
    :cond_58
    instance-of v2, v1, Lfreemarker/core/BuiltInBannedWhenAutoEscaping;

    if-eqz v2, :cond_97

    .line 1219
    iget-object p1, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    instance-of p1, p1, Lfreemarker/core/MarkupOutputFormat;

    if-eqz p1, :cond_96

    iget-boolean p1, p0, Lfreemarker/core/FMParser;->autoEscaping:Z

    if-nez p1, :cond_67

    goto :goto_96

    .line 1220
    :cond_67
    new-instance p1, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using ?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (legacy escaping) is not allowed when auto-escaping is on with a markup output format ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    .line 1222
    invoke-virtual {v2}, Lfreemarker/core/OutputFormat;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), to avoid double-escaping mistakes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {p1, v1, v2, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw p1

    :cond_96
    :goto_96
    return-object v1

    .line 1229
    :cond_97
    instance-of v2, v1, Lfreemarker/core/MarkupOutputFormatBoundBuiltIn;

    if-eqz v2, :cond_cf

    .line 1230
    iget-object p1, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    instance-of v2, p1, Lfreemarker/core/MarkupOutputFormat;

    if-eqz v2, :cond_aa

    .line 1235
    move-object v0, v1

    check-cast v0, Lfreemarker/core/MarkupOutputFormatBoundBuiltIn;

    check-cast p1, Lfreemarker/core/MarkupOutputFormat;

    invoke-virtual {v0, p1}, Lfreemarker/core/MarkupOutputFormatBoundBuiltIn;->bindToMarkupOutputFormat(Lfreemarker/core/MarkupOutputFormat;)V

    return-object v1

    .line 1231
    :cond_aa
    new-instance p1, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be used here, as the current output format isn\'t a markup (escaping) format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {p1, v1, v2, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw p1

    .line 1240
    :cond_cf
    instance-of v0, v1, Lfreemarker/core/OutputFormatBoundBuiltIn;

    if-eqz v0, :cond_de

    .line 1241
    move-object p1, v1

    check-cast p1, Lfreemarker/core/OutputFormatBoundBuiltIn;

    iget-object v0, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    iget v2, p0, Lfreemarker/core/FMParser;->autoEscapingPolicy:I

    invoke-virtual {p1, v0, v2}, Lfreemarker/core/OutputFormatBoundBuiltIn;->bindToOutputFormat(Lfreemarker/core/OutputFormat;I)V

    return-object v1

    .line 1245
    :cond_de
    instance-of v0, v1, Lfreemarker/core/BuiltInWithParseTimeParameters;

    const/16 v2, 0x88

    const/16 v3, 0x87

    if-eqz v0, :cond_104

    move-object v4, v1

    check-cast v4, Lfreemarker/core/BuiltInWithParseTimeParameters;

    .line 1246
    invoke-virtual {v4}, Lfreemarker/core/BuiltInWithParseTimeParameters;->isLocalLambdaParameterSupported()Z

    move-result v5

    if-nez v5, :cond_104

    .line 1247
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1248
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->PositionalArgs()Ljava/util/ArrayList;

    move-result-object v3

    .line 1249
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 1250
    iget-object v5, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v5, p1, v2}, Lfreemarker/core/BuiltIn;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/Token;)V

    .line 1251
    invoke-virtual {v4, v3, v0, v2}, Lfreemarker/core/BuiltInWithParseTimeParameters;->bindToParameters(Ljava/util/List;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    :cond_104
    if-eqz v0, :cond_124

    .line 1257
    move-object v0, v1

    check-cast v0, Lfreemarker/core/BuiltInWithParseTimeParameters;

    .line 1258
    invoke-virtual {v0}, Lfreemarker/core/BuiltInWithParseTimeParameters;->isLocalLambdaParameterSupported()Z

    move-result v4

    if-eqz v4, :cond_124

    .line 1259
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v3

    .line 1260
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->PositionalMaybeLambdaArgs()Ljava/util/ArrayList;

    move-result-object v4

    .line 1261
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 1262
    iget-object v5, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v5, p1, v2}, Lfreemarker/core/BuiltIn;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/Token;)V

    .line 1263
    invoke-virtual {v0, v4, v3, v2}, Lfreemarker/core/BuiltInWithParseTimeParameters;->bindToParameters(Ljava/util/List;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    :cond_124
    const p1, 0x7fffffff

    .line 1269
    invoke-direct {p0, p1}, Lfreemarker/core/FMParser;->jj_2_9(I)Z

    move-result p1

    if-eqz p1, :cond_13b

    instance-of p1, v1, Lfreemarker/core/BuiltInWithDirectCallOptimization;

    if-eqz p1, :cond_13b

    .line 1270
    invoke-virtual {p0, v1}, Lfreemarker/core/FMParser;->MethodArgs(Lfreemarker/core/Expression;)Lfreemarker/core/MethodCall;

    move-result-object p1

    .line 1271
    check-cast v1, Lfreemarker/core/BuiltInWithDirectCallOptimization;

    invoke-virtual {v1}, Lfreemarker/core/BuiltInWithDirectCallOptimization;->setDirectlyCalled()V

    return-object p1

    .line 1276
    :cond_13b
    instance-of p1, v1, Lfreemarker/core/BuiltInWithDirectCallOptimization;

    if-eqz p1, :cond_140

    return-object v1

    .line 1282
    :cond_140
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lfreemarker/core/SpecialBuiltIn;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " subclass: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final BuiltinVariable()Lfreemarker/core/BuiltinVariable;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x63

    .line 1127
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    const/16 v1, 0x8e

    .line 1128
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    .line 1130
    iget-object v2, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    invoke-virtual {v2, v1}, Lfreemarker/core/FMParserTokenManager;->checkNamingConvention(Lfreemarker/core/Token;)V

    .line 1133
    iget-object v2, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    .line 1134
    const-string v3, "output_format"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "outputFormat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_41

    .line 1136
    :cond_24
    const-string v3, "auto_esc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    const-string v3, "autoEsc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    goto :goto_37

    :cond_35
    const/4 v2, 0x0

    goto :goto_4c

    .line 1137
    :cond_37
    :goto_37
    iget-boolean v2, p0, Lfreemarker/core/FMParser;->autoEscaping:Z

    if-eqz v2, :cond_3e

    sget-object v2, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_4c

    :cond_3e
    sget-object v2, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_4c

    .line 1135
    :cond_41
    :goto_41
    new-instance v2, Lfreemarker/template/SimpleScalar;

    iget-object v3, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    invoke-virtual {v3}, Lfreemarker/core/OutputFormat;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    .line 1142
    :goto_4c
    new-instance v3, Lfreemarker/core/BuiltinVariable;

    iget-object v4, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    invoke-direct {v3, v1, v4, v2}, Lfreemarker/core/BuiltinVariable;-><init>(Lfreemarker/core/Token;Lfreemarker/core/FMParserTokenManager;Lfreemarker/template/TemplateModel;)V

    .line 1144
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v2, v0, v1}, Lfreemarker/core/BuiltinVariable;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3
.end method

.method public final Call()Lfreemarker/core/TemplateElement;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x1b

    .line 3032
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    const/16 v1, 0x8e

    .line 3033
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    .line 3034
    new-instance v2, Lfreemarker/core/Identifier;

    iget-object v3, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-direct {v2, v3}, Lfreemarker/core/Identifier;-><init>(Ljava/lang/String;)V

    .line 3035
    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v2, v3, v1, v1}, Lfreemarker/core/Identifier;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    const v1, 0x7fffffff

    .line 3036
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_2_14(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_29

    .line 3037
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->NamedArgs()Ljava/util/HashMap;

    move-result-object v1

    move-object v3, v1

    move-object v1, v4

    goto :goto_52

    .line 3039
    :cond_29
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_2_13(I)Z

    move-result v1

    if-eqz v1, :cond_34

    const/16 v1, 0x87

    .line 3040
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3044
    :cond_34
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->PositionalArgs()Ljava/util/ArrayList;

    move-result-object v1

    .line 3045
    iget v3, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_41

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v3

    :cond_41
    const/16 v5, 0x88

    if-eq v3, v5, :cond_4e

    .line 3051
    iget-object v3, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v5, 0x4c

    iget v6, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v6, v3, v5

    goto :goto_51

    .line 3047
    :cond_4e
    invoke-direct {p0, v5}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    :goto_51
    move-object v3, v4

    .line 3055
    :goto_52
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->LooseDirectiveEnd()Lfreemarker/core/Token;

    move-result-object v5

    if-eqz v1, :cond_60

    .line 3058
    new-instance v3, Lfreemarker/core/UnifiedCall;

    sget-object v6, Lfreemarker/core/TemplateElements;->EMPTY:Lfreemarker/core/TemplateElements;

    invoke-direct {v3, v2, v1, v6, v4}, Lfreemarker/core/UnifiedCall;-><init>(Lfreemarker/core/Expression;Ljava/util/List;Lfreemarker/core/TemplateElements;Ljava/util/List;)V

    goto :goto_68

    .line 3060
    :cond_60
    new-instance v1, Lfreemarker/core/UnifiedCall;

    sget-object v6, Lfreemarker/core/TemplateElements;->EMPTY:Lfreemarker/core/TemplateElements;

    invoke-direct {v1, v2, v3, v6, v4}, Lfreemarker/core/UnifiedCall;-><init>(Lfreemarker/core/Expression;Ljava/util/Map;Lfreemarker/core/TemplateElements;Ljava/util/List;)V

    move-object v3, v1

    :goto_68
    const/4 v1, 0x1

    .line 3062
    iput-boolean v1, v3, Lfreemarker/core/UnifiedCall;->legacySyntax:Z

    .line 3063
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v5}, Lfreemarker/core/UnifiedCall;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3
.end method

.method public final Case()Lfreemarker/core/Case;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3389
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/16 v2, 0xf

    if-eq v0, v2, :cond_28

    const/16 v2, 0x40

    if-ne v0, v2, :cond_17

    .line 3397
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_35

    .line 3402
    :cond_17
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x5c

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 3403
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3404
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 3391
    :cond_28
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 3392
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v1

    const/16 v2, 0x94

    .line 3393
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3406
    :goto_35
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v2

    .line 3407
    new-instance v3, Lfreemarker/core/Case;

    invoke-direct {v3, v1, v2}, Lfreemarker/core/Case;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/TemplateElements;)V

    .line 3408
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v0, v2}, Lfreemarker/core/Case;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;Lfreemarker/core/TemplateElements;)V

    return-object v3
.end method

.method public final Comment()Lfreemarker/core/Comment;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3232
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_e
    const/16 v3, 0x21

    if-eq v1, v3, :cond_2c

    const/16 v3, 0x22

    if-ne v1, v3, :cond_1b

    .line 3238
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    goto :goto_30

    .line 3242
    :cond_1b
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x54

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v1

    .line 3243
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3244
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 3234
    :cond_2c
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    .line 3246
    :goto_30
    invoke-virtual {p0, v1, v0}, Lfreemarker/core/FMParser;->UnparsedContent(Lfreemarker/core/Token;Ljava/lang/StringBuilder;)Lfreemarker/core/Token;

    move-result-object v2

    .line 3247
    new-instance v3, Lfreemarker/core/Comment;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lfreemarker/core/Comment;-><init>(Ljava/lang/String;)V

    .line 3248
    iget-object v0, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v0, v1, v2}, Lfreemarker/core/Comment;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3
.end method

.method public final Compress()Lfreemarker/core/CompressedBlock;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 2865
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2866
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v1

    const/16 v2, 0x33

    .line 2867
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 2868
    new-instance v3, Lfreemarker/core/CompressedBlock;

    invoke-direct {v3, v1}, Lfreemarker/core/CompressedBlock;-><init>(Lfreemarker/core/TemplateElements;)V

    .line 2869
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/CompressedBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3
.end method

.method public final Continue()Lfreemarker/core/ContinueInstruction;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x38

    .line 2175
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2176
    iget v1, p0, Lfreemarker/core/FMParser;->continuableDirectiveNesting:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_16

    .line 2181
    new-instance v1, Lfreemarker/core/ContinueInstruction;

    invoke-direct {v1}, Lfreemarker/core/ContinueInstruction;-><init>()V

    .line 2182
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v2, v0, v0}, Lfreemarker/core/ContinueInstruction;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    .line 2177
    :cond_16
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be nested inside a directive that supports it:  #list with \"as\", #items (or the deprecated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2178
    invoke-direct {p0}, Lfreemarker/core/FMParser;->forEachDirectiveSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final DefaultTo(Lfreemarker/core/Expression;)Lfreemarker/core/Expression;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 1151
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/16 v2, 0x81

    const/4 v3, 0x0

    if-eq v0, v2, :cond_28

    const/16 v2, 0x99

    if-ne v0, v2, :cond_17

    .line 1153
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_39

    .line 1166
    :cond_17
    iget-object p1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v0, 0xf

    iget v2, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v2, p1, v0

    .line 1167
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1168
    new-instance p1, Lfreemarker/core/ParseException;

    invoke-direct {p1}, Lfreemarker/core/ParseException;-><init>()V

    throw p1

    .line 1157
    :cond_28
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    const v1, 0x7fffffff

    .line 1158
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_2_8(I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1159
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v3

    .line 1170
    :cond_39
    :goto_39
    new-instance v1, Lfreemarker/core/DefaultToExpression;

    invoke-direct {v1, p1, v3}, Lfreemarker/core/DefaultToExpression;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V

    if-nez v3, :cond_4f

    .line 1173
    iget-object v5, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    iget v6, p1, Lfreemarker/core/Expression;->beginColumn:I

    iget v7, p1, Lfreemarker/core/Expression;->beginLine:I

    iget v8, v0, Lfreemarker/core/Token;->beginColumn:I

    iget v9, v0, Lfreemarker/core/Token;->beginLine:I

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Lfreemarker/core/DefaultToExpression;->setLocation(Lfreemarker/template/Template;IIII)V

    goto :goto_54

    .line 1175
    :cond_4f
    iget-object v0, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v0, p1, v3}, Lfreemarker/core/DefaultToExpression;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V

    :goto_54
    return-object v1
.end method

.method public final DotVariable(Lfreemarker/core/Expression;)Lfreemarker/core/Expression;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x63

    .line 1387
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1388
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_e
    const/16 v2, 0x60

    const/16 v3, 0x5f

    if-eq v0, v3, :cond_49

    if-eq v0, v2, :cond_49

    const/16 v4, 0x7a

    if-eq v0, v4, :cond_43

    const/16 v4, 0x7b

    if-eq v0, v4, :cond_3d

    packed-switch v0, :pswitch_data_e8

    packed-switch v0, :pswitch_data_f4

    .line 1458
    iget-object p1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v0, 0x15

    iget v2, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v2, p1, v0

    .line 1459
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1460
    new-instance p1, Lfreemarker/core/ParseException;

    invoke-direct {p1}, Lfreemarker/core/ParseException;-><init>()V

    throw p1

    :pswitch_35
    const/16 v0, 0x8e

    .line 1390
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    goto/16 :goto_b3

    .line 1398
    :cond_3d
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    goto/16 :goto_b3

    .line 1394
    :cond_43
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    goto/16 :goto_b3

    .line 1410
    :cond_49
    :pswitch_49
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v0, v1, :cond_51

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_51
    if-eq v0, v3, :cond_a2

    if-eq v0, v2, :cond_9d

    packed-switch v0, :pswitch_data_100

    packed-switch v0, :pswitch_data_10c

    .line 1448
    iget-object p1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v0, 0x14

    iget v2, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v2, p1, v0

    .line 1449
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1450
    new-instance p1, Lfreemarker/core/ParseException;

    invoke-direct {p1}, Lfreemarker/core/ParseException;-><init>()V

    throw p1

    :pswitch_6c
    const/16 v0, 0x8d

    .line 1444
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_a6

    :pswitch_73
    const/16 v0, 0x8c

    .line 1440
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_a6

    :pswitch_7a
    const/16 v0, 0x8b

    .line 1436
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_a6

    :pswitch_81
    const/16 v0, 0x76

    .line 1424
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_a6

    :pswitch_88
    const/16 v0, 0x75

    .line 1420
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_a6

    :pswitch_8f
    const/16 v0, 0x74

    .line 1416
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_a6

    :pswitch_96
    const/16 v0, 0x73

    .line 1412
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_a6

    .line 1432
    :cond_9d
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_a6

    .line 1428
    :cond_a2
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1452
    :goto_a6
    iget-object v1, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 1462
    :goto_b3
    const-string v1, "hash"

    invoke-direct {p0, p1, v1}, Lfreemarker/core/FMParser;->notListLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 1463
    invoke-direct {p0, p1, v1}, Lfreemarker/core/FMParser;->notStringLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 1464
    invoke-direct {p0, p1, v1}, Lfreemarker/core/FMParser;->notBooleanLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 1465
    new-instance v1, Lfreemarker/core/Dot;

    iget-object v2, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lfreemarker/core/Dot;-><init>(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 1466
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v2, p1, v0}, Lfreemarker/core/Dot;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/Token;)V

    return-object v1

    .line 1453
    :cond_cb
    new-instance p1, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid identifier."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {p1, v1, v2, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw p1

    :pswitch_data_e8
    .packed-switch 0x73
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
    .end packed-switch

    :pswitch_data_f4
    .packed-switch 0x8b
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_35
    .end packed-switch

    :pswitch_data_100
    .packed-switch 0x73
        :pswitch_96
        :pswitch_8f
        :pswitch_88
        :pswitch_81
    .end packed-switch

    :pswitch_data_10c
    .packed-switch 0x8b
        :pswitch_7a
        :pswitch_73
        :pswitch_6c
    .end packed-switch
.end method

.method public final DynamicKey(Lfreemarker/core/Expression;)Lfreemarker/core/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x85

    .line 1477
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1478
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v0

    const/16 v1, 0x86

    .line 1479
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    .line 1480
    const-string v2, "list or hash"

    invoke-direct {p0, p1, v2}, Lfreemarker/core/FMParser;->notBooleanLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 1481
    invoke-direct {p0, p1, v2}, Lfreemarker/core/FMParser;->notNumberLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 1482
    new-instance v2, Lfreemarker/core/DynamicKeyName;

    invoke-direct {v2, p1, v0}, Lfreemarker/core/DynamicKeyName;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V

    .line 1483
    iget-object v0, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v2, v0, p1, v1}, Lfreemarker/core/DynamicKeyName;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/Token;)V

    return-object v2
.end method

.method public final ElseOfList()Lfreemarker/core/ElseOfList;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x36

    .line 1948
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1949
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v1

    .line 1950
    new-instance v2, Lfreemarker/core/ElseOfList;

    invoke-direct {v2, v1}, Lfreemarker/core/ElseOfList;-><init>(Lfreemarker/core/TemplateElements;)V

    .line 1951
    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v2, v3, v0, v0, v1}, Lfreemarker/core/ElseOfList;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;Lfreemarker/core/TemplateElements;)V

    return-object v2
.end method

.method public final EqualityExpression()Lfreemarker/core/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 865
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->RelationalExpression()Lfreemarker/core/Expression;

    move-result-object v0

    const v1, 0x7fffffff

    .line 867
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_2_3(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 868
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_16
    packed-switch v1, :pswitch_data_5e

    .line 882
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x8

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v1

    .line 883
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 884
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :pswitch_2a
    const/16 v1, 0x6b

    .line 870
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    goto :goto_3e

    :pswitch_31
    const/16 v1, 0x6a

    .line 878
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    goto :goto_3e

    :pswitch_38
    const/16 v1, 0x69

    .line 874
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    .line 886
    :goto_3e
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->RelationalExpression()Lfreemarker/core/Expression;

    move-result-object v2

    .line 887
    const-string v3, "string"

    invoke-direct {p0, v0, v3}, Lfreemarker/core/FMParser;->notHashLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 888
    invoke-direct {p0, v2, v3}, Lfreemarker/core/FMParser;->notHashLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 889
    invoke-direct {p0, v0, v3}, Lfreemarker/core/FMParser;->notListLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 890
    invoke-direct {p0, v2, v3}, Lfreemarker/core/FMParser;->notListLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 891
    new-instance v3, Lfreemarker/core/ComparisonExpression;

    iget-object v1, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-direct {v3, v0, v2, v1}, Lfreemarker/core/ComparisonExpression;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 892
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/Expression;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V

    move-object v0, v3

    :cond_5d
    return-object v0

    :pswitch_data_5e
    .packed-switch 0x69
        :pswitch_38
        :pswitch_31
        :pswitch_2a
    .end packed-switch
.end method

.method public final Escape()Lfreemarker/core/EscapeBlock;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x46

    .line 3416
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 3417
    iget-object v1, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    instance-of v1, v1, Lfreemarker/core/MarkupOutputFormat;

    if-eqz v1, :cond_34

    iget-boolean v1, p0, Lfreemarker/core/FMParser;->autoEscaping:Z

    if-nez v1, :cond_11

    goto :goto_34

    .line 3418
    :cond_11
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using the \"escape\" directive (legacy escaping) is not allowed when auto-escaping is on with a markup output format ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    .line 3420
    invoke-virtual {v3}, Lfreemarker/core/OutputFormat;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), to avoid confusion and double-escaping mistakes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :cond_34
    :goto_34
    const/16 v1, 0x8e

    .line 3424
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    const/16 v2, 0x8c

    .line 3425
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3426
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v2

    const/16 v3, 0x94

    .line 3427
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3428
    new-instance v3, Lfreemarker/core/EscapeBlock;

    iget-object v1, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->escapedExpression(Lfreemarker/core/Expression;)Lfreemarker/core/Expression;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lfreemarker/core/EscapeBlock;-><init>(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V

    .line 3429
    iget-object v1, p0, Lfreemarker/core/FMParser;->escapes:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 3430
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v1

    .line 3431
    invoke-virtual {v3, v1}, Lfreemarker/core/EscapeBlock;->setContent(Lfreemarker/core/TemplateElements;)V

    .line 3432
    iget-object v1, p0, Lfreemarker/core/FMParser;->escapes:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    const/16 v1, 0x47

    .line 3433
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    .line 3434
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v2, v0, v1}, Lfreemarker/core/EscapeBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3
.end method

.method public final Exists(Lfreemarker/core/Expression;)Lfreemarker/core/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x68

    .line 1182
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1183
    new-instance v1, Lfreemarker/core/ExistsExpression;

    invoke-direct {v1, p1}, Lfreemarker/core/ExistsExpression;-><init>(Lfreemarker/core/Expression;)V

    .line 1184
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v2, p1, v0}, Lfreemarker/core/ExistsExpression;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/Token;)V

    return-object v1
.end method

.method public final Expression()Lfreemarker/core/Expression;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 552
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->OrExpression()Lfreemarker/core/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final FallBack()Lfreemarker/core/FallbackInstruction;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x45

    .line 2145
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2146
    iget-boolean v1, p0, Lfreemarker/core/FMParser;->inMacro:Z

    if-eqz v1, :cond_15

    .line 2149
    new-instance v1, Lfreemarker/core/FallbackInstruction;

    invoke-direct {v1}, Lfreemarker/core/FallbackInstruction;-><init>()V

    .line 2150
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v2, v0, v0}, Lfreemarker/core/FallbackInstruction;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    .line 2147
    :cond_15
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "Cannot fall back outside a macro."

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final Flush()Lfreemarker/core/TemplateElement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x3b

    .line 2285
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2286
    new-instance v1, Lfreemarker/core/FlushInstruction;

    invoke-direct {v1}, Lfreemarker/core/FlushInstruction;-><init>()V

    .line 2287
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v2, v0, v0}, Lfreemarker/core/FlushInstruction;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1
.end method

.method public final ForEach()Lfreemarker/core/IteratorBlock;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0xd

    .line 1959
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    const/16 v1, 0x8e

    .line 1960
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    const/16 v2, 0x8b

    .line 1961
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1962
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v4

    const/16 v2, 0x94

    .line 1963
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1964
    invoke-direct {p0}, Lfreemarker/core/FMParser;->pushIteratorBlockContext()Lfreemarker/core/FMParser$ParserIteratorBlockContext;

    move-result-object v2

    .line 1965
    iget-object v3, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    # setter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVarName:Ljava/lang/String;
    invoke-static {v2, v3}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$102(Lfreemarker/core/FMParser$ParserIteratorBlockContext;Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x1

    .line 1966
    # setter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->kind:I
    invoke-static {v2, v3}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$302(Lfreemarker/core/FMParser$ParserIteratorBlockContext;I)I

    .line 1967
    iget v2, p0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    add-int/2addr v2, v3

    iput v2, p0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    .line 1968
    iget v2, p0, Lfreemarker/core/FMParser;->continuableDirectiveNesting:I

    add-int/2addr v2, v3

    iput v2, p0, Lfreemarker/core/FMParser;->continuableDirectiveNesting:I

    .line 1969
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v7

    const/16 v2, 0x2a

    .line 1970
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 1971
    iget v5, p0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    sub-int/2addr v5, v3

    iput v5, p0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    .line 1972
    iget v5, p0, Lfreemarker/core/FMParser;->continuableDirectiveNesting:I

    sub-int/2addr v5, v3

    iput v5, p0, Lfreemarker/core/FMParser;->continuableDirectiveNesting:I

    .line 1973
    invoke-direct {p0}, Lfreemarker/core/FMParser;->popIteratorBlockContext()V

    .line 1975
    new-instance v10, Lfreemarker/core/IteratorBlock;

    iget-object v5, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lfreemarker/core/IteratorBlock;-><init>(Lfreemarker/core/Expression;Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/TemplateElements;ZZ)V

    .line 1976
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v10, v1, v0, v2}, Lfreemarker/core/IteratorBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v10
.end method

.method public final FreeMarkerText()Lfreemarker/core/TemplateElement;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 4258
    new-instance v0, Lfreemarker/core/MixedContent;

    invoke-direct {v0}, Lfreemarker/core/MixedContent;-><init>()V

    const/4 v1, 0x0

    .line 4262
    :pswitch_6
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_f
    packed-switch v2, :pswitch_data_50

    .line 4279
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x68

    iget v2, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v2, v0, v1

    .line 4280
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 4281
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 4275
    :pswitch_23
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->NumericalOutput()Lfreemarker/core/NumericalOutput;

    move-result-object v2

    goto :goto_31

    .line 4271
    :pswitch_28
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->StringOutput()Lfreemarker/core/DollarVariable;

    move-result-object v2

    goto :goto_31

    .line 4266
    :pswitch_2d
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->PCData()Lfreemarker/core/TextBlock;

    move-result-object v2

    :goto_31
    if-nez v1, :cond_34

    move-object v1, v2

    .line 4286
    :cond_34
    invoke-virtual {v0, v2}, Lfreemarker/core/MixedContent;->addChild(Lfreemarker/core/TemplateElement;)V

    .line 4287
    iget v4, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v4, v3, :cond_3f

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v4

    :cond_3f
    packed-switch v4, :pswitch_data_60

    .line 4298
    iget-object v3, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v4, 0x69

    iget v5, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v5, v3, v4

    .line 4302
    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v0, v3, v1, v2}, Lfreemarker/core/MixedContent;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V

    return-object v0

    :pswitch_data_50
    .packed-switch 0x4f
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_28
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x4f
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public final FreemarkerDirective()Lfreemarker/core/TemplateElement;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3614
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/4 v2, 0x6

    if-eq v0, v2, :cond_e3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_de

    const/16 v2, 0x48

    if-eq v0, v2, :cond_d9

    const/16 v2, 0x4a

    if-eq v0, v2, :cond_d4

    packed-switch v0, :pswitch_data_e8

    packed-switch v0, :pswitch_data_f6

    packed-switch v0, :pswitch_data_122

    packed-switch v0, :pswitch_data_138

    .line 3759
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x5e

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 3760
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3761
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 3722
    :pswitch_35
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Escape()Lfreemarker/core/EscapeBlock;

    move-result-object v0

    goto/16 :goto_e7

    .line 3739
    :pswitch_3b
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->FallBack()Lfreemarker/core/FallbackInstruction;

    move-result-object v0

    goto/16 :goto_e7

    .line 3735
    :pswitch_41
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Recurse()Lfreemarker/core/RecurseNode;

    move-result-object v0

    goto/16 :goto_e7

    .line 3718
    :pswitch_47
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Nested()Lfreemarker/core/TemplateElement;

    move-result-object v0

    goto/16 :goto_e7

    .line 3713
    :pswitch_4d
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Trim()Lfreemarker/core/TemplateElement;

    move-result-object v0

    goto/16 :goto_e7

    .line 3706
    :pswitch_53
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Flush()Lfreemarker/core/TemplateElement;

    move-result-object v0

    goto/16 :goto_e7

    .line 3692
    :pswitch_59
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Continue()Lfreemarker/core/ContinueInstruction;

    move-result-object v0

    goto/16 :goto_e7

    .line 3688
    :pswitch_5f
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Break()Lfreemarker/core/BreakInstruction;

    move-result-object v0

    goto/16 :goto_e7

    .line 3672
    :pswitch_65
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->NoParse()Lfreemarker/core/TextBlock;

    move-result-object v0

    goto/16 :goto_e7

    .line 3668
    :pswitch_6b
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Comment()Lfreemarker/core/Comment;

    move-result-object v0

    goto/16 :goto_e7

    .line 3647
    :pswitch_71
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Compress()Lfreemarker/core/CompressedBlock;

    move-result-object v0

    goto/16 :goto_e7

    .line 3755
    :pswitch_77
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->NoAutoEsc()Lfreemarker/core/NoAutoEscBlock;

    move-result-object v0

    goto/16 :goto_e7

    .line 3751
    :pswitch_7d
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->AutoEsc()Lfreemarker/core/AutoEscBlock;

    move-result-object v0

    goto/16 :goto_e7

    .line 3747
    :pswitch_83
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->OutputFormat()Lfreemarker/core/OutputFormatBlock;

    move-result-object v0

    goto/16 :goto_e7

    .line 3684
    :pswitch_89
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Setting()Lfreemarker/core/PropertySetting;

    move-result-object v0

    goto :goto_e7

    .line 3663
    :pswitch_8e
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Call()Lfreemarker/core/TemplateElement;

    move-result-object v0

    goto :goto_e7

    .line 3697
    :pswitch_93
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Return()Lfreemarker/core/ReturnInstruction;

    move-result-object v0

    goto :goto_e7

    .line 3702
    :pswitch_98
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Stop()Lfreemarker/core/StopInstruction;

    move-result-object v0

    goto :goto_e7

    .line 3730
    :pswitch_9d
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Visit()Lfreemarker/core/VisitNode;

    move-result-object v0

    goto :goto_e7

    .line 3676
    :pswitch_a2
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Transform()Lfreemarker/core/TransformBlock;

    move-result-object v0

    goto :goto_e7

    .line 3643
    :pswitch_a7
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Macro()Lfreemarker/core/Macro;

    move-result-object v0

    goto :goto_e7

    .line 3638
    :pswitch_ac
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Import()Lfreemarker/core/LibraryLoad;

    move-result-object v0

    goto :goto_e7

    .line 3634
    :pswitch_b1
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Include()Lfreemarker/core/Include;

    move-result-object v0

    goto :goto_e7

    .line 3630
    :pswitch_b6
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Assign()Lfreemarker/core/TemplateElement;

    move-result-object v0

    goto :goto_e7

    .line 3680
    :pswitch_bb
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Switch()Lfreemarker/core/SwitchBlock;

    move-result-object v0

    goto :goto_e7

    .line 3624
    :pswitch_c0
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->ForEach()Lfreemarker/core/IteratorBlock;

    move-result-object v0

    goto :goto_e7

    .line 3659
    :pswitch_c5
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Sep()Lfreemarker/core/Sep;

    move-result-object v0

    goto :goto_e7

    .line 3655
    :pswitch_ca
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Items()Lfreemarker/core/Items;

    move-result-object v0

    goto :goto_e7

    .line 3620
    :pswitch_cf
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->List()Lfreemarker/core/TemplateElement;

    move-result-object v0

    goto :goto_e7

    .line 3651
    :cond_d4
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->UnifiedMacroTransform()Lfreemarker/core/TemplateElement;

    move-result-object v0

    goto :goto_e7

    .line 3726
    :cond_d9
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->NoEscape()Lfreemarker/core/NoEscapeBlock;

    move-result-object v0

    goto :goto_e7

    .line 3616
    :cond_de
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->If()Lfreemarker/core/TemplateElement;

    move-result-object v0

    goto :goto_e7

    .line 3743
    :cond_e3
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Attempt()Lfreemarker/core/AttemptBlock;

    move-result-object v0

    :goto_e7
    return-object v0

    :pswitch_data_e8
    .packed-switch 0xa
        :pswitch_cf
        :pswitch_ca
        :pswitch_c5
        :pswitch_c0
        :pswitch_bb
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x10
        :pswitch_b6
        :pswitch_b6
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
        :pswitch_89
        :pswitch_83
        :pswitch_7d
        :pswitch_77
        :pswitch_71
        :pswitch_6b
        :pswitch_6b
        :pswitch_65
    .end packed-switch

    :pswitch_data_122
    .packed-switch 0x37
        :pswitch_5f
        :pswitch_59
        :pswitch_93
        :pswitch_98
        :pswitch_53
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
    .end packed-switch

    :pswitch_data_138
    .packed-switch 0x41
        :pswitch_47
        :pswitch_47
        :pswitch_41
        :pswitch_41
        :pswitch_3b
        :pswitch_35
    .end packed-switch
.end method

.method public final HashLiteral()Lfreemarker/core/HashLiteral;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 1579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1580
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x89

    .line 1581
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v3

    .line 1582
    iget v4, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_19

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v4

    :cond_19
    const/16 v6, 0x78

    if-eq v4, v6, :cond_3f

    const/16 v6, 0x79

    if-eq v4, v6, :cond_3f

    const/16 v6, 0x81

    if-eq v4, v6, :cond_3f

    const/16 v6, 0x85

    if-eq v4, v6, :cond_3f

    const/16 v6, 0x87

    if-eq v4, v6, :cond_3f

    if-eq v4, v2, :cond_3f

    const/16 v2, 0x8e

    if-eq v4, v2, :cond_3f

    packed-switch v4, :pswitch_data_d4

    .line 1651
    iget-object v2, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v4, 0x1b

    iget v5, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v5, v2, v4

    goto :goto_8a

    .line 1597
    :cond_3f
    :pswitch_3f
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v2

    .line 1598
    iget v4, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v4, v5, :cond_4b

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v4

    :cond_4b
    const/16 v6, 0x84

    const/16 v7, 0x82

    if-eq v4, v7, :cond_68

    if-ne v4, v6, :cond_57

    .line 1604
    invoke-direct {p0, v6}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    goto :goto_6b

    .line 1608
    :cond_57
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x18

    iget v2, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v2, v0, v1

    .line 1609
    invoke-direct {p0, v5}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1610
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 1600
    :cond_68
    invoke-direct {p0, v7}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1612
    :goto_6b
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v4

    .line 1613
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->stringLiteralOnly(Lfreemarker/core/Expression;)V

    .line 1614
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1618
    :goto_78
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v2, v5, :cond_80

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_80
    if-eq v2, v7, :cond_9b

    .line 1624
    iget-object v2, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v4, 0x19

    iget v5, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v5, v2, v4

    :goto_8a
    const/16 v2, 0x8a

    .line 1654
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 1655
    new-instance v4, Lfreemarker/core/HashLiteral;

    invoke-direct {v4, v0, v1}, Lfreemarker/core/HashLiteral;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1656
    iget-object v0, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v4, v0, v3, v2}, Lfreemarker/core/HashLiteral;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v4

    .line 1627
    :cond_9b
    invoke-direct {p0, v7}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1628
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v2

    .line 1629
    iget v4, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v4, v5, :cond_aa

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v4

    :cond_aa
    if-eq v4, v7, :cond_c3

    if-ne v4, v6, :cond_b2

    .line 1635
    invoke-direct {p0, v6}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    goto :goto_c6

    .line 1639
    :cond_b2
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x1a

    iget v2, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v2, v0, v1

    .line 1640
    invoke-direct {p0, v5}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1641
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 1631
    :cond_c3
    invoke-direct {p0, v7}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1643
    :goto_c6
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v4

    .line 1644
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->stringLiteralOnly(Lfreemarker/core/Expression;)V

    .line 1645
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1646
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    :pswitch_data_d4
    .packed-switch 0x5d
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method

.method public final HeaderElement()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 4363
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/16 v2, 0x4f

    if-eq v0, v2, :cond_16

    .line 4369
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x6c

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    goto :goto_19

    .line 4365
    :cond_16
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 4372
    :goto_19
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v0, v1, :cond_21

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_21
    const/16 v2, 0x4c

    if-eq v0, v2, :cond_3e

    const/16 v2, 0x4d

    if-ne v0, v2, :cond_2d

    .line 4374
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    goto :goto_5f

    .line 4515
    :cond_2d
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x6e

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 4516
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 4517
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 4378
    :cond_3e
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    const/4 v0, 0x0

    move-object v2, v0

    .line 4381
    :catch_43
    :cond_43
    :goto_43
    iget v3, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v3, v1, :cond_4b

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v3

    :cond_4b
    const/16 v4, 0x8e

    if-eq v3, v4, :cond_60

    .line 4387
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x6d

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v1

    if-eqz v2, :cond_5c

    .line 4509
    invoke-virtual {p0, v2}, Lfreemarker/core/FMParser;->checkCurrentOutputFormatCanEscape(Lfreemarker/core/Token;)V

    .line 4511
    :cond_5c
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->LooseDirectiveEnd()Lfreemarker/core/Token;

    :goto_5f
    return-void

    .line 4390
    :cond_60
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v3

    const/16 v4, 0x69

    .line 4391
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 4392
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v4

    .line 4393
    iget-object v5, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    invoke-virtual {v5, v3}, Lfreemarker/core/FMParserTokenManager;->checkNamingConvention(Lfreemarker/core/Token;)V

    .line 4395
    iget-object v5, v3, Lfreemarker/core/Token;->image:Ljava/lang/String;

    .line 4398
    :try_start_74
    invoke-virtual {v4, v0}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v6
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_78} :catch_2d0

    .line 4406
    instance-of v7, v6, Lfreemarker/template/TemplateScalarModel;

    if-eqz v7, :cond_84

    .line 4408
    :try_start_7c
    move-object v7, v4

    check-cast v7, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v7}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v7
    :try_end_83
    .catch Lfreemarker/template/TemplateModelException; {:try_start_7c .. :try_end_83} :catch_84

    goto :goto_85

    :catch_84
    :cond_84
    move-object v7, v0

    .line 4411
    :goto_85
    iget-object v8, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    if-eqz v8, :cond_43

    .line 4412
    const-string v8, "encoding"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "\"."

    const-string v11, "Expected a string constant for \""

    if-eqz v9, :cond_c3

    if-eqz v7, :cond_ac

    .line 4416
    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3}, Lfreemarker/template/Template;->getEncoding()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 4417
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    goto :goto_43

    .line 4418
    :cond_a6
    new-instance v0, Lfreemarker/template/Template$WrongEncodingException;

    invoke-direct {v0, v7, v3}, Lfreemarker/template/Template$WrongEncodingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 4414
    :cond_ac
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v0

    .line 4420
    :cond_c3
    const-string v9, "STRIP_WHITESPACE"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const/4 v12, 0x1

    if-nez v9, :cond_2c8

    const-string v9, "stripWhitespace"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d6

    goto/16 :goto_2c8

    .line 4422
    :cond_d6
    const-string v9, "STRIP_TEXT"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2c0

    const-string v9, "stripText"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e8

    goto/16 :goto_2c0

    .line 4424
    :cond_e8
    const-string v9, "STRICT_SYNTAX"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2b6

    const-string v9, "strictSyntax"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fa

    goto/16 :goto_2b6

    .line 4426
    :cond_fa
    const-string v9, "auto_esc"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_299

    const-string v12, "autoEsc"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10c

    goto/16 :goto_299

    .line 4435
    :cond_10c
    const-string v13, "output_format"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_234

    const-string v13, "outputFormat"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11e

    goto/16 :goto_234

    .line 4449
    :cond_11e
    const-string v7, "ns_prefixes"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1e7

    const-string v10, "nsPrefixes"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_130

    goto/16 :goto_1e7

    .line 4471
    :cond_130
    const-string v11, "attributes"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16c

    .line 4472
    instance-of v3, v6, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v3, :cond_164

    .line 4475
    check-cast v6, Lfreemarker/template/TemplateHashModelEx;

    .line 4477
    :try_start_13e
    invoke-interface {v6}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v3

    .line 4478
    invoke-interface {v3}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v3

    :goto_146
    invoke-interface {v3}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 4479
    invoke-interface {v3}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v4

    check-cast v4, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v4}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 4480
    invoke-interface {v6, v4}, Lfreemarker/template/TemplateHashModelEx;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v5

    invoke-static {v5}, Lfreemarker/template/utility/DeepUnwrap;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object v5

    .line 4481
    iget-object v7, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v7, v4, v5}, Lfreemarker/template/Template;->setCustomAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_163
    .catch Lfreemarker/template/TemplateModelException; {:try_start_13e .. :try_end_163} :catch_43

    goto :goto_146

    .line 4473
    :cond_164
    new-instance v0, Lfreemarker/core/ParseException;

    const-string v1, "Expecting a hash of attribute names to values."

    invoke-direct {v0, v1, v4}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v0

    .line 4487
    :cond_16c
    const-string v1, "charset"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_176

    move-object v0, v8

    goto :goto_1b6

    .line 4489
    :cond_176
    const-string v1, "xmlns"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 4491
    iget-object v0, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    iget v0, v0, Lfreemarker/core/FMParserTokenManager;->namingConvention:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_188

    move-object v0, v10

    goto :goto_1b6

    :cond_188
    move-object v0, v7

    goto :goto_1b6

    .line 4494
    :cond_18a
    const-string v1, "auto_escape"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b5

    const-string v1, "auto_escaping"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b5

    const-string v1, "autoesc"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a3

    goto :goto_1b5

    .line 4496
    :cond_1a3
    const-string v1, "autoEscape"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b3

    const-string v1, "autoEscaping"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b6

    :cond_1b3
    move-object v0, v12

    goto :goto_1b6

    :cond_1b5
    :goto_1b5
    move-object v0, v9

    .line 4501
    :cond_1b6
    :goto_1b6
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unknown FTL header parameter: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_1ca

    const-string v0, ""

    goto :goto_1d9

    :cond_1ca
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ". You may meant: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1d9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v0, v2, v3}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    .line 4450
    :cond_1e7
    :goto_1e7
    instance-of v3, v6, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v3, :cond_22c

    .line 4453
    check-cast v6, Lfreemarker/template/TemplateHashModelEx;

    .line 4455
    :try_start_1ed
    invoke-interface {v6}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v3

    .line 4456
    invoke-interface {v3}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v3

    :goto_1f5
    invoke-interface {v3}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 4457
    invoke-interface {v3}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v5

    check-cast v5, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v5}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 4458
    invoke-interface {v6, v5}, Lfreemarker/template/TemplateHashModelEx;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v7

    .line 4459
    instance-of v8, v7, Lfreemarker/template/TemplateScalarModel;

    if-eqz v8, :cond_224

    .line 4462
    check-cast v7, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v7}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v7
    :try_end_213
    .catch Lfreemarker/template/TemplateModelException; {:try_start_1ed .. :try_end_213} :catch_43

    .line 4464
    :try_start_213
    iget-object v8, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v8, v5, v7}, Lfreemarker/template/Template;->addPrefixNSMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_218
    .catch Ljava/lang/IllegalArgumentException; {:try_start_213 .. :try_end_218} :catch_219
    .catch Lfreemarker/template/TemplateModelException; {:try_start_213 .. :try_end_218} :catch_43

    goto :goto_1f5

    :catch_219
    move-exception v3

    .line 4466
    :try_start_21a
    new-instance v5, Lfreemarker/core/ParseException;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v5

    .line 4460
    :cond_224
    new-instance v3, Lfreemarker/core/ParseException;

    const-string v5, "Non-string value in prefix to namespace hash."

    invoke-direct {v3, v5, v4}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v3
    :try_end_22c
    .catch Lfreemarker/template/TemplateModelException; {:try_start_21a .. :try_end_22c} :catch_43

    .line 4451
    :cond_22c
    new-instance v0, Lfreemarker/core/ParseException;

    const-string v1, "Expecting a hash of prefixes to namespace URI\'s."

    invoke-direct {v0, v1, v4}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v0

    :cond_234
    :goto_234
    if-eqz v7, :cond_282

    .line 4440
    :try_start_236
    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3}, Lfreemarker/template/Template;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v3

    invoke-virtual {v3, v7}, Lfreemarker/template/Configuration;->getOutputFormat(Ljava/lang/String;)Lfreemarker/core/OutputFormat;

    move-result-object v3

    iput-object v3, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;
    :try_end_242
    .catch Ljava/lang/IllegalArgumentException; {:try_start_236 .. :try_end_242} :catch_264
    .catch Lfreemarker/core/UnregisteredOutputFormatException; {:try_start_236 .. :try_end_242} :catch_255

    .line 4446
    invoke-direct {p0}, Lfreemarker/core/FMParser;->recalculateAutoEscapingField()V

    .line 4447
    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    iget-object v4, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    invoke-static {v3, v4}, Lfreemarker/template/_TemplateAPI;->setOutputFormat(Lfreemarker/template/Template;Lfreemarker/core/OutputFormat;)V

    .line 4448
    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    iget-boolean v4, p0, Lfreemarker/core/FMParser;->autoEscaping:Z

    invoke-static {v3, v4}, Lfreemarker/template/_TemplateAPI;->setAutoEscaping(Lfreemarker/template/Template;Z)V

    goto/16 :goto_43

    :catch_255
    move-exception v0

    .line 4444
    new-instance v1, Lfreemarker/core/ParseException;

    invoke-virtual {v0}, Lfreemarker/core/UnregisteredOutputFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lfreemarker/core/UnregisteredOutputFormatException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v4, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;Ljava/lang/Throwable;)V

    throw v1

    :catch_264
    move-exception v0

    .line 4442
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid format name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v4, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;Ljava/lang/Throwable;)V

    throw v1

    .line 4437
    :cond_282
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v0

    :cond_299
    :goto_299
    const/4 v5, 0x0

    .line 4427
    invoke-direct {p0, v4, v5}, Lfreemarker/core/FMParser;->getBoolean(Lfreemarker/core/Expression;Z)Z

    move-result v4

    if-eqz v4, :cond_2a6

    const/16 v2, 0x16

    .line 4429
    iput v2, p0, Lfreemarker/core/FMParser;->autoEscapingPolicy:I

    move-object v2, v3

    goto :goto_2aa

    :cond_2a6
    const/16 v3, 0x14

    .line 4431
    iput v3, p0, Lfreemarker/core/FMParser;->autoEscapingPolicy:I

    .line 4433
    :goto_2aa
    invoke-direct {p0}, Lfreemarker/core/FMParser;->recalculateAutoEscapingField()V

    .line 4434
    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    iget-boolean v4, p0, Lfreemarker/core/FMParser;->autoEscaping:Z

    invoke-static {v3, v4}, Lfreemarker/template/_TemplateAPI;->setAutoEscaping(Lfreemarker/template/Template;Z)V

    goto/16 :goto_43

    .line 4425
    :cond_2b6
    :goto_2b6
    iget-object v3, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    invoke-direct {p0, v4, v12}, Lfreemarker/core/FMParser;->getBoolean(Lfreemarker/core/Expression;Z)Z

    move-result v4

    iput-boolean v4, v3, Lfreemarker/core/FMParserTokenManager;->strictSyntaxMode:Z

    goto/16 :goto_43

    .line 4423
    :cond_2c0
    :goto_2c0
    invoke-direct {p0, v4, v12}, Lfreemarker/core/FMParser;->getBoolean(Lfreemarker/core/Expression;Z)Z

    move-result v3

    iput-boolean v3, p0, Lfreemarker/core/FMParser;->stripText:Z

    goto/16 :goto_43

    .line 4421
    :cond_2c8
    :goto_2c8
    invoke-direct {p0, v4, v12}, Lfreemarker/core/FMParser;->getBoolean(Lfreemarker/core/Expression;Z)Z

    move-result v3

    iput-boolean v3, p0, Lfreemarker/core/FMParser;->stripWhitespace:Z

    goto/16 :goto_43

    :catch_2d0
    move-exception v0

    .line 4400
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not evaluate expression (on parse-time): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4401
    invoke-virtual {v4}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \nUnderlying cause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final Identifier()Lfreemarker/core/Identifier;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x8e

    .line 1099
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1100
    new-instance v1, Lfreemarker/core/Identifier;

    iget-object v2, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-direct {v1, v2}, Lfreemarker/core/Identifier;-><init>(Ljava/lang/String;)V

    .line 1101
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v2, v0, v0}, Lfreemarker/core/Identifier;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1
.end method

.method public final IdentifierOrStringLiteral()Lfreemarker/core/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 1107
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/16 v2, 0x5d

    if-eq v0, v2, :cond_2b

    const/16 v2, 0x5e

    if-eq v0, v2, :cond_2b

    const/16 v2, 0x8e

    if-ne v0, v2, :cond_1a

    .line 1109
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Identifier()Lfreemarker/core/Identifier;

    move-result-object v0

    goto :goto_30

    .line 1118
    :cond_1a
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0xe

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 1119
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1120
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :cond_2b
    const/4 v0, 0x0

    .line 1114
    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->StringLiteral(Z)Lfreemarker/core/StringLiteral;

    move-result-object v0

    :goto_30
    return-object v0
.end method

.method public final If()Lfreemarker/core/TemplateElement;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1784
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1785
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v1

    const/16 v2, 0x94

    .line 1786
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 1787
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v3

    .line 1788
    new-instance v4, Lfreemarker/core/ConditionalBlock;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v3, v5}, Lfreemarker/core/ConditionalBlock;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/TemplateElements;I)V

    .line 1789
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v4, v1, v0, v2, v3}, Lfreemarker/core/ConditionalBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;Lfreemarker/core/TemplateElements;)V

    .line 1790
    new-instance v1, Lfreemarker/core/IfBlock;

    invoke-direct {v1, v4}, Lfreemarker/core/IfBlock;-><init>(Lfreemarker/core/ConditionalBlock;)V

    .line 1793
    :goto_24
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2d

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_2d
    const/16 v4, 0x9

    if-eq v2, v4, :cond_71

    .line 1799
    iget-object v2, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v4, 0x1e

    iget v5, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v5, v2, v4

    .line 1810
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v2, v3, :cond_41

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_41
    const/16 v3, 0x36

    if-eq v2, v3, :cond_4e

    .line 1820
    iget-object v2, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v3, 0x1f

    iget v4, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v4, v2, v3

    goto :goto_65

    .line 1812
    :cond_4e
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 1813
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v3

    .line 1814
    new-instance v4, Lfreemarker/core/ConditionalBlock;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v3, v6}, Lfreemarker/core/ConditionalBlock;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/TemplateElements;I)V

    .line 1815
    iget-object v5, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v4, v5, v2, v2, v3}, Lfreemarker/core/ConditionalBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;Lfreemarker/core/TemplateElements;)V

    .line 1816
    invoke-virtual {v1, v4}, Lfreemarker/core/IfBlock;->addBlock(Lfreemarker/core/ConditionalBlock;)V

    :goto_65
    const/16 v2, 0x24

    .line 1823
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 1824
    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v3, v0, v2}, Lfreemarker/core/IfBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    .line 1802
    :cond_71
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 1803
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v3

    .line 1804
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->LooseDirectiveEnd()Lfreemarker/core/Token;

    move-result-object v4

    .line 1805
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v5

    .line 1806
    new-instance v6, Lfreemarker/core/ConditionalBlock;

    const/4 v7, 0x2

    invoke-direct {v6, v3, v5, v7}, Lfreemarker/core/ConditionalBlock;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/TemplateElements;I)V

    .line 1807
    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v6, v3, v2, v4, v5}, Lfreemarker/core/ConditionalBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;Lfreemarker/core/TemplateElements;)V

    .line 1808
    invoke-virtual {v1, v6}, Lfreemarker/core/IfBlock;->addBlock(Lfreemarker/core/ConditionalBlock;)V

    goto :goto_24
.end method

.method public final Import()Lfreemarker/core/LibraryLoad;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 2685
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2686
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v1

    const/16 v2, 0x8c

    .line 2687
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    const/16 v2, 0x8e

    .line 2688
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 2689
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->LooseDirectiveEnd()Lfreemarker/core/Token;

    move-result-object v3

    .line 2690
    new-instance v4, Lfreemarker/core/LibraryLoad;

    iget-object v5, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    iget-object v2, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-direct {v4, v5, v1, v2}, Lfreemarker/core/LibraryLoad;-><init>(Lfreemarker/template/Template;Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 2691
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v4, v1, v0, v3}, Lfreemarker/core/LibraryLoad;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    .line 2692
    iget-object v0, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v0, v4}, Lfreemarker/template/Template;->addImport(Lfreemarker/core/LibraryLoad;)V

    return-object v4
.end method

.method public final Include()Lfreemarker/core/Include;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x13

    .line 2630
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2631
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v3

    .line 2632
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_13
    const/16 v4, 0x83

    if-eq v1, v4, :cond_20

    .line 2638
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v4, 0x3a

    iget v5, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v5, v1, v4

    goto :goto_23

    .line 2634
    :cond_20
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    :goto_23
    const/4 v1, 0x0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    .line 2643
    :goto_27
    iget v7, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v7, v2, :cond_2f

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v7

    :cond_2f
    const/16 v8, 0x8e

    if-eq v7, v8, :cond_4d

    .line 2649
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x3b

    iget v7, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v7, v1, v2

    .line 2676
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->LooseDirectiveEnd()Lfreemarker/core/Token;

    move-result-object v7

    .line 2677
    new-instance v8, Lfreemarker/core/Include;

    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/Include;-><init>(Lfreemarker/template/Template;Lfreemarker/core/Expression;Lfreemarker/core/Expression;Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V

    .line 2678
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v8, v1, v0, v7}, Lfreemarker/core/Include;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v8

    .line 2652
    :cond_4d
    invoke-direct {p0, v8}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v7

    const/16 v8, 0x69

    .line 2653
    invoke-direct {p0, v8}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2654
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v8

    .line 2655
    iget-object v9, v7, Lfreemarker/core/Token;->image:Ljava/lang/String;

    .line 2656
    const-string v10, "parse"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_66

    move-object v5, v8

    goto :goto_27

    .line 2658
    :cond_66
    const-string v10, "encoding"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_70

    move-object v4, v8

    goto :goto_27

    .line 2660
    :cond_70
    const-string v6, "ignore_missing"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b0

    const-string v10, "ignoreMissing"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_81

    goto :goto_b0

    .line 2664
    :cond_81
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    move-object v1, v6

    .line 2665
    :cond_88
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported named #include parameter: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\". Supported parameters are: \"parse\", \"encoding\", \"ignore_missing\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_a0

    const-string v1, ""

    goto :goto_a2

    :cond_a0
    const-string v1, " Supporting camelCase parameter names is planned for FreeMarker 2.4.0; check if an update is available, and if it indeed supports camel case."

    :goto_a2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v0, v1, v2, v7}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    .line 2661
    :cond_b0
    :goto_b0
    iget-object v6, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    invoke-virtual {v6, v7}, Lfreemarker/core/FMParserTokenManager;->checkNamingConvention(Lfreemarker/core/Token;)V

    move-object v6, v8

    goto/16 :goto_27
.end method

.method public final Items()Lfreemarker/core/Items;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1984
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    const/16 v1, 0x8e

    .line 1985
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 1986
    iget v3, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_15

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v3

    :cond_15
    const/16 v4, 0x82

    const/4 v5, 0x0

    if-eq v3, v4, :cond_24

    .line 1993
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v3, 0x24

    iget v4, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v4, v1, v3

    move-object v1, v5

    goto :goto_2b

    .line 1988
    :cond_24
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1989
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    :goto_2b
    const/16 v3, 0x94

    .line 1996
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1997
    invoke-direct {p0}, Lfreemarker/core/FMParser;->peekIteratorBlockContext()Lfreemarker/core/FMParser$ParserIteratorBlockContext;

    move-result-object v3

    if-eqz v3, :cond_e0

    .line 2001
    # getter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVarName:Ljava/lang/String;
    invoke-static {v3}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$100(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_6f

    .line 2003
    # getter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->kind:I
    invoke-static {v3}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$300(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)I

    move-result v1

    if-eq v1, v7, :cond_50

    .line 2005
    # getter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->kind:I
    invoke-static {v3}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$300(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)I

    move-result v1

    if-ne v1, v6, :cond_4d

    .line 2006
    const-string v1, "Can\'t nest #items into each other when they belong to the same #list."

    goto :goto_67

    .line 2008
    :cond_4d
    const-string v1, "The parent #list of the #items must not have \"as loopVar\" parameter."

    goto :goto_67

    .line 2004
    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lfreemarker/core/FMParser;->forEachDirectiveSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support nested #items."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2010
    :goto_67
    new-instance v2, Lfreemarker/core/ParseException;

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v2, v1, v3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v2

    .line 2012
    :cond_6f
    # setter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->kind:I
    invoke-static {v3, v6}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$302(Lfreemarker/core/FMParser$ParserIteratorBlockContext;I)I

    .line 2013
    iget-object v4, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    # setter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVarName:Ljava/lang/String;
    invoke-static {v3, v4}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$102(Lfreemarker/core/FMParser$ParserIteratorBlockContext;Ljava/lang/String;)Ljava/lang/String;

    if-eqz v1, :cond_ab

    .line 2015
    iget-object v4, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    # setter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVar2Name:Ljava/lang/String;
    invoke-static {v3, v4}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$202(Lfreemarker/core/FMParser$ParserIteratorBlockContext;Ljava/lang/String;)Ljava/lang/String;

    .line 2016
    # setter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->hashListing:Z
    invoke-static {v3, v7}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$402(Lfreemarker/core/FMParser$ParserIteratorBlockContext;Z)Z

    .line 2017
    # getter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVar2Name:Ljava/lang/String;
    invoke-static {v3}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$200(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVarName:Ljava/lang/String;
    invoke-static {v3}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$100(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_90

    goto :goto_ab

    .line 2018
    :cond_90
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "The key and value loop variable names must differ, but both were: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2019
    # getter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVarName:Ljava/lang/String;
    invoke-static {v3}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$100(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    .line 2024
    :cond_ab
    :goto_ab
    iget v4, p0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    add-int/2addr v4, v7

    iput v4, p0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    .line 2025
    iget v4, p0, Lfreemarker/core/FMParser;->continuableDirectiveNesting:I

    add-int/2addr v4, v7

    iput v4, p0, Lfreemarker/core/FMParser;->continuableDirectiveNesting:I

    .line 2026
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v4

    const/16 v6, 0x26

    .line 2027
    invoke-direct {p0, v6}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v6

    .line 2028
    iget v8, p0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    sub-int/2addr v8, v7

    iput v8, p0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    .line 2029
    iget v8, p0, Lfreemarker/core/FMParser;->continuableDirectiveNesting:I

    sub-int/2addr v8, v7

    iput v8, p0, Lfreemarker/core/FMParser;->continuableDirectiveNesting:I

    .line 2030
    # setter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVarName:Ljava/lang/String;
    invoke-static {v3, v5}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$102(Lfreemarker/core/FMParser$ParserIteratorBlockContext;Ljava/lang/String;)Ljava/lang/String;

    .line 2031
    # setter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVar2Name:Ljava/lang/String;
    invoke-static {v3, v5}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$202(Lfreemarker/core/FMParser$ParserIteratorBlockContext;Ljava/lang/String;)Ljava/lang/String;

    .line 2033
    new-instance v3, Lfreemarker/core/Items;

    iget-object v2, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    if-eqz v1, :cond_d7

    iget-object v5, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    :cond_d7
    invoke-direct {v3, v2, v5, v4}, Lfreemarker/core/Items;-><init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/TemplateElements;)V

    .line 2034
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v6}, Lfreemarker/core/Items;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3

    .line 1999
    :cond_e0
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "#items must be inside a #list block."

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final LambdaExpressionParameterList()Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 1334
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/16 v2, 0x8e

    const/16 v3, 0x87

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2d

    if-ne v0, v2, :cond_1c

    .line 1367
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Identifier()Lfreemarker/core/Identifier;

    move-result-object v0

    .line 1368
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, v4

    goto :goto_6e

    .line 1372
    :cond_1c
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x13

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 1373
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1374
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 1336
    :cond_2d
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1337
    iget v3, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v3, v1, :cond_39

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v3

    :cond_39
    if-eq v3, v2, :cond_44

    .line 1360
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x12

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v1, v2

    goto :goto_65

    .line 1339
    :cond_44
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Identifier()Lfreemarker/core/Identifier;

    move-result-object v2

    .line 1340
    new-instance v4, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1341
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1344
    :goto_51
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v2, v1, :cond_59

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_59
    const/16 v3, 0x82

    if-eq v2, v3, :cond_7b

    .line 1350
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x11

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v1, v2

    :goto_65
    const/16 v1, 0x88

    .line 1363
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    .line 1376
    :goto_6e
    new-instance v2, Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;

    if-eqz v0, :cond_73

    goto :goto_77

    .line 1378
    :cond_73
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_77
    invoke-direct {v2, v4, v0, v1}, Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;-><init>(Lfreemarker/core/Token;Ljava/util/List;Lfreemarker/core/Token;)V

    return-object v2

    .line 1353
    :cond_7b
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1354
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Identifier()Lfreemarker/core/Identifier;

    move-result-object v2

    .line 1355
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51
.end method

.method public final List()Lfreemarker/core/TemplateElement;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1870
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1871
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v2

    .line 1872
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_13

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_13
    const/16 v4, 0x8c

    const/4 v5, 0x0

    if-eq v1, v4, :cond_23

    .line 1889
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v4, 0x22

    iget v6, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v6, v1, v4

    move-object v1, v5

    move-object v4, v1

    goto :goto_49

    .line 1874
    :cond_23
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    const/16 v1, 0x8e

    .line 1875
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v4

    .line 1876
    iget v6, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v6, v3, :cond_34

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v6

    :cond_34
    const/16 v7, 0x82

    if-eq v6, v7, :cond_42

    .line 1883
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v6, 0x21

    iget v7, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v7, v1, v6

    move-object v1, v5

    goto :goto_49

    .line 1878
    :cond_42
    invoke-direct {p0, v7}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1879
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    :goto_49
    const/16 v6, 0x94

    .line 1892
    invoke-direct {p0, v6}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1893
    invoke-direct {p0}, Lfreemarker/core/FMParser;->pushIteratorBlockContext()Lfreemarker/core/FMParser$ParserIteratorBlockContext;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v4, :cond_98

    .line 1895
    iget-object v8, v4, Lfreemarker/core/Token;->image:Ljava/lang/String;

    # setter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVarName:Ljava/lang/String;
    invoke-static {v6, v8}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$102(Lfreemarker/core/FMParser$ParserIteratorBlockContext;Ljava/lang/String;)Ljava/lang/String;

    .line 1896
    iget v8, p0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    add-int/2addr v8, v7

    iput v8, p0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    .line 1897
    iget v8, p0, Lfreemarker/core/FMParser;->continuableDirectiveNesting:I

    add-int/2addr v8, v7

    iput v8, p0, Lfreemarker/core/FMParser;->continuableDirectiveNesting:I

    if-eqz v1, :cond_98

    .line 1899
    iget-object v8, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    # setter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVar2Name:Ljava/lang/String;
    invoke-static {v6, v8}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$202(Lfreemarker/core/FMParser$ParserIteratorBlockContext;Ljava/lang/String;)Ljava/lang/String;

    .line 1900
    # setter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->hashListing:Z
    invoke-static {v6, v7}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$402(Lfreemarker/core/FMParser$ParserIteratorBlockContext;Z)Z

    .line 1901
    # getter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVar2Name:Ljava/lang/String;
    invoke-static {v6}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$200(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)Ljava/lang/String;

    move-result-object v8

    # getter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVarName:Ljava/lang/String;
    invoke-static {v6}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$100(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7d

    goto :goto_98

    .line 1902
    :cond_7d
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The key and value loop variable names must differ, but both were: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1903
    # getter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVarName:Ljava/lang/String;
    invoke-static {v6}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$100(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    .line 1908
    :cond_98
    :goto_98
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v8

    if-eqz v4, :cond_a9

    .line 1910
    iget v9, p0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    sub-int/2addr v9, v7

    iput v9, p0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    .line 1911
    iget v9, p0, Lfreemarker/core/FMParser;->continuableDirectiveNesting:I

    sub-int/2addr v9, v7

    iput v9, p0, Lfreemarker/core/FMParser;->continuableDirectiveNesting:I

    goto :goto_b0

    .line 1912
    :cond_a9
    # getter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->kind:I
    invoke-static {v6}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$300(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_101

    .line 1917
    :goto_b0
    invoke-direct {p0}, Lfreemarker/core/FMParser;->popIteratorBlockContext()V

    .line 1918
    iget v7, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v7, v3, :cond_bb

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v7

    :cond_bb
    const/16 v3, 0x36

    if-eq v7, v3, :cond_c9

    .line 1924
    iget-object v3, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v7, 0x23

    iget v9, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v9, v3, v7

    move-object v9, v5

    goto :goto_ce

    .line 1920
    :cond_c9
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->ElseOfList()Lfreemarker/core/ElseOfList;

    move-result-object v3

    move-object v9, v3

    :goto_ce
    const/16 v3, 0x25

    .line 1927
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v10

    .line 1928
    new-instance v11, Lfreemarker/core/IteratorBlock;

    if-eqz v4, :cond_db

    iget-object v3, v4, Lfreemarker/core/Token;->image:Ljava/lang/String;

    goto :goto_dc

    :cond_db
    move-object v3, v5

    :goto_dc
    if-eqz v1, :cond_e2

    iget-object v1, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    move-object v4, v1

    goto :goto_e3

    :cond_e2
    move-object v4, v5

    .line 1932
    :goto_e3
    # getter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->hashListing:Z
    invoke-static {v6}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$400(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)Z

    move-result v6

    const/4 v7, 0x0

    move-object v1, v11

    move-object v5, v8

    invoke-direct/range {v1 .. v7}, Lfreemarker/core/IteratorBlock;-><init>(Lfreemarker/core/Expression;Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/TemplateElements;ZZ)V

    .line 1933
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v11, v1, v0, v10}, Lfreemarker/core/IteratorBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    if-nez v9, :cond_f5

    goto :goto_100

    .line 1939
    :cond_f5
    new-instance v1, Lfreemarker/core/ListElseContainer;

    invoke-direct {v1, v11, v9}, Lfreemarker/core/ListElseContainer;-><init>(Lfreemarker/core/IteratorBlock;Lfreemarker/core/ElseOfList;)V

    .line 1940
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v2, v0, v10}, Lfreemarker/core/TemplateElement;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    move-object v11, v1

    :goto_100
    return-object v11

    .line 1913
    :cond_101
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "#list must have either \"as loopVar\" parameter or nested #items that belongs to it."

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final ListLiteral()Lfreemarker/core/ListLiteral;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 1064
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x85

    .line 1066
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1067
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->PositionalArgs()Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0x86

    .line 1068
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 1069
    new-instance v3, Lfreemarker/core/ListLiteral;

    invoke-direct {v3, v1}, Lfreemarker/core/ListLiteral;-><init>(Ljava/util/ArrayList;)V

    .line 1070
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/ListLiteral;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3
.end method

.method public final LocalLambdaExpression()Lfreemarker/core/Expression;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1289
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_2_10(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1290
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->LambdaExpressionParameterList()Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;

    move-result-object v0

    const/16 v1, 0x77

    .line 1291
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1292
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->OrExpression()Lfreemarker/core/Expression;

    move-result-object v1

    .line 1293
    new-instance v2, Lfreemarker/core/LocalLambdaExpression;

    invoke-direct {v2, v0, v1}, Lfreemarker/core/LocalLambdaExpression;-><init>(Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;Lfreemarker/core/Expression;)V

    .line 1294
    invoke-virtual {v0}, Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;->getOpeningParenthesis()Lfreemarker/core/Token;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 1296
    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v0}, Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;->getOpeningParenthesis()Lfreemarker/core/Token;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Lfreemarker/core/Expression;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/TemplateObject;)V

    goto :goto_79

    .line 1299
    :cond_2b
    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v0}, Lfreemarker/core/LocalLambdaExpression$LambdaParameterList;->getParameters()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/TemplateObject;

    invoke-virtual {v2, v3, v0, v1}, Lfreemarker/core/Expression;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V

    goto :goto_79

    .line 1302
    :cond_3c
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_45

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_45
    const/16 v2, 0x78

    if-eq v0, v2, :cond_75

    const/16 v2, 0x79

    if-eq v0, v2, :cond_75

    const/16 v2, 0x81

    if-eq v0, v2, :cond_75

    const/16 v2, 0x85

    if-eq v0, v2, :cond_75

    const/16 v2, 0x87

    if-eq v0, v2, :cond_75

    const/16 v2, 0x89

    if-eq v0, v2, :cond_75

    const/16 v2, 0x8e

    if-eq v0, v2, :cond_75

    packed-switch v0, :pswitch_data_7a

    .line 1321
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x10

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 1322
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1323
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 1317
    :cond_75
    :pswitch_75
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->OrExpression()Lfreemarker/core/Expression;

    move-result-object v2

    :goto_79
    return-object v2

    :pswitch_data_7a
    .packed-switch 0x5d
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
    .end packed-switch
.end method

.method public final LooseDirectiveEnd()Lfreemarker/core/Token;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3578
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/16 v2, 0x94

    if-eq v0, v2, :cond_27

    const/16 v2, 0x95

    if-ne v0, v2, :cond_16

    .line 3584
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_2b

    .line 3588
    :cond_16
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x5d

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 3589
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3590
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 3580
    :cond_27
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    :goto_2b
    return-object v0
.end method

.method public final Macro()Lfreemarker/core/Macro;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2700
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2701
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2702
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2711
    iget v2, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1a

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_1a
    const/16 v6, 0x15

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v2, v6, :cond_3c

    const/16 v6, 0x16

    if-ne v2, v6, :cond_2b

    .line 2713
    invoke-direct {v0, v6}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    move-object v9, v2

    move v6, v8

    goto :goto_42

    .line 2722
    :cond_2b
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x3c

    iget v3, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v1, v2

    .line 2723
    invoke-direct {v0, v5}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2724
    new-instance v1, Lfreemarker/core/ParseException;

    invoke-direct {v1}, Lfreemarker/core/ParseException;-><init>()V

    throw v1

    .line 2717
    :cond_3c
    invoke-direct {v0, v6}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    move-object v9, v2

    move v6, v7

    .line 2726
    :goto_42
    iget-boolean v2, v0, Lfreemarker/core/FMParser;->inMacro:Z

    if-nez v2, :cond_1c5

    iget-boolean v2, v0, Lfreemarker/core/FMParser;->inFunction:Z

    if-nez v2, :cond_1c5

    if-eqz v6, :cond_4f

    .line 2729
    iput-boolean v7, v0, Lfreemarker/core/FMParser;->inFunction:Z

    goto :goto_51

    :cond_4f
    iput-boolean v7, v0, Lfreemarker/core/FMParser;->inMacro:Z

    .line 2730
    :goto_51
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->IdentifierOrStringLiteral()Lfreemarker/core/Expression;

    move-result-object v2

    .line 2731
    instance-of v10, v2, Lfreemarker/core/StringLiteral;

    if-eqz v10, :cond_60

    check-cast v2, Lfreemarker/core/StringLiteral;

    .line 2732
    invoke-virtual {v2}, Lfreemarker/core/StringLiteral;->getAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_66

    :cond_60
    check-cast v2, Lfreemarker/core/Identifier;

    .line 2733
    invoke-virtual {v2}, Lfreemarker/core/Identifier;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2734
    :goto_66
    iget v10, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v10, v5, :cond_6e

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v10

    :cond_6e
    const/16 v11, 0x87

    if-eq v10, v11, :cond_7b

    .line 2740
    iget-object v10, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v11, 0x3d

    iget v12, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v12, v10, v11

    goto :goto_7e

    .line 2736
    :cond_7b
    invoke-direct {v0, v11}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    :goto_7e
    const/4 v10, 0x0

    move v12, v8

    move v13, v12

    move-object v11, v10

    .line 2745
    :goto_82
    iget v14, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v14, v5, :cond_8a

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v14

    :cond_8a
    const/16 v15, 0x8e

    if-eq v14, v15, :cond_132

    .line 2751
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v7, 0x3e

    iget v12, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v12, v1, v7

    .line 2810
    iget v1, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v5, :cond_9e

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_9e
    const/16 v7, 0x88

    if-eq v1, v7, :cond_ab

    .line 2816
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v7, 0x42

    iget v12, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v12, v1, v7

    goto :goto_ae

    .line 2812
    :cond_ab
    invoke-direct {v0, v7}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    :goto_ae
    const/16 v1, 0x94

    .line 2819
    invoke-direct {v0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2821
    iget-object v1, v0, Lfreemarker/core/FMParser;->iteratorBlockContexts:Ljava/util/List;

    .line 2822
    iput-object v10, v0, Lfreemarker/core/FMParser;->iteratorBlockContexts:Ljava/util/List;

    .line 2823
    iget v7, v0, Lfreemarker/core/FMParser;->incompatibleImprovements:I

    sget v10, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_23:I

    if-lt v7, v10, :cond_c6

    .line 2824
    iget v7, v0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    .line 2825
    iget v10, v0, Lfreemarker/core/FMParser;->continuableDirectiveNesting:I

    .line 2826
    iput v8, v0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    .line 2827
    iput v8, v0, Lfreemarker/core/FMParser;->continuableDirectiveNesting:I

    goto :goto_c8

    :cond_c6
    move v7, v8

    move v10, v7

    .line 2832
    :goto_c8
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v12

    .line 2833
    iget v13, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v13, v5, :cond_d4

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v13

    :cond_d4
    const/16 v14, 0x2e

    if-eq v13, v14, :cond_fe

    const/16 v14, 0x2f

    if-ne v13, v14, :cond_ed

    .line 2835
    invoke-direct {v0, v14}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v5

    if-nez v6, :cond_e3

    goto :goto_104

    .line 2836
    :cond_e3
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "Expected function end tag here."

    iget-object v3, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v5}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    .line 2845
    :cond_ed
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x43

    iget v3, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v1, v2

    .line 2846
    invoke-direct {v0, v5}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2847
    new-instance v1, Lfreemarker/core/ParseException;

    invoke-direct {v1}, Lfreemarker/core/ParseException;-><init>()V

    throw v1

    .line 2840
    :cond_fe
    invoke-direct {v0, v14}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v5

    if-eqz v6, :cond_128

    :goto_104
    move-object v13, v5

    .line 2849
    iput-object v1, v0, Lfreemarker/core/FMParser;->iteratorBlockContexts:Ljava/util/List;

    .line 2850
    iget v1, v0, Lfreemarker/core/FMParser;->incompatibleImprovements:I

    sget v5, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_23:I

    if-lt v1, v5, :cond_111

    .line 2851
    iput v7, v0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    .line 2852
    iput v10, v0, Lfreemarker/core/FMParser;->continuableDirectiveNesting:I

    .line 2855
    :cond_111
    iput-boolean v8, v0, Lfreemarker/core/FMParser;->inFunction:Z

    iput-boolean v8, v0, Lfreemarker/core/FMParser;->inMacro:Z

    .line 2856
    new-instance v8, Lfreemarker/core/Macro;

    move-object v1, v8

    move-object v5, v11

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lfreemarker/core/Macro;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLfreemarker/core/TemplateElements;)V

    .line 2857
    iget-object v1, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v8, v1, v9, v13}, Lfreemarker/core/Macro;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    .line 2858
    iget-object v1, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v8}, Lfreemarker/template/Template;->addMacro(Lfreemarker/core/Macro;)V

    return-object v8

    .line 2841
    :cond_128
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "Expected macro end tag here."

    iget-object v3, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v5}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    .line 2754
    :cond_132
    invoke-direct {v0, v15}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v14

    .line 2756
    iget v15, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v15, v5, :cond_13e

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v15

    :cond_13e
    const/16 v7, 0x7c

    if-eq v15, v7, :cond_14b

    .line 2763
    iget-object v7, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v15, 0x3f

    iget v8, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v8, v7, v15

    goto :goto_14f

    .line 2758
    :cond_14b
    invoke-direct {v0, v7}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    const/4 v12, 0x1

    .line 2766
    :goto_14f
    iget v7, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v7, v5, :cond_157

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v7

    :cond_157
    const/16 v8, 0x69

    if-eq v7, v8, :cond_165

    .line 2775
    iget-object v7, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v8, 0x40

    iget v15, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v15, v7, v8

    move-object v7, v10

    goto :goto_172

    .line 2768
    :cond_165
    invoke-direct {v0, v8}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2769
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v7

    .line 2770
    iget-object v8, v14, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    .line 2778
    :goto_172
    iget v8, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v8, v5, :cond_17a

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v8

    :cond_17a
    const/16 v15, 0x82

    if-eq v8, v15, :cond_187

    .line 2784
    iget-object v8, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v15, 0x41

    iget v5, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v5, v8, v15

    goto :goto_18a

    .line 2780
    :cond_187
    invoke-direct {v0, v15}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    :goto_18a
    if-nez v11, :cond_1bb

    if-eqz v12, :cond_19d

    if-nez v7, :cond_193

    .line 2798
    iget-object v11, v14, Lfreemarker/core/Token;->image:Ljava/lang/String;

    goto :goto_1b6

    .line 2794
    :cond_193
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "\"Catch-all\" macro parameter may not have a default value."

    iget-object v3, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v14}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    .line 2800
    :cond_19d
    iget-object v5, v14, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_1b1

    if-eqz v7, :cond_1a7

    goto :goto_1b1

    .line 2802
    :cond_1a7
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "In a macro declaration, parameters without a default value must all occur before the parameters with default values."

    iget-object v3, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v14}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    .line 2807
    :cond_1b1
    :goto_1b1
    iget-object v5, v14, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1b6
    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_82

    .line 2788
    :cond_1bb
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "There may only be one \"catch-all\" parameter in a macro declaration, and it must be the last parameter."

    iget-object v3, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v14}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    .line 2727
    :cond_1c5
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "Macro or function definitions can\'t be nested into each other."

    iget-object v3, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v9}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final MethodArgs(Lfreemarker/core/Expression;)Lfreemarker/core/MethodCall;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 1491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x87

    .line 1493
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1494
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->PositionalArgs()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x88

    .line 1495
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    .line 1496
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 1497
    new-instance v2, Lfreemarker/core/MethodCall;

    invoke-direct {v2, p1, v0}, Lfreemarker/core/MethodCall;-><init>(Lfreemarker/core/Expression;Ljava/util/ArrayList;)V

    .line 1498
    iget-object v0, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v2, v0, p1, v1}, Lfreemarker/core/MethodCall;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/Token;)V

    return-object v2
.end method

.method public final MixedContent()Lfreemarker/core/MixedContent;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 4039
    new-instance v0, Lfreemarker/core/MixedContent;

    invoke-direct {v0}, Lfreemarker/core/MixedContent;-><init>()V

    .line 4041
    iget v1, p0, Lfreemarker/core/FMParser;->mixedContentNesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfreemarker/core/FMParser;->mixedContentNesting:I

    const/4 v1, 0x0

    .line 4044
    :cond_c
    :pswitch_c
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_15
    const/16 v4, 0x4a

    const/16 v5, 0x48

    const/16 v6, 0x8

    const/4 v7, 0x6

    if-eq v2, v7, :cond_53

    if-eq v2, v6, :cond_53

    if-eq v2, v5, :cond_53

    if-eq v2, v4, :cond_53

    packed-switch v2, :pswitch_data_90

    packed-switch v2, :pswitch_data_9e

    packed-switch v2, :pswitch_data_ca

    packed-switch v2, :pswitch_data_e0

    packed-switch v2, :pswitch_data_f0

    .line 4108
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x65

    iget v2, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v2, v0, v1

    .line 4109
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 4110
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 4057
    :pswitch_44
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->NumericalOutput()Lfreemarker/core/NumericalOutput;

    move-result-object v2

    goto :goto_57

    .line 4053
    :pswitch_49
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->StringOutput()Lfreemarker/core/DollarVariable;

    move-result-object v2

    goto :goto_57

    .line 4048
    :pswitch_4e
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->PCData()Lfreemarker/core/TextBlock;

    move-result-object v2

    goto :goto_57

    .line 4104
    :cond_53
    :pswitch_53
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->FreemarkerDirective()Lfreemarker/core/TemplateElement;

    move-result-object v2

    :goto_57
    if-nez v1, :cond_5a

    move-object v1, v2

    .line 4115
    :cond_5a
    invoke-virtual {v0, v2}, Lfreemarker/core/MixedContent;->addElement(Lfreemarker/core/TemplateElement;)V

    .line 4116
    iget v8, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v8, v3, :cond_65

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v8

    :cond_65
    if-eq v8, v7, :cond_c

    if-eq v8, v6, :cond_c

    if-eq v8, v5, :cond_c

    if-eq v8, v4, :cond_c

    packed-switch v8, :pswitch_data_100

    packed-switch v8, :pswitch_data_10e

    packed-switch v8, :pswitch_data_13a

    packed-switch v8, :pswitch_data_150

    packed-switch v8, :pswitch_data_160

    .line 4171
    iget-object v3, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v4, 0x66

    iget v5, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v5, v3, v4

    .line 4175
    iget v3, p0, Lfreemarker/core/FMParser;->mixedContentNesting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lfreemarker/core/FMParser;->mixedContentNesting:I

    .line 4176
    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v0, v3, v1, v2}, Lfreemarker/core/MixedContent;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V

    return-object v0

    :pswitch_data_90
    .packed-switch 0xa
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x10
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x37
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
    .end packed-switch

    :pswitch_data_e0
    .packed-switch 0x41
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x4f
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_49
        :pswitch_44
        :pswitch_49
    .end packed-switch

    :pswitch_data_100
    .packed-switch 0xa
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_10e
    .packed-switch 0x10
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_13a
    .packed-switch 0x37
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_150
    .packed-switch 0x41
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_160
    .packed-switch 0x4f
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public final MixedContentElements()Lfreemarker/core/TemplateElements;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3885
    iget v0, p0, Lfreemarker/core/FMParser;->mixedContentNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfreemarker/core/FMParser;->mixedContentNesting:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 3888
    :cond_9
    :goto_9
    iget v3, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_12

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v3

    :cond_12
    const/16 v5, 0x4a

    const/16 v6, 0x48

    const/16 v7, 0x8

    const/4 v8, 0x6

    if-eq v3, v8, :cond_49

    if-eq v3, v7, :cond_49

    if-eq v3, v6, :cond_49

    if-eq v3, v5, :cond_49

    packed-switch v3, :pswitch_data_b0

    packed-switch v3, :pswitch_data_be

    packed-switch v3, :pswitch_data_ea

    packed-switch v3, :pswitch_data_100

    packed-switch v3, :pswitch_data_110

    .line 3943
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v3, 0x63

    iget v4, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v4, v1, v3

    .line 4029
    iget v1, p0, Lfreemarker/core/FMParser;->mixedContentNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lfreemarker/core/FMParser;->mixedContentNesting:I

    if-eqz v0, :cond_46

    .line 4030
    new-instance v1, Lfreemarker/core/TemplateElements;

    invoke-direct {v1, v0, v2}, Lfreemarker/core/TemplateElements;-><init>([Lfreemarker/core/TemplateElement;I)V

    goto :goto_48

    :cond_46
    sget-object v1, Lfreemarker/core/TemplateElements;->EMPTY:Lfreemarker/core/TemplateElements;

    :goto_48
    return-object v1

    .line 3946
    :cond_49
    :pswitch_49
    iget v3, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v3, v4, :cond_51

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v3

    :cond_51
    if-eq v3, v8, :cond_88

    if-eq v3, v7, :cond_88

    if-eq v3, v6, :cond_88

    if-eq v3, v5, :cond_88

    packed-switch v3, :pswitch_data_120

    packed-switch v3, :pswitch_data_12e

    packed-switch v3, :pswitch_data_15a

    packed-switch v3, :pswitch_data_170

    packed-switch v3, :pswitch_data_180

    .line 4010
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x64

    iget v2, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v2, v0, v1

    .line 4011
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 4012
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 3959
    :pswitch_79
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->NumericalOutput()Lfreemarker/core/NumericalOutput;

    move-result-object v3

    goto :goto_8c

    .line 3955
    :pswitch_7e
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->StringOutput()Lfreemarker/core/DollarVariable;

    move-result-object v3

    goto :goto_8c

    .line 3950
    :pswitch_83
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->PCData()Lfreemarker/core/TextBlock;

    move-result-object v3

    goto :goto_8c

    .line 4006
    :cond_88
    :pswitch_88
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->FreemarkerDirective()Lfreemarker/core/TemplateElement;

    move-result-object v3

    :goto_8c
    if-eqz v3, :cond_9

    add-int/lit8 v4, v2, 0x1

    if-nez v0, :cond_97

    const/16 v0, 0x10

    .line 4018
    new-array v0, v0, [Lfreemarker/core/TemplateElement;

    goto :goto_aa

    .line 4019
    :cond_97
    array-length v5, v0

    if-ge v5, v4, :cond_aa

    mul-int/lit8 v5, v4, 0x2

    .line 4020
    new-array v5, v5, [Lfreemarker/core/TemplateElement;

    move v6, v1

    .line 4021
    :goto_9f
    array-length v7, v0

    if-ge v6, v7, :cond_a9

    .line 4022
    aget-object v7, v0, v6

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_9f

    :cond_a9
    move-object v0, v5

    .line 4026
    :cond_aa
    :goto_aa
    aput-object v3, v0, v2

    move v2, v4

    goto/16 :goto_9

    nop

    :pswitch_data_b0
    .packed-switch 0xa
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
    .end packed-switch

    :pswitch_data_be
    .packed-switch 0x10
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
    .end packed-switch

    :pswitch_data_ea
    .packed-switch 0x37
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
    .end packed-switch

    :pswitch_data_100
    .packed-switch 0x41
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
    .end packed-switch

    :pswitch_data_110
    .packed-switch 0x4f
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
    .end packed-switch

    :pswitch_data_120
    .packed-switch 0xa
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
    .end packed-switch

    :pswitch_data_12e
    .packed-switch 0x10
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
    .end packed-switch

    :pswitch_data_15a
    .packed-switch 0x37
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
    .end packed-switch

    :pswitch_data_170
    .packed-switch 0x41
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
    .end packed-switch

    :pswitch_data_180
    .packed-switch 0x4f
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_7e
        :pswitch_79
        :pswitch_7e
    .end packed-switch
.end method

.method public final MultiplicativeExpression()Lfreemarker/core/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 822
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->UnaryExpression()Lfreemarker/core/Expression;

    move-result-object v0

    :goto_4
    const v1, 0x7fffffff

    .line 826
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_2_2(I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 831
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_16
    const/16 v3, 0x7a

    if-eq v1, v3, :cond_3c

    const/16 v3, 0x7d

    if-eq v1, v3, :cond_37

    const/16 v3, 0x7e

    if-ne v1, v3, :cond_27

    .line 843
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    const/4 v1, 0x3

    goto :goto_40

    .line 848
    :cond_27
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/4 v1, 0x7

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v1

    .line 849
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 850
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 838
    :cond_37
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    const/4 v1, 0x2

    goto :goto_40

    .line 833
    :cond_3c
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    const/4 v1, 0x1

    .line 852
    :goto_40
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->UnaryExpression()Lfreemarker/core/Expression;

    move-result-object v2

    .line 853
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->numberLiteralOnly(Lfreemarker/core/Expression;)V

    .line 854
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->numberLiteralOnly(Lfreemarker/core/Expression;)V

    .line 855
    new-instance v3, Lfreemarker/core/ArithmeticExpression;

    invoke-direct {v3, v0, v2, v1}, Lfreemarker/core/ArithmeticExpression;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;I)V

    .line 856
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/Expression;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V

    move-object v0, v3

    goto :goto_4

    :cond_56
    return-object v0
.end method

.method public final NamedArgs()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3068
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_5
    const/16 v1, 0x8e

    .line 3073
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    const/16 v3, 0x69

    .line 3074
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3075
    iget-object v3, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lfreemarker/core/FMParserTokenManager;->SwitchTo(I)V

    .line 3076
    iget-object v3, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lfreemarker/core/FMParserTokenManager;->inInvocation:Z

    .line 3077
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v3

    .line 3078
    iget-object v2, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3079
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2d

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_2d
    if-eq v2, v1, :cond_5

    .line 3085
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x4d

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v1, v2

    .line 3089
    iget-object v1, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lfreemarker/core/FMParserTokenManager;->inInvocation:Z

    return-object v0
.end method

.method public final Nested()Lfreemarker/core/TemplateElement;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 2257
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/16 v2, 0x41

    if-eq v0, v2, :cond_39

    const/16 v2, 0x42

    if-ne v0, v2, :cond_28

    .line 2265
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2266
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->PositionalArgs()Ljava/util/ArrayList;

    move-result-object v1

    .line 2267
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->LooseDirectiveEnd()Lfreemarker/core/Token;

    move-result-object v2

    .line 2268
    new-instance v3, Lfreemarker/core/BodyInstruction;

    invoke-direct {v3, v1}, Lfreemarker/core/BodyInstruction;-><init>(Ljava/util/List;)V

    .line 2269
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/BodyInstruction;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    goto :goto_48

    .line 2273
    :cond_28
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x2c

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 2274
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2275
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 2259
    :cond_39
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2260
    new-instance v3, Lfreemarker/core/BodyInstruction;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lfreemarker/core/BodyInstruction;-><init>(Ljava/util/List;)V

    .line 2261
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v0}, Lfreemarker/core/BodyInstruction;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    .line 2277
    :goto_48
    iget-boolean v1, p0, Lfreemarker/core/FMParser;->inMacro:Z

    if-eqz v1, :cond_4d

    return-object v3

    .line 2278
    :cond_4d
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot use a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instruction outside a macro."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final NoAutoEsc()Lfreemarker/core/NoAutoEscBlock;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x1f

    .line 3559
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 3560
    iget v1, p0, Lfreemarker/core/FMParser;->autoEscapingPolicy:I

    const/16 v2, 0x14

    .line 3561
    iput v2, p0, Lfreemarker/core/FMParser;->autoEscapingPolicy:I

    .line 3562
    invoke-direct {p0}, Lfreemarker/core/FMParser;->recalculateAutoEscapingField()V

    .line 3563
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v2

    const/16 v3, 0x32

    .line 3564
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v3

    .line 3565
    new-instance v4, Lfreemarker/core/NoAutoEscBlock;

    invoke-direct {v4, v2}, Lfreemarker/core/NoAutoEscBlock;-><init>(Lfreemarker/core/TemplateElements;)V

    .line 3566
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v4, v2, v0, v3}, Lfreemarker/core/NoAutoEscBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    .line 3568
    iput v1, p0, Lfreemarker/core/FMParser;->autoEscapingPolicy:I

    .line 3569
    invoke-direct {p0}, Lfreemarker/core/FMParser;->recalculateAutoEscapingField()V

    return-object v4
.end method

.method public final NoEscape()Lfreemarker/core/NoEscapeBlock;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x48

    .line 3441
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 3442
    iget-object v1, p0, Lfreemarker/core/FMParser;->escapes:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 3445
    iget-object v1, p0, Lfreemarker/core/FMParser;->escapes:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    .line 3446
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v2

    const/16 v3, 0x49

    .line 3447
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v3

    .line 3448
    iget-object v4, p0, Lfreemarker/core/FMParser;->escapes:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 3449
    new-instance v1, Lfreemarker/core/NoEscapeBlock;

    invoke-direct {v1, v2}, Lfreemarker/core/NoEscapeBlock;-><init>(Lfreemarker/core/TemplateElements;)V

    .line 3450
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v2, v0, v3}, Lfreemarker/core/NoEscapeBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    .line 3443
    :cond_2e
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "#noescape with no matching #escape encountered."

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final NoParse()Lfreemarker/core/TextBlock;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x23

    .line 3255
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    .line 3256
    invoke-virtual {p0, v1, v0}, Lfreemarker/core/FMParser;->UnparsedContent(Lfreemarker/core/Token;Ljava/lang/StringBuilder;)Lfreemarker/core/Token;

    move-result-object v2

    .line 3257
    new-instance v3, Lfreemarker/core/TextBlock;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lfreemarker/core/TextBlock;-><init>(Ljava/lang/String;Z)V

    .line 3258
    iget-object v0, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v0, v1, v2}, Lfreemarker/core/TextBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3
.end method

.method public final NotExpression()Lfreemarker/core/Expression;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    const/16 v1, 0x81

    .line 724
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 725
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_17
    if-eq v2, v1, :cond_5

    .line 732
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/4 v2, 0x4

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v1, v2

    .line 736
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->PrimaryExpression()Lfreemarker/core/Expression;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 737
    :goto_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_47

    .line 738
    new-instance v2, Lfreemarker/core/NotExpression;

    invoke-direct {v2, v1}, Lfreemarker/core/NotExpression;-><init>(Lfreemarker/core/Expression;)V

    .line 739
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/core/Token;

    .line 740
    iget-object v5, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v2, v5, v4, v1}, Lfreemarker/core/Expression;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/TemplateObject;)V

    add-int/lit8 v3, v3, 0x1

    move-object v1, v2

    goto :goto_26

    :cond_47
    return-object v2
.end method

.method public final NumberLiteral()Lfreemarker/core/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 1076
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/16 v2, 0x61

    if-eq v0, v2, :cond_27

    const/16 v2, 0x62

    if-ne v0, v2, :cond_16

    .line 1082
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_2b

    .line 1086
    :cond_16
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0xd

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 1087
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1088
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 1078
    :cond_27
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1090
    :goto_2b
    iget-object v1, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    .line 1091
    new-instance v2, Lfreemarker/core/NumberLiteral;

    iget-object v3, p0, Lfreemarker/core/FMParser;->pCfg:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v3}, Lfreemarker/core/ParserConfiguration;->getArithmeticEngine()Lfreemarker/core/ArithmeticEngine;

    move-result-object v3

    invoke-virtual {v3, v1}, Lfreemarker/core/ArithmeticEngine;->toNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    invoke-direct {v2, v1}, Lfreemarker/core/NumberLiteral;-><init>(Ljava/lang/Number;)V

    .line 1093
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v2, v1, v0, v0}, Lfreemarker/core/Expression;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v2
.end method

.method public final NumericalOutput()Lfreemarker/core/NumericalOutput;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x53

    .line 1699
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1700
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v1

    .line 1701
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->numberLiteralOnly(Lfreemarker/core/Expression;)V

    .line 1702
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_16
    const/16 v4, 0x83

    const/4 v5, 0x0

    if-eq v2, v4, :cond_25

    .line 1709
    iget-object v2, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v4, 0x1d

    iget v6, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v6, v2, v4

    move-object v2, v5

    goto :goto_2e

    .line 1704
    :cond_25
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    const/16 v2, 0x8e

    .line 1705
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    :goto_2e
    const/16 v4, 0x8a

    .line 1712
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v4

    .line 1713
    iget-boolean v6, p0, Lfreemarker/core/FMParser;->autoEscaping:Z

    if-eqz v6, :cond_41

    iget-object v6, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    instance-of v7, v6, Lfreemarker/core/MarkupOutputFormat;

    if-eqz v7, :cond_41

    move-object v5, v6

    check-cast v5, Lfreemarker/core/MarkupOutputFormat;

    :cond_41
    if-eqz v2, :cond_10f

    .line 1721
    new-instance v6, Ljava/util/StringTokenizer;

    iget-object v7, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    const-string v8, "mM"

    const/4 v9, 0x1

    invoke-direct {v6, v7, v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v7, 0x2d

    move v8, v3

    move v9, v8

    :goto_51
    move v10, v7

    .line 1723
    :goto_52
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_da

    .line 1724
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x6d

    const/16 v13, 0x4d

    if-eq v10, v7, :cond_8e

    .line 1727
    const-string v14, "Invalid formatting string"

    if-eq v10, v13, :cond_7f

    if-ne v10, v12, :cond_77

    if-ne v9, v3, :cond_6f

    .line 1730
    :try_start_6a
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_51

    .line 1729
    :cond_6f
    new-instance v0, Lfreemarker/core/ParseException;

    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v0, v14, v1, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    .line 1737
    :cond_77
    new-instance v0, Lfreemarker/core/ParseException;

    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v0, v14, v1, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    :cond_7f
    if-ne v8, v3, :cond_86

    .line 1734
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_51

    .line 1733
    :cond_86
    new-instance v0, Lfreemarker/core/ParseException;

    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v0, v14, v1, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    .line 1740
    :cond_8e
    const-string v10, "m"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_98

    move v10, v12

    goto :goto_52

    .line 1742
    :cond_98
    const-string v10, "M"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a2

    move v10, v13

    goto :goto_52

    .line 1745
    :cond_a2
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0
    :try_end_a8
    .catch Lfreemarker/core/ParseException; {:try_start_6a .. :try_end_a8} :catch_c1
    .catch Ljava/lang/NumberFormatException; {:try_start_6a .. :try_end_a8} :catch_a8

    .line 1750
    :catch_a8
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid number in the format specifier "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v0, v1, v3, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    .line 1748
    :catch_c1
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid format specifier "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v0, v1, v3, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    :cond_da
    if-ne v8, v3, :cond_ea

    if-eq v9, v3, :cond_e0

    move v8, v9

    goto :goto_ed

    .line 1756
    :cond_e0
    new-instance v0, Lfreemarker/core/ParseException;

    const-string v1, "Invalid format specification, at least one of m and M must be specified!"

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v0, v1, v3, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    :cond_ea
    if-ne v9, v3, :cond_ed

    const/4 v9, 0x0

    :cond_ed
    :goto_ed
    if-gt v9, v8, :cond_105

    const/16 v3, 0x32

    if-gt v9, v3, :cond_fb

    if-gt v8, v3, :cond_fb

    .line 1770
    new-instance v2, Lfreemarker/core/NumericalOutput;

    invoke-direct {v2, v1, v9, v8, v5}, Lfreemarker/core/NumericalOutput;-><init>(Lfreemarker/core/Expression;IILfreemarker/core/MarkupOutputFormat;)V

    goto :goto_114

    .line 1768
    :cond_fb
    new-instance v0, Lfreemarker/core/ParseException;

    const-string v1, "Cannot specify more than 50 fraction digits"

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v0, v1, v3, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    .line 1764
    :cond_105
    new-instance v0, Lfreemarker/core/ParseException;

    const-string v1, "Invalid format specification, min cannot be greater than max!"

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v0, v1, v3, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    .line 1772
    :cond_10f
    new-instance v2, Lfreemarker/core/NumericalOutput;

    invoke-direct {v2, v1, v5}, Lfreemarker/core/NumericalOutput;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/MarkupOutputFormat;)V

    .line 1774
    :goto_114
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v2, v1, v0, v4}, Lfreemarker/core/NumericalOutput;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v2
.end method

.method public final OptionalBlock()Lfreemarker/core/TemplateElement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 4191
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/4 v1, 0x6

    if-eq v0, v1, :cond_31

    const/16 v1, 0x8

    if-eq v0, v1, :cond_31

    const/16 v1, 0x48

    if-eq v0, v1, :cond_31

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_31

    packed-switch v0, :pswitch_data_42

    packed-switch v0, :pswitch_data_50

    packed-switch v0, :pswitch_data_7c

    packed-switch v0, :pswitch_data_92

    packed-switch v0, :pswitch_data_a2

    .line 4247
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x67

    iget v2, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v2, v0, v1

    const/4 v0, 0x0

    goto :goto_35

    .line 4243
    :cond_31
    :pswitch_31
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContent()Lfreemarker/core/MixedContent;

    move-result-object v0

    :goto_35
    if-eqz v0, :cond_38

    goto :goto_40

    .line 4250
    :cond_38
    new-instance v0, Lfreemarker/core/TextBlock;

    sget-object v1, Lfreemarker/template/utility/CollectionUtils;->EMPTY_CHAR_ARRAY:[C

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfreemarker/core/TextBlock;-><init>([CZ)V

    :goto_40
    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0xa
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x10
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0x37
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x41
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x4f
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method public final OrExpression()Lfreemarker/core/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 1043
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->AndExpression()Lfreemarker/core/Expression;

    move-result-object v0

    :goto_4
    const v1, 0x7fffffff

    .line 1047
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_2_7(I)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x80

    .line 1052
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1053
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->AndExpression()Lfreemarker/core/Expression;

    move-result-object v1

    .line 1054
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->booleanLiteralOnly(Lfreemarker/core/Expression;)V

    .line 1055
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->booleanLiteralOnly(Lfreemarker/core/Expression;)V

    .line 1056
    new-instance v2, Lfreemarker/core/OrExpression;

    invoke-direct {v2, v0, v1}, Lfreemarker/core/OrExpression;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V

    .line 1057
    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v2, v3, v0, v1}, Lfreemarker/core/Expression;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V

    move-object v0, v2

    goto :goto_4

    :cond_28
    return-object v0
.end method

.method public final OutputFormat()Lfreemarker/core/OutputFormatBlock;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3459
    const-string v0, "\nUnderlying cause: "

    const-string v1, "Could not evaluate expression (on parse-time): "

    .line 0
    const-string v2, "The current output format must be a markup format when using {...}, but was: "

    const-string v3, "The output format inside the {...} must be a markup format, but was: "

    const-string v4, "Output format name that starts with \'{\' must end with \'}\': "

    const/16 v5, 0x1d

    .line 3459
    invoke-direct {p0, v5}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v5

    .line 3460
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v6

    const/16 v7, 0x94

    .line 3461
    invoke-direct {p0, v7}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3462
    invoke-virtual {v6}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result v7

    if-eqz v7, :cond_160

    const/4 v7, 0x0

    .line 3471
    :try_start_20
    invoke-virtual {v6, v7}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v7
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_24} :catch_140

    .line 3479
    instance-of v8, v7, Lfreemarker/template/TemplateScalarModel;

    if-eqz v8, :cond_127

    .line 3481
    :try_start_28
    check-cast v7, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v7}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catch Lfreemarker/template/TemplateModelException; {:try_start_28 .. :try_end_2e} :catch_107

    .line 3494
    iget-object v1, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    .line 3496
    :try_start_30
    const-string v7, "{"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ad

    .line 3497
    const-string v7, "}"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_98

    .line 3501
    iget-object v4, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v4}, Lfreemarker/template/Template;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v4

    .line 3502
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3501
    invoke-virtual {v4, v0}, Lfreemarker/template/Configuration;->getOutputFormat(Ljava/lang/String;)Lfreemarker/core/OutputFormat;

    move-result-object v0

    .line 3503
    instance-of v4, v0, Lfreemarker/core/MarkupOutputFormat;

    if-eqz v4, :cond_83

    .line 3509
    iget-object v3, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    instance-of v3, v3, Lfreemarker/core/MarkupOutputFormat;

    if-eqz v3, :cond_6c

    .line 3515
    new-instance v2, Lfreemarker/core/CombinedMarkupOutputFormat;

    iget-object v3, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    check-cast v3, Lfreemarker/core/MarkupOutputFormat;

    check-cast v0, Lfreemarker/core/MarkupOutputFormat;

    invoke-direct {v2, v3, v0}, Lfreemarker/core/CombinedMarkupOutputFormat;-><init>(Lfreemarker/core/MarkupOutputFormat;Lfreemarker/core/MarkupOutputFormat;)V

    iput-object v2, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    goto :goto_b9

    .line 3510
    :cond_6c
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v0, v1, v2, v5}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0

    .line 3504
    :cond_83
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v0, v2, v5}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    .line 3498
    :cond_98
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v0, v2, v5}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    .line 3518
    :cond_ad
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v2}, Lfreemarker/template/Template;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfreemarker/template/Configuration;->getOutputFormat(Ljava/lang/String;)Lfreemarker/core/OutputFormat;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    .line 3520
    :goto_b9
    invoke-direct {p0}, Lfreemarker/core/FMParser;->recalculateAutoEscapingField()V
    :try_end_bc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_bc} :catch_e7
    .catch Lfreemarker/core/UnregisteredOutputFormatException; {:try_start_30 .. :try_end_bc} :catch_d6

    .line 3526
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v0

    const/16 v2, 0x30

    .line 3527
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 3528
    new-instance v3, Lfreemarker/core/OutputFormatBlock;

    invoke-direct {v3, v0, v6}, Lfreemarker/core/OutputFormatBlock;-><init>(Lfreemarker/core/TemplateElements;Lfreemarker/core/Expression;)V

    .line 3529
    iget-object v0, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v0, v5, v2}, Lfreemarker/core/OutputFormatBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    .line 3531
    iput-object v1, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    .line 3532
    invoke-direct {p0}, Lfreemarker/core/FMParser;->recalculateAutoEscapingField()V

    return-object v3

    :catch_d6
    move-exception v0

    .line 3524
    new-instance v1, Lfreemarker/core/ParseException;

    invoke-virtual {v0}, Lfreemarker/core/UnregisteredOutputFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v0}, Lfreemarker/core/UnregisteredOutputFormatException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v3, v5, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;Ljava/lang/Throwable;)V

    throw v1

    :catch_e7
    move-exception v0

    .line 3522
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid format name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v3, v5, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;Ljava/lang/Throwable;)V

    throw v1

    :catch_107
    move-exception v2

    .line 3483
    new-instance v3, Lfreemarker/core/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3484
    invoke-virtual {v6}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v6, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;Ljava/lang/Throwable;)V

    throw v3

    .line 3489
    :cond_127
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameter must be a string, but was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3490
    invoke-static {v7}, Lfreemarker/template/utility/ClassUtil;->getFTLTypeDescription(Lfreemarker/template/TemplateModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v0

    :catch_140
    move-exception v2

    .line 3473
    new-instance v3, Lfreemarker/core/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3474
    invoke-virtual {v6}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v6, v2}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;Ljava/lang/Throwable;)V

    throw v3

    .line 3463
    :cond_160
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameter expression must be parse-time evaluable (constant): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3465
    invoke-virtual {v6}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/core/TemplateObject;)V

    throw v0
.end method

.method public final PCData()Lfreemarker/core/TextBlock;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    .line 3776
    :goto_8
    iget v4, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_11

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v4

    :cond_11
    packed-switch v4, :pswitch_data_7a

    .line 3790
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x5f

    iget v2, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v2, v0, v1

    .line 3791
    invoke-direct {p0, v5}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3792
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :pswitch_25
    const/16 v4, 0x51

    .line 3786
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v4

    goto :goto_39

    :pswitch_2c
    const/16 v4, 0x50

    .line 3782
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v4

    goto :goto_39

    :pswitch_33
    const/16 v4, 0x4f

    .line 3778
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v4

    .line 3794
    :goto_39
    iget-object v6, v4, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_41

    move-object v2, v4

    :cond_41
    if-eqz v3, :cond_45

    .line 3796
    iput-object v1, v3, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    .line 3798
    :cond_45
    iget v3, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v3, v5, :cond_4d

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v3

    :cond_4d
    packed-switch v3, :pswitch_data_84

    .line 3806
    iget-object v3, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v5, 0x60

    iget v6, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v6, v3, v5

    goto :goto_5b

    :pswitch_59
    move-object v3, v4

    goto :goto_8

    .line 3810
    :goto_5b
    iget-boolean v3, p0, Lfreemarker/core/FMParser;->stripText:Z

    if-eqz v3, :cond_69

    iget v3, p0, Lfreemarker/core/FMParser;->mixedContentNesting:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_69

    iget-boolean v3, p0, Lfreemarker/core/FMParser;->preventStrippings:Z

    if-nez v3, :cond_69

    return-object v1

    .line 3812
    :cond_69
    new-instance v1, Lfreemarker/core/TextBlock;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lfreemarker/core/TextBlock;-><init>(Ljava/lang/String;Z)V

    .line 3813
    iget-object v0, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v0, v2, v4}, Lfreemarker/core/TextBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    nop

    :pswitch_data_7a
    .packed-switch 0x4f
        :pswitch_33
        :pswitch_2c
        :pswitch_25
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x4f
        :pswitch_59
        :pswitch_59
        :pswitch_59
    .end packed-switch
.end method

.method public final ParamList()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 4523
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4526
    :cond_5
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Identifier()Lfreemarker/core/Identifier;

    move-result-object v1

    const/16 v2, 0x69

    .line 4527
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 4528
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v2

    .line 4529
    invoke-virtual {v1}, Lfreemarker/core/Identifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4530
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_22

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_22
    const/16 v3, 0x82

    if-eq v1, v3, :cond_2f

    .line 4536
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v3, 0x6f

    iget v4, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v4, v1, v3

    goto :goto_32

    .line 4532
    :cond_2f
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 4539
    :goto_32
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v2, :cond_3a

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_3a
    const/16 v2, 0x8e

    if-eq v1, v2, :cond_5

    .line 4545
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x70

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v1, v2

    return-object v0
.end method

.method public final Parenthesis()Lfreemarker/core/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x87

    .line 670
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 671
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v1

    const/16 v2, 0x88

    .line 672
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 673
    new-instance v3, Lfreemarker/core/ParentheticalExpression;

    invoke-direct {v3, v1}, Lfreemarker/core/ParentheticalExpression;-><init>(Lfreemarker/core/Expression;)V

    .line 674
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/Expression;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3
.end method

.method public final PositionalArgs()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3094
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3096
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_e
    const/16 v3, 0x8e

    const/16 v4, 0x89

    const/16 v5, 0x87

    const/16 v6, 0x85

    const/16 v7, 0x81

    const/16 v8, 0x79

    const/16 v9, 0x78

    if-eq v1, v9, :cond_36

    if-eq v1, v8, :cond_36

    if-eq v1, v7, :cond_36

    if-eq v1, v6, :cond_36

    if-eq v1, v5, :cond_36

    if-eq v1, v4, :cond_36

    if-eq v1, v3, :cond_36

    packed-switch v1, :pswitch_data_82

    .line 3153
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x50

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v1, v2

    goto :goto_62

    .line 3111
    :cond_36
    :pswitch_36
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v1

    .line 3112
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3115
    :goto_3d
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v2, :cond_45

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_45
    const/16 v10, 0x82

    if-eq v1, v9, :cond_63

    if-eq v1, v8, :cond_63

    if-eq v1, v7, :cond_63

    if-eq v1, v10, :cond_63

    if-eq v1, v6, :cond_63

    if-eq v1, v5, :cond_63

    if-eq v1, v4, :cond_63

    if-eq v1, v3, :cond_63

    packed-switch v1, :pswitch_data_94

    .line 3135
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x4e

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v1, v2

    :goto_62
    return-object v0

    .line 3138
    :cond_63
    :pswitch_63
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v2, :cond_6b

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_6b
    if-eq v1, v10, :cond_76

    .line 3144
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v10, 0x4f

    iget v11, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v11, v1, v10

    goto :goto_79

    .line 3140
    :cond_76
    invoke-direct {p0, v10}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3147
    :goto_79
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v1

    .line 3148
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    nop

    :pswitch_data_82
    .packed-switch 0x5d
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x5d
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
    .end packed-switch
.end method

.method public final PositionalMaybeLambdaArgs()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3166
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_e
    const/16 v3, 0x8e

    const/16 v4, 0x89

    const/16 v5, 0x87

    const/16 v6, 0x85

    const/16 v7, 0x81

    const/16 v8, 0x79

    const/16 v9, 0x78

    if-eq v1, v9, :cond_36

    if-eq v1, v8, :cond_36

    if-eq v1, v7, :cond_36

    if-eq v1, v6, :cond_36

    if-eq v1, v5, :cond_36

    if-eq v1, v4, :cond_36

    if-eq v1, v3, :cond_36

    packed-switch v1, :pswitch_data_82

    .line 3223
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x53

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v1, v2

    goto :goto_62

    .line 3181
    :cond_36
    :pswitch_36
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->LocalLambdaExpression()Lfreemarker/core/Expression;

    move-result-object v1

    .line 3182
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3185
    :goto_3d
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v2, :cond_45

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_45
    const/16 v10, 0x82

    if-eq v1, v9, :cond_63

    if-eq v1, v8, :cond_63

    if-eq v1, v7, :cond_63

    if-eq v1, v10, :cond_63

    if-eq v1, v6, :cond_63

    if-eq v1, v5, :cond_63

    if-eq v1, v4, :cond_63

    if-eq v1, v3, :cond_63

    packed-switch v1, :pswitch_data_94

    .line 3205
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x51

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v1, v2

    :goto_62
    return-object v0

    .line 3208
    :cond_63
    :pswitch_63
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v2, :cond_6b

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_6b
    if-eq v1, v10, :cond_76

    .line 3214
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v10, 0x52

    iget v11, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v11, v1, v10

    goto :goto_79

    .line 3210
    :cond_76
    invoke-direct {p0, v10}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3217
    :goto_79
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->LocalLambdaExpression()Lfreemarker/core/Expression;

    move-result-object v1

    .line 3218
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    nop

    :pswitch_data_82
    .packed-switch 0x5d
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x5d
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
    .end packed-switch
.end method

.method public final PrimaryExpression()Lfreemarker/core/Expression;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 563
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->AtomicExpression()Lfreemarker/core/Expression;

    move-result-object v0

    .line 566
    :goto_4
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_d
    const/16 v3, 0x68

    const/16 v4, 0x67

    const/16 v5, 0x99

    const/16 v6, 0x87

    const/16 v7, 0x85

    const/16 v8, 0x81

    const/16 v9, 0x63

    if-eq v1, v9, :cond_31

    if-eq v1, v8, :cond_31

    if-eq v1, v7, :cond_31

    if-eq v1, v6, :cond_31

    if-eq v1, v5, :cond_31

    if-eq v1, v4, :cond_31

    if-eq v1, v3, :cond_31

    .line 578
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/4 v2, 0x0

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v1, v2

    return-object v0

    .line 581
    :cond_31
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v2, :cond_39

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_39
    if-eq v1, v9, :cond_70

    if-eq v1, v8, :cond_6b

    if-eq v1, v7, :cond_66

    if-eq v1, v6, :cond_61

    if-eq v1, v5, :cond_6b

    if-eq v1, v4, :cond_5c

    if-ne v1, v3, :cond_4c

    .line 604
    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->Exists(Lfreemarker/core/Expression;)Lfreemarker/core/Expression;

    move-result-object v0

    goto :goto_4

    .line 608
    :cond_4c
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/4 v1, 0x1

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v1

    .line 609
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 610
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 595
    :cond_5c
    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->BuiltIn(Lfreemarker/core/Expression;)Lfreemarker/core/Expression;

    move-result-object v0

    goto :goto_4

    .line 591
    :cond_61
    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->MethodArgs(Lfreemarker/core/Expression;)Lfreemarker/core/MethodCall;

    move-result-object v0

    goto :goto_4

    .line 587
    :cond_66
    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->DynamicKey(Lfreemarker/core/Expression;)Lfreemarker/core/Expression;

    move-result-object v0

    goto :goto_4

    .line 600
    :cond_6b
    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->DefaultTo(Lfreemarker/core/Expression;)Lfreemarker/core/Expression;

    move-result-object v0

    goto :goto_4

    .line 583
    :cond_70
    invoke-virtual {p0, v0}, Lfreemarker/core/FMParser;->DotVariable(Lfreemarker/core/Expression;)Lfreemarker/core/Expression;

    move-result-object v0

    goto :goto_4
.end method

.method public final RangeExpression()Lfreemarker/core/Expression;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 954
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->AdditiveExpression()Lfreemarker/core/Expression;

    move-result-object v0

    .line 956
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_d
    packed-switch v1, :pswitch_data_9e

    .line 1013
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0xc

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v1, v2

    goto/16 :goto_9d

    .line 960
    :pswitch_1a
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v2, :cond_22

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_22
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_a8

    .line 994
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0xb

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v1

    .line 995
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 996
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 963
    :pswitch_37
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v2, :cond_3f

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_3f
    const/16 v4, 0x65

    if-eq v1, v4, :cond_5d

    const/16 v4, 0x66

    if-ne v1, v4, :cond_4c

    .line 970
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    const/4 v1, 0x3

    goto :goto_61

    .line 975
    :cond_4c
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0xa

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v1

    .line 976
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 977
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 965
    :cond_5d
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    const/4 v1, 0x1

    .line 979
    :goto_61
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->AdditiveExpression()Lfreemarker/core/Expression;

    move-result-object v2

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_82

    :pswitch_69
    const/16 v1, 0x64

    .line 983
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    const v2, 0x7fffffff

    .line 985
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_2_5(I)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 986
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->AdditiveExpression()Lfreemarker/core/Expression;

    move-result-object v3

    const/4 v2, 0x0

    goto :goto_7f

    :cond_7e
    const/4 v2, 0x2

    :goto_7f
    move v5, v2

    move-object v2, v1

    move v1, v5

    .line 998
    :goto_82
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->numberLiteralOnly(Lfreemarker/core/Expression;)V

    if-eqz v3, :cond_8a

    .line 1000
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->numberLiteralOnly(Lfreemarker/core/Expression;)V

    .line 1003
    :cond_8a
    new-instance v4, Lfreemarker/core/Range;

    invoke-direct {v4, v0, v3, v1}, Lfreemarker/core/Range;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;I)V

    if-eqz v3, :cond_97

    .line 1005
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v4, v1, v0, v3}, Lfreemarker/core/Range;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V

    goto :goto_9c

    .line 1007
    :cond_97
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v4, v1, v0, v2}, Lfreemarker/core/Range;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/Token;)V

    :goto_9c
    move-object v0, v4

    :goto_9d
    return-object v0

    :pswitch_data_9e
    .packed-switch 0x64
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x64
        :pswitch_69
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method public ReInit(Lfreemarker/core/FMParserTokenManager;)V
    .registers 5

    .line 5937
    iput-object p1, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    .line 5938
    new-instance p1, Lfreemarker/core/Token;

    invoke-direct {p1}, Lfreemarker/core/Token;-><init>()V

    iput-object p1, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    const/4 p1, -0x1

    .line 5939
    iput p1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v0, 0x0

    .line 5940
    iput v0, p0, Lfreemarker/core/FMParser;->jj_gen:I

    move v1, v0

    :goto_10
    const/16 v2, 0x74

    if-ge v1, v2, :cond_1b

    .line 5941
    iget-object v2, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 5942
    :cond_1b
    :goto_1b
    iget-object p1, p0, Lfreemarker/core/FMParser;->jj_2_rtns:[Lfreemarker/core/FMParser$JJCalls;

    array-length v1, p1

    if-ge v0, v1, :cond_2a

    new-instance v1, Lfreemarker/core/FMParser$JJCalls;

    invoke-direct {v1}, Lfreemarker/core/FMParser$JJCalls;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2a
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    .line 5882
    invoke-virtual {p0, p1, v0}, Lfreemarker/core/FMParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5

    .line 5886
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_input_stream:Lfreemarker/core/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lfreemarker/core/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_36

    .line 5887
    iget-object p1, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    iget-object p2, p0, Lfreemarker/core/FMParser;->jj_input_stream:Lfreemarker/core/SimpleCharStream;

    invoke-virtual {p1, p2}, Lfreemarker/core/FMParserTokenManager;->ReInit(Lfreemarker/core/SimpleCharStream;)V

    .line 5888
    new-instance p1, Lfreemarker/core/Token;

    invoke-direct {p1}, Lfreemarker/core/Token;-><init>()V

    iput-object p1, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    const/4 p1, -0x1

    .line 5889
    iput p1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 p2, 0x0

    .line 5890
    iput p2, p0, Lfreemarker/core/FMParser;->jj_gen:I

    move v0, p2

    :goto_1b
    const/16 v1, 0x74

    if-ge v0, v1, :cond_26

    .line 5891
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 5892
    :cond_26
    :goto_26
    iget-object p1, p0, Lfreemarker/core/FMParser;->jj_2_rtns:[Lfreemarker/core/FMParser$JJCalls;

    array-length v0, p1

    if-ge p2, v0, :cond_35

    new-instance v0, Lfreemarker/core/FMParser$JJCalls;

    invoke-direct {v0}, Lfreemarker/core/FMParser$JJCalls;-><init>()V

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_26

    :cond_35
    return-void

    :catch_36
    move-exception p1

    .line 5886
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public ReInit(Ljava/io/Reader;)V
    .registers 5

    .line 5908
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_input_stream:Lfreemarker/core/SimpleCharStream;

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 5909
    new-instance v0, Lfreemarker/core/SimpleCharStream;

    invoke-direct {v0, p1, v1, v1}, Lfreemarker/core/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v0, p0, Lfreemarker/core/FMParser;->jj_input_stream:Lfreemarker/core/SimpleCharStream;

    goto :goto_10

    .line 5911
    :cond_d
    invoke-virtual {v0, p1, v1, v1}, Lfreemarker/core/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 5913
    :goto_10
    iget-object p1, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    if-nez p1, :cond_1d

    .line 5914
    new-instance p1, Lfreemarker/core/FMParserTokenManager;

    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_input_stream:Lfreemarker/core/SimpleCharStream;

    invoke-direct {p1, v0}, Lfreemarker/core/FMParserTokenManager;-><init>(Lfreemarker/core/SimpleCharStream;)V

    iput-object p1, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    .line 5917
    :cond_1d
    iget-object p1, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_input_stream:Lfreemarker/core/SimpleCharStream;

    invoke-virtual {p1, v0}, Lfreemarker/core/FMParserTokenManager;->ReInit(Lfreemarker/core/SimpleCharStream;)V

    .line 5918
    new-instance p1, Lfreemarker/core/Token;

    invoke-direct {p1}, Lfreemarker/core/Token;-><init>()V

    iput-object p1, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    const/4 p1, -0x1

    .line 5919
    iput p1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v0, 0x0

    .line 5920
    iput v0, p0, Lfreemarker/core/FMParser;->jj_gen:I

    move v1, v0

    :goto_32
    const/16 v2, 0x74

    if-ge v1, v2, :cond_3d

    .line 5921
    iget-object v2, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 5922
    :cond_3d
    :goto_3d
    iget-object p1, p0, Lfreemarker/core/FMParser;->jj_2_rtns:[Lfreemarker/core/FMParser$JJCalls;

    array-length v1, p1

    if-ge v0, v1, :cond_4c

    new-instance v1, Lfreemarker/core/FMParser$JJCalls;

    invoke-direct {v1}, Lfreemarker/core/FMParser$JJCalls;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_4c
    return-void
.end method

.method public final Recover()Lfreemarker/core/RecoveryBlock;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/4 v0, 0x7

    .line 1857
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1858
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v1

    .line 1859
    new-instance v2, Lfreemarker/core/RecoveryBlock;

    invoke-direct {v2, v1}, Lfreemarker/core/RecoveryBlock;-><init>(Lfreemarker/core/TemplateElements;)V

    .line 1860
    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v2, v3, v0, v0, v1}, Lfreemarker/core/RecoveryBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;Lfreemarker/core/TemplateElements;)V

    return-object v2
.end method

.method public final Recurse()Lfreemarker/core/RecurseNode;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 2090
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/16 v2, 0x43

    const/4 v3, 0x0

    if-eq v0, v2, :cond_80

    const/16 v2, 0x44

    if-ne v0, v2, :cond_6f

    .line 2096
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2097
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v2, v1, :cond_1e

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_1e
    const/16 v4, 0x78

    if-eq v2, v4, :cond_47

    const/16 v4, 0x79

    if-eq v2, v4, :cond_47

    const/16 v4, 0x81

    if-eq v2, v4, :cond_47

    const/16 v4, 0x85

    if-eq v2, v4, :cond_47

    const/16 v4, 0x87

    if-eq v2, v4, :cond_47

    const/16 v4, 0x89

    if-eq v2, v4, :cond_47

    const/16 v4, 0x8e

    if-eq v2, v4, :cond_47

    packed-switch v2, :pswitch_data_94

    .line 2116
    iget-object v2, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v4, 0x27

    iget v5, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v5, v2, v4

    move-object v2, v3

    goto :goto_4b

    .line 2112
    :cond_47
    :pswitch_47
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v2

    .line 2119
    :goto_4b
    iget v4, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v4, v1, :cond_53

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v4

    :cond_53
    const/16 v1, 0x8d

    if-eq v4, v1, :cond_60

    .line 2126
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v4, 0x28

    iget v5, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v5, v1, v4

    goto :goto_67

    .line 2121
    :cond_60
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2122
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v3

    .line 2129
    :goto_67
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->LooseDirectiveEnd()Lfreemarker/core/Token;

    move-result-object v1

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_86

    .line 2133
    :cond_6f
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x29

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 2134
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2135
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 2092
    :cond_80
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    move-object v1, v3

    move-object v2, v1

    :goto_86
    if-nez v3, :cond_89

    move-object v3, v0

    .line 2138
    :cond_89
    new-instance v4, Lfreemarker/core/RecurseNode;

    invoke-direct {v4, v2, v1}, Lfreemarker/core/RecurseNode;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V

    .line 2139
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v4, v1, v0, v3}, Lfreemarker/core/RecurseNode;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v4

    :pswitch_data_94
    .packed-switch 0x5d
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch
.end method

.method public final RelationalExpression()Lfreemarker/core/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 902
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->RangeExpression()Lfreemarker/core/Expression;

    move-result-object v0

    const v1, 0x7fffffff

    .line 904
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_2_4(I)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 905
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_16
    const/16 v3, 0x96

    if-eq v1, v3, :cond_53

    const/16 v3, 0x97

    if-eq v1, v3, :cond_4e

    packed-switch v1, :pswitch_data_7e

    .line 931
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x9

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v1

    .line 932
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 933
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :pswitch_32
    const/16 v1, 0x76

    .line 911
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    goto :goto_57

    :pswitch_39
    const/16 v1, 0x75

    .line 919
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    goto :goto_57

    :pswitch_40
    const/16 v1, 0x74

    .line 923
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    goto :goto_57

    :pswitch_47
    const/16 v1, 0x73

    .line 927
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    goto :goto_57

    .line 907
    :cond_4e
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    goto :goto_57

    .line 915
    :cond_53
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    .line 935
    :goto_57
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->RangeExpression()Lfreemarker/core/Expression;

    move-result-object v2

    .line 936
    const-string v3, "number"

    invoke-direct {p0, v0, v3}, Lfreemarker/core/FMParser;->notHashLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 937
    invoke-direct {p0, v2, v3}, Lfreemarker/core/FMParser;->notHashLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 938
    invoke-direct {p0, v0, v3}, Lfreemarker/core/FMParser;->notListLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 939
    invoke-direct {p0, v2, v3}, Lfreemarker/core/FMParser;->notListLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 940
    invoke-direct {p0, v0, v3}, Lfreemarker/core/FMParser;->notStringLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 941
    invoke-direct {p0, v2, v3}, Lfreemarker/core/FMParser;->notStringLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 942
    new-instance v3, Lfreemarker/core/ComparisonExpression;

    iget-object v1, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-direct {v3, v0, v2, v1}, Lfreemarker/core/ComparisonExpression;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 943
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/Expression;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V

    move-object v0, v3

    :cond_7c
    return-object v0

    nop

    :pswitch_data_7e
    .packed-switch 0x73
        :pswitch_47
        :pswitch_40
        :pswitch_39
        :pswitch_32
    .end packed-switch
.end method

.method public final Return()Lfreemarker/core/ReturnInstruction;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 2193
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/16 v2, 0x1a

    if-eq v0, v2, :cond_29

    const/16 v2, 0x39

    if-ne v0, v2, :cond_18

    .line 2195
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    goto :goto_35

    .line 2206
    :cond_18
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x2a

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 2207
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2208
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 2200
    :cond_29
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2201
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v1

    .line 2202
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->LooseDirectiveEnd()Lfreemarker/core/Token;

    move-result-object v2

    .line 2210
    :goto_35
    iget-boolean v3, p0, Lfreemarker/core/FMParser;->inMacro:Z

    if-eqz v3, :cond_46

    if-nez v1, :cond_3c

    goto :goto_59

    .line 2212
    :cond_3c
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "A macro cannot return a value"

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    .line 2214
    :cond_46
    iget-boolean v3, p0, Lfreemarker/core/FMParser;->inFunction:Z

    if-eqz v3, :cond_57

    if-eqz v1, :cond_4d

    goto :goto_59

    .line 2216
    :cond_4d
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "A function must return a value"

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :cond_57
    if-eqz v1, :cond_64

    .line 2224
    :goto_59
    new-instance v3, Lfreemarker/core/ReturnInstruction;

    invoke-direct {v3, v1}, Lfreemarker/core/ReturnInstruction;-><init>(Lfreemarker/core/Expression;)V

    .line 2225
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/ReturnInstruction;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3

    .line 2220
    :cond_64
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "A return instruction can only occur inside a macro or function"

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final Root()Lfreemarker/core/TemplateElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const v0, 0x7fffffff

    .line 4647
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_2_17(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4648
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->HeaderElement()V

    .line 4652
    :cond_c
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v0

    const/4 v1, 0x0

    .line 4653
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 4654
    invoke-virtual {v0}, Lfreemarker/core/TemplateElements;->asSingleElement()Lfreemarker/core/TemplateElement;

    move-result-object v0

    .line 4655
    invoke-virtual {v0}, Lfreemarker/core/TemplateElement;->setFieldsForRootElement()V

    .line 4656
    iget-boolean v1, p0, Lfreemarker/core/FMParser;->preventStrippings:Z

    if-nez v1, :cond_25

    .line 4657
    iget-boolean v1, p0, Lfreemarker/core/FMParser;->stripWhitespace:Z

    invoke-virtual {v0, v1}, Lfreemarker/core/TemplateElement;->postParseCleanup(Z)Lfreemarker/core/TemplateElement;

    move-result-object v0

    .line 4660
    :cond_25
    invoke-virtual {v0}, Lfreemarker/core/TemplateElement;->setFieldsForRootElement()V

    return-object v0
.end method

.method public final Sep()Lfreemarker/core/Sep;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0xc

    .line 2041
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2042
    invoke-direct {p0}, Lfreemarker/core/FMParser;->peekIteratorBlockContext()Lfreemarker/core/FMParser$ParserIteratorBlockContext;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 2047
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v1

    .line 2048
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_19
    const/16 v3, 0x27

    if-eq v2, v3, :cond_27

    .line 2054
    iget-object v2, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v3, 0x25

    iget v4, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v4, v2, v3

    const/4 v2, 0x0

    goto :goto_2b

    .line 2050
    :cond_27
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 2057
    :goto_2b
    new-instance v3, Lfreemarker/core/Sep;

    invoke-direct {v3, v1}, Lfreemarker/core/Sep;-><init>(Lfreemarker/core/TemplateElements;)V

    if-eqz v2, :cond_38

    .line 2059
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/Sep;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    goto :goto_3d

    .line 2061
    :cond_38
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v2, v0, v0, v1}, Lfreemarker/core/Sep;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;Lfreemarker/core/TemplateElements;)V

    :goto_3d
    return-object v3

    .line 2043
    :cond_3e
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#sep must be inside a #list (or "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2044
    invoke-direct {p0}, Lfreemarker/core/FMParser;->forEachDirectiveSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") block."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1
.end method

.method public final Setting()Lfreemarker/core/PropertySetting;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x1c

    .line 3598
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    const/16 v1, 0x8e

    .line 3599
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    const/16 v2, 0x69

    .line 3600
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3601
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v2

    .line 3602
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->LooseDirectiveEnd()Lfreemarker/core/Token;

    move-result-object v3

    .line 3603
    iget-object v4, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    invoke-virtual {v4, v1}, Lfreemarker/core/FMParserTokenManager;->checkNamingConvention(Lfreemarker/core/Token;)V

    .line 3604
    new-instance v4, Lfreemarker/core/PropertySetting;

    iget-object v5, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    iget-object v6, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v6}, Lfreemarker/template/Template;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v6

    invoke-direct {v4, v1, v5, v2, v6}, Lfreemarker/core/PropertySetting;-><init>(Lfreemarker/core/Token;Lfreemarker/core/FMParserTokenManager;Lfreemarker/core/Expression;Lfreemarker/template/Configuration;)V

    .line 3605
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v4, v1, v0, v3}, Lfreemarker/core/PropertySetting;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v4
.end method

.method public final StaticTextAndInterpolations()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 4561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4564
    :cond_6
    :goto_6
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_f
    packed-switch v2, :pswitch_data_c8

    .line 4575
    iget-object v2, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v3, 0x71

    iget v4, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v4, v2, v3

    goto/16 :goto_b4

    .line 4578
    :pswitch_1c
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v2, v3, :cond_24

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_24
    packed-switch v2, :pswitch_data_d8

    .line 4629
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x73

    iget v2, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v2, v0, v1

    .line 4630
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 4631
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :pswitch_38
    const v2, 0x7fffffff

    .line 4613
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_2_15(I)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 4614
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->StringOutput()Lfreemarker/core/DollarVariable;

    move-result-object v2

    goto :goto_50

    .line 4615
    :cond_46
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_2_16(I)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 4616
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->NumericalOutput()Lfreemarker/core/NumericalOutput;

    move-result-object v2

    :goto_50
    if-eqz v1, :cond_5d

    .line 4622
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 4623
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4625
    :cond_5d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 4618
    :cond_61
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 4619
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 4582
    :pswitch_6a
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v2, v3, :cond_72

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_72
    packed-switch v2, :pswitch_data_e8

    .line 4596
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x72

    iget v2, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v2, v0, v1

    .line 4597
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 4598
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :pswitch_86
    const/16 v2, 0x51

    .line 4592
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    goto :goto_9a

    :pswitch_8d
    const/16 v2, 0x50

    .line 4588
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    goto :goto_9a

    :pswitch_94
    const/16 v2, 0x4f

    .line 4584
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 4600
    :goto_9a
    iget-object v3, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    .line 4601
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    if-nez v1, :cond_ad

    .line 4603
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 4605
    :cond_ad
    iget-object v2, v2, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :goto_b4
    if-eqz v1, :cond_c3

    .line 4634
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_c3

    .line 4635
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4637
    :cond_c3
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    return-object v0

    nop

    :pswitch_data_c8
    .packed-switch 0x4f
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    :pswitch_data_d8
    .packed-switch 0x4f
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x4f
        :pswitch_94
        :pswitch_8d
        :pswitch_86
    .end packed-switch
.end method

.method public final Stop()Lfreemarker/core/StopInstruction;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 2232
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/16 v2, 0x19

    if-eq v0, v2, :cond_28

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_17

    .line 2234
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_33

    .line 2244
    :cond_17
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x2b

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 2245
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2246
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 2238
    :cond_28
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2239
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v1

    .line 2240
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->LooseDirectiveEnd()Lfreemarker/core/Token;

    .line 2248
    :goto_33
    new-instance v2, Lfreemarker/core/StopInstruction;

    invoke-direct {v2, v1}, Lfreemarker/core/StopInstruction;-><init>(Lfreemarker/core/Expression;)V

    .line 2249
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v2, v1, v0, v0}, Lfreemarker/core/StopInstruction;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v2
.end method

.method public final StringLiteral(Z)Lfreemarker/core/StringLiteral;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 1505
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/16 v2, 0x16

    const/16 v3, 0x5d

    const/4 v4, 0x1

    if-eq v0, v3, :cond_29

    const/16 v3, 0x5e

    if-ne v0, v3, :cond_1a

    .line 1511
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    move v3, v4

    goto :goto_2e

    .line 1516
    :cond_1a
    iget-object p1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    iget v0, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v0, p1, v2

    .line 1517
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1518
    new-instance p1, Lfreemarker/core/ParseException;

    invoke-direct {p1}, Lfreemarker/core/ParseException;-><init>()V

    throw p1

    .line 1507
    :cond_29
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    const/4 v3, 0x0

    :goto_2e
    if-eqz v3, :cond_3f

    .line 1523
    iget-object v5, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    iget-object v6, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    const/4 v4, 0x2

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_50

    .line 1526
    :cond_3f
    :try_start_3f
    iget-object v5, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    iget-object v6, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfreemarker/template/utility/StringUtil;->FTLStringLiteralDec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_50
    .catch Lfreemarker/core/ParseException; {:try_start_3f .. :try_end_50} :catch_94

    .line 1535
    :goto_50
    new-instance v5, Lfreemarker/core/StringLiteral;

    invoke-direct {v5, v4}, Lfreemarker/core/StringLiteral;-><init>(Ljava/lang/String;)V

    .line 1536
    iget-object v4, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v5, v4, v0, v0}, Lfreemarker/core/StringLiteral;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    if-eqz p1, :cond_93

    if-nez v3, :cond_93

    .line 1539
    iget-object p1, p0, Lfreemarker/core/FMParser;->pCfg:Lfreemarker/core/ParserConfiguration;

    invoke-interface {p1}, Lfreemarker/core/ParserConfiguration;->getInterpolationSyntax()I

    move-result p1

    const/16 v3, 0x14

    if-eq p1, v3, :cond_6c

    const/16 v4, 0x15

    if-ne p1, v4, :cond_76

    .line 1540
    :cond_6c
    iget-object v4, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    const-string v6, "${"

    .line 1542
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_8e

    :cond_76
    if-ne p1, v3, :cond_82

    iget-object v3, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    const-string v4, "#{"

    .line 1544
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_8e

    :cond_82
    if-ne p1, v2, :cond_93

    iget-object p1, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    const-string v0, "[="

    .line 1546
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_93

    .line 1547
    :cond_8e
    iget-object p1, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    invoke-virtual {v5, p0, p1}, Lfreemarker/core/StringLiteral;->parseValue(Lfreemarker/core/FMParser;Lfreemarker/core/OutputFormat;)V

    :cond_93
    return-object v5

    :catch_94
    move-exception p1

    .line 1528
    iget v1, v0, Lfreemarker/core/Token;->beginLine:I

    iput v1, p1, Lfreemarker/core/ParseException;->lineNumber:I

    .line 1529
    iget v1, v0, Lfreemarker/core/Token;->beginColumn:I

    iput v1, p1, Lfreemarker/core/ParseException;->columnNumber:I

    .line 1530
    iget v1, v0, Lfreemarker/core/Token;->endLine:I

    iput v1, p1, Lfreemarker/core/ParseException;->endLineNumber:I

    .line 1531
    iget v0, v0, Lfreemarker/core/Token;->endColumn:I

    iput v0, p1, Lfreemarker/core/ParseException;->endColumnNumber:I

    .line 1532
    throw p1
.end method

.method public final StringOutput()Lfreemarker/core/DollarVariable;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 1666
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/16 v2, 0x52

    if-eq v0, v2, :cond_31

    const/16 v2, 0x54

    if-ne v0, v2, :cond_20

    .line 1674
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1675
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v1

    const/16 v2, 0x86

    .line 1676
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    goto :goto_3f

    .line 1680
    :cond_20
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x1c

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 1681
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 1682
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 1668
    :cond_31
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 1669
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v1

    const/16 v2, 0x8a

    .line 1670
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 1684
    :goto_3f
    const-string v3, "string or something automatically convertible to string (number, date or boolean)"

    invoke-direct {p0, v1, v3}, Lfreemarker/core/FMParser;->notHashLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 1685
    invoke-direct {p0, v1, v3}, Lfreemarker/core/FMParser;->notListLiteral(Lfreemarker/core/Expression;Ljava/lang/String;)V

    .line 1687
    new-instance v3, Lfreemarker/core/DollarVariable;

    .line 1688
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->escapedExpression(Lfreemarker/core/Expression;)Lfreemarker/core/Expression;

    move-result-object v4

    iget-object v5, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    iget-boolean v6, p0, Lfreemarker/core/FMParser;->autoEscaping:Z

    invoke-direct {v3, v1, v4, v5, v6}, Lfreemarker/core/DollarVariable;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;Lfreemarker/core/OutputFormat;Z)V

    .line 1691
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/DollarVariable;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v3
.end method

.method public final Switch()Lfreemarker/core/SwitchBlock;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 3323
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 3324
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v1

    const/16 v2, 0x94

    .line 3325
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3326
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_18

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_18
    const/16 v4, 0x21

    const/16 v5, 0x4f

    if-eq v2, v4, :cond_2e

    const/16 v4, 0x22

    if-eq v2, v4, :cond_2e

    if-eq v2, v5, :cond_2e

    .line 3334
    iget-object v2, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v4, 0x58

    iget v6, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v6, v2, v4

    const/4 v2, 0x0

    goto :goto_32

    .line 3330
    :cond_2e
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->WhitespaceAndComments()Lfreemarker/core/MixedContent;

    move-result-object v2

    .line 3337
    :goto_32
    iget v4, p0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, p0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    .line 3338
    new-instance v4, Lfreemarker/core/SwitchBlock;

    invoke-direct {v4, v1, v2}, Lfreemarker/core/SwitchBlock;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/MixedContent;)V

    .line 3339
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v3, :cond_45

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_45
    const/16 v2, 0x40

    const/16 v7, 0xf

    if-eq v1, v7, :cond_56

    if-eq v1, v2, :cond_56

    .line 3376
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x5b

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v1, v2

    goto :goto_9a

    :cond_56
    const/4 v1, 0x0

    .line 3344
    :cond_57
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Case()Lfreemarker/core/Case;

    move-result-object v8

    .line 3345
    iget-object v9, v8, Lfreemarker/core/Case;->condition:Lfreemarker/core/Expression;

    if-nez v9, :cond_6d

    if-nez v1, :cond_63

    move v1, v6

    goto :goto_6d

    .line 3347
    :cond_63
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "You can only have one default case in a switch statement"

    iget-object v3, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    .line 3352
    :cond_6d
    :goto_6d
    invoke-virtual {v4, v8}, Lfreemarker/core/SwitchBlock;->addCase(Lfreemarker/core/Case;)V

    .line 3353
    iget v8, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v8, v3, :cond_78

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v8

    :cond_78
    if-eq v8, v7, :cond_57

    if-eq v8, v2, :cond_57

    .line 3360
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x59

    iget v7, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v7, v1, v2

    .line 3364
    iget v1, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v3, :cond_8c

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_8c
    if-eq v1, v5, :cond_97

    .line 3370
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x5a

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v1, v2

    goto :goto_9a

    .line 3366
    :cond_97
    invoke-direct {p0, v5}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    :goto_9a
    const/16 v1, 0x35

    .line 3379
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    .line 3380
    iget v2, p0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    sub-int/2addr v2, v6

    iput v2, p0, Lfreemarker/core/FMParser;->breakableDirectiveNesting:I

    .line 3381
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v4, v2, v0, v1}, Lfreemarker/core/SwitchBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v4
.end method

.method public final Transform()Lfreemarker/core/TransformBlock;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x17

    .line 3267
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 3268
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v1

    .line 3269
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_13
    const/16 v4, 0x83

    if-eq v2, v4, :cond_20

    .line 3275
    iget-object v2, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v4, 0x55

    iget v5, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v5, v2, v4

    goto :goto_23

    .line 3271
    :cond_20
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    :goto_23
    const/4 v2, 0x0

    move-object v4, v2

    .line 3280
    :goto_25
    iget v5, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v5, v3, :cond_2d

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v5

    :cond_2d
    const/16 v6, 0x8e

    if-eq v5, v6, :cond_77

    .line 3286
    iget-object v5, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v6, 0x56

    iget v7, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v7, v5, v6

    .line 3295
    iget v5, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v5, v3, :cond_41

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v5

    :cond_41
    const/16 v6, 0x94

    if-eq v5, v6, :cond_5f

    const/16 v6, 0x95

    if-ne v5, v6, :cond_4e

    .line 3297
    invoke-direct {p0, v6}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v3

    goto :goto_6c

    .line 3307
    :cond_4e
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x57

    iget v2, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v2, v0, v1

    .line 3308
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3309
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 3301
    :cond_5f
    invoke-direct {p0, v6}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3302
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v2

    const/16 v3, 0x34

    .line 3303
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v3

    .line 3311
    :goto_6c
    new-instance v5, Lfreemarker/core/TransformBlock;

    invoke-direct {v5, v1, v4, v2}, Lfreemarker/core/TransformBlock;-><init>(Lfreemarker/core/Expression;Ljava/util/Map;Lfreemarker/core/TemplateElements;)V

    .line 3312
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v5, v1, v0, v3}, Lfreemarker/core/TransformBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v5

    .line 3289
    :cond_77
    invoke-direct {p0, v6}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v5

    const/16 v6, 0x69

    .line 3290
    invoke-direct {p0, v6}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3291
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v6

    if-nez v4, :cond_8b

    .line 3292
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3293
    :cond_8b
    iget-object v5, v5, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25
.end method

.method public final Trim()Lfreemarker/core/TemplateElement;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 2294
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_54

    .line 2316
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x2d

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 2317
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2318
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    :pswitch_1f
    const/16 v0, 0x3f

    .line 2311
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2312
    new-instance v1, Lfreemarker/core/TrimInstruction;

    invoke-direct {v1, v2, v2}, Lfreemarker/core/TrimInstruction;-><init>(ZZ)V

    goto :goto_4e

    :pswitch_2b
    const/16 v0, 0x3e

    .line 2306
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2307
    new-instance v1, Lfreemarker/core/TrimInstruction;

    invoke-direct {v1, v2, v3}, Lfreemarker/core/TrimInstruction;-><init>(ZZ)V

    goto :goto_4e

    :pswitch_37
    const/16 v0, 0x3d

    .line 2301
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2302
    new-instance v1, Lfreemarker/core/TrimInstruction;

    invoke-direct {v1, v3, v2}, Lfreemarker/core/TrimInstruction;-><init>(ZZ)V

    goto :goto_4e

    :pswitch_43
    const/16 v0, 0x3c

    .line 2296
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2297
    new-instance v1, Lfreemarker/core/TrimInstruction;

    invoke-direct {v1, v3, v3}, Lfreemarker/core/TrimInstruction;-><init>(ZZ)V

    .line 2320
    :goto_4e
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v2, v0, v0}, Lfreemarker/core/TrimInstruction;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1

    :pswitch_data_54
    .packed-switch 0x3c
        :pswitch_43
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method

.method public final UnaryExpression()Lfreemarker/core/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 686
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/16 v2, 0x78

    if-eq v0, v2, :cond_42

    const/16 v2, 0x79

    if-eq v0, v2, :cond_42

    const/16 v2, 0x81

    if-eq v0, v2, :cond_3d

    const/16 v2, 0x85

    if-eq v0, v2, :cond_38

    const/16 v2, 0x87

    if-eq v0, v2, :cond_38

    const/16 v2, 0x89

    if-eq v0, v2, :cond_38

    const/16 v2, 0x8e

    if-eq v0, v2, :cond_38

    packed-switch v0, :pswitch_data_48

    .line 711
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/4 v2, 0x3

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 712
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 713
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 707
    :cond_38
    :pswitch_38
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->PrimaryExpression()Lfreemarker/core/Expression;

    move-result-object v0

    goto :goto_46

    .line 693
    :cond_3d
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->NotExpression()Lfreemarker/core/Expression;

    move-result-object v0

    goto :goto_46

    .line 689
    :cond_42
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->UnaryPlusMinusExpression()Lfreemarker/core/Expression;

    move-result-object v0

    :goto_46
    return-object v0

    nop

    :pswitch_data_48
    .packed-switch 0x5d
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method

.method public final UnaryPlusMinusExpression()Lfreemarker/core/Expression;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 750
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    const/16 v2, 0x78

    if-eq v0, v2, :cond_27

    const/16 v2, 0x79

    if-ne v0, v2, :cond_17

    .line 756
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_2c

    .line 761
    :cond_17
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/4 v2, 0x5

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v0, v2

    .line 762
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 763
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 752
    :cond_27
    invoke-direct {p0, v2}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    const/4 v1, 0x0

    .line 765
    :goto_2c
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->PrimaryExpression()Lfreemarker/core/Expression;

    move-result-object v2

    .line 766
    new-instance v3, Lfreemarker/core/UnaryPlusMinusExpression;

    invoke-direct {v3, v2, v1}, Lfreemarker/core/UnaryPlusMinusExpression;-><init>(Lfreemarker/core/Expression;Z)V

    .line 767
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/Expression;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/TemplateObject;)V

    return-object v3
.end method

.method public final UnifiedMacroTransform()Lfreemarker/core/TemplateElement;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x4a

    .line 2881
    invoke-direct {v0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v2

    .line 2882
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v3

    .line 2883
    instance-of v4, v3, Lfreemarker/core/Identifier;

    const/4 v5, 0x0

    if-nez v4, :cond_21

    instance-of v4, v3, Lfreemarker/core/Dot;

    if-eqz v4, :cond_1f

    move-object v4, v3

    check-cast v4, Lfreemarker/core/Dot;

    invoke-virtual {v4}, Lfreemarker/core/Dot;->onlyHasIdentifiers()Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_21

    :cond_1f
    move-object v4, v5

    goto :goto_22

    :cond_21
    :goto_21
    move-object v4, v3

    .line 2888
    :goto_22
    iget v6, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2b

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v6

    :cond_2b
    const/16 v8, 0x98

    if-eq v6, v8, :cond_38

    .line 2894
    iget-object v6, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v9, 0x44

    iget v10, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v10, v6, v9

    goto :goto_3b

    .line 2890
    :cond_38
    invoke-direct {v0, v8}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    :goto_3b
    const v6, 0x7fffffff

    .line 2897
    invoke-direct {v0, v6}, Lfreemarker/core/FMParser;->jj_2_12(I)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 2898
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->NamedArgs()Ljava/util/HashMap;

    move-result-object v6

    move-object v9, v5

    goto :goto_50

    .line 2900
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->PositionalArgs()Ljava/util/ArrayList;

    move-result-object v6

    move-object v9, v6

    move-object v6, v5

    .line 2902
    :goto_50
    iget v10, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v10, v7, :cond_58

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v10

    :cond_58
    const/16 v11, 0x83

    if-eq v10, v11, :cond_63

    .line 2963
    iget-object v8, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    iget v10, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v10, v8, v1

    goto :goto_b8

    .line 2904
    :cond_63
    invoke-direct {v0, v11}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2905
    new-instance v5, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2906
    iget v1, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v7, :cond_74

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_74
    const/16 v10, 0x8e

    if-eq v1, v10, :cond_83

    if-eq v1, v8, :cond_83

    .line 2957
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v8, 0x49

    iget v10, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v10, v1, v8

    goto :goto_b8

    .line 2909
    :cond_83
    iget v1, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v7, :cond_8b

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_8b
    if-eq v1, v8, :cond_96

    .line 2915
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v11, 0x45

    iget v12, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v12, v1, v11

    goto :goto_99

    .line 2911
    :cond_96
    invoke-direct {v0, v8}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2918
    :goto_99
    invoke-direct {v0, v10}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    .line 2919
    iget-object v1, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2922
    :goto_a2
    iget v1, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v7, :cond_aa

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_aa
    const/16 v11, 0x82

    if-eq v1, v11, :cond_1b4

    if-eq v1, v8, :cond_1b4

    .line 2929
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v8, 0x46

    iget v10, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v10, v1, v8

    .line 2966
    :goto_b8
    iget v1, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v7, :cond_c0

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_c0
    const/16 v8, 0x4b

    const/16 v10, 0x94

    if-eq v1, v10, :cond_e1

    const/16 v4, 0x95

    if-ne v1, v4, :cond_d2

    .line 2968
    invoke-direct {v0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    .line 2969
    sget-object v4, Lfreemarker/core/TemplateElements;->EMPTY:Lfreemarker/core/TemplateElements;

    goto/16 :goto_1a0

    .line 3016
    :cond_d2
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    iget v2, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v2, v1, v8

    .line 3017
    invoke-direct {v0, v7}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3018
    new-instance v1, Lfreemarker/core/ParseException;

    invoke-direct {v1}, Lfreemarker/core/ParseException;-><init>()V

    throw v1

    .line 2973
    :cond_e1
    invoke-direct {v0, v10}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    const/4 v1, 0x3

    if-eqz v5, :cond_13e

    .line 2974
    iget-object v10, v0, Lfreemarker/core/FMParser;->iteratorBlockContexts:Ljava/util/List;

    if-eqz v10, :cond_13e

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_13e

    .line 2976
    iget-object v10, v0, Lfreemarker/core/FMParser;->iteratorBlockContexts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 2977
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_fd
    if-ge v12, v11, :cond_13f

    .line 2979
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    add-int/lit8 v15, v10, -0x1

    :goto_107
    if-ltz v15, :cond_139

    .line 2981
    iget-object v7, v0, Lfreemarker/core/FMParser;->iteratorBlockContexts:Ljava/util/List;

    .line 2982
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfreemarker/core/FMParser$ParserIteratorBlockContext;

    .line 2983
    # getter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVarName:Ljava/lang/String;
    invoke-static {v7}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$100(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_134

    # getter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVarName:Ljava/lang/String;
    invoke-static {v7}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$100(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_134

    .line 2985
    # getter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->kind:I
    invoke-static {v7}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$300(Lfreemarker/core/FMParser$ParserIteratorBlockContext;)I

    move-result v7

    if-eq v7, v1, :cond_139

    .line 2986
    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->pushIteratorBlockContext()Lfreemarker/core/FMParser$ParserIteratorBlockContext;

    move-result-object v7

    .line 2987
    # setter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->loopVarName:Ljava/lang/String;
    invoke-static {v7, v14}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$102(Lfreemarker/core/FMParser$ParserIteratorBlockContext;Ljava/lang/String;)Ljava/lang/String;

    .line 2988
    # setter for: Lfreemarker/core/FMParser$ParserIteratorBlockContext;->kind:I
    invoke-static {v7, v1}, Lfreemarker/core/FMParser$ParserIteratorBlockContext;->access$302(Lfreemarker/core/FMParser$ParserIteratorBlockContext;I)I

    add-int/lit8 v13, v13, 0x1

    goto :goto_139

    :cond_134
    add-int/lit8 v15, v15, -0x1

    const/16 v8, 0x4b

    goto :goto_107

    :cond_139
    :goto_139
    add-int/lit8 v12, v12, 0x1

    const/16 v8, 0x4b

    goto :goto_fd

    :cond_13e
    const/4 v13, 0x0

    .line 2996
    :cond_13f
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/FMParser;->MixedContentElements()Lfreemarker/core/TemplateElements;

    move-result-object v7

    const/16 v8, 0x4b

    .line 2997
    invoke-direct {v0, v8}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v8

    const/4 v10, 0x0

    :goto_14a
    if-ge v10, v13, :cond_152

    .line 2999
    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->popIteratorBlockContext()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_14a

    .line 3002
    :cond_152
    iget-object v10, v8, Lfreemarker/core/Token;->image:Ljava/lang/String;

    iget-object v11, v8, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3003
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_19e

    if-eqz v4, :cond_194

    .line 3007
    invoke-virtual {v4}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v4

    .line 3008
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_177

    goto :goto_19e

    .line 3009
    :cond_177
    new-instance v1, Lfreemarker/core/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expecting </@> or </@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v8}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    .line 3005
    :cond_194
    new-instance v1, Lfreemarker/core/ParseException;

    const-string v2, "Expecting </@>"

    iget-object v3, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v1, v2, v3, v8}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v1

    :cond_19e
    :goto_19e
    move-object v4, v7

    move-object v1, v8

    :goto_1a0
    if-eqz v9, :cond_1a8

    .line 3020
    new-instance v6, Lfreemarker/core/UnifiedCall;

    invoke-direct {v6, v3, v9, v4, v5}, Lfreemarker/core/UnifiedCall;-><init>(Lfreemarker/core/Expression;Ljava/util/List;Lfreemarker/core/TemplateElements;Ljava/util/List;)V

    goto :goto_1ae

    :cond_1a8
    new-instance v7, Lfreemarker/core/UnifiedCall;

    invoke-direct {v7, v3, v6, v4, v5}, Lfreemarker/core/UnifiedCall;-><init>(Lfreemarker/core/Expression;Ljava/util/Map;Lfreemarker/core/TemplateElements;Ljava/util/List;)V

    move-object v6, v7

    .line 3023
    :goto_1ae
    iget-object v3, v0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v6, v3, v2, v1}, Lfreemarker/core/TemplateElement;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v6

    .line 2932
    :cond_1b4
    iget v1, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v7, :cond_1bc

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_1bc
    if-eq v1, v8, :cond_1c7

    .line 2938
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v12, 0x47

    iget v13, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v13, v1, v12

    goto :goto_1ca

    .line 2934
    :cond_1c7
    invoke-direct {v0, v8}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2941
    :goto_1ca
    invoke-direct {v0, v11}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2942
    iget v1, v0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v1, v7, :cond_1d5

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v1

    :cond_1d5
    if-eq v1, v8, :cond_1e0

    .line 2948
    iget-object v1, v0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v11, 0x48

    iget v12, v0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v12, v1, v11

    goto :goto_1e3

    .line 2944
    :cond_1e0
    invoke-direct {v0, v8}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2951
    :goto_1e3
    invoke-direct {v0, v10}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v1

    .line 2952
    iget-object v1, v1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a2
.end method

.method public final UnparsedContent(Lfreemarker/core/Token;Ljava/lang/StringBuilder;)Lfreemarker/core/Token;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3837
    :pswitch_0
    iget v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v0

    :cond_9
    packed-switch v0, :pswitch_data_94

    .line 3855
    iget-object p1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 p2, 0x61

    iget v0, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v0, p1, p2

    .line 3856
    invoke-direct {p0, v1}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 3857
    new-instance p1, Lfreemarker/core/ParseException;

    invoke-direct {p1}, Lfreemarker/core/ParseException;-><init>()V

    throw p1

    :pswitch_1d
    const/16 v0, 0x9d

    .line 3851
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_38

    :pswitch_24
    const/16 v0, 0x9c

    .line 3839
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_38

    :pswitch_2b
    const/16 v0, 0x9b

    .line 3843
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    goto :goto_38

    :pswitch_32
    const/16 v0, 0x9a

    .line 3847
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 3859
    :goto_38
    iget-object v2, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3860
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v2, v1, :cond_45

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_45
    packed-switch v2, :pswitch_data_a0

    .line 3869
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v2, 0x62

    iget v3, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v3, v1, v2

    .line 3873
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object v2, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3874
    iget-object p2, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_92

    iget-object p2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    .line 3875
    invoke-static {p2}, Lfreemarker/template/_TemplateAPI;->getTemplateLanguageVersionAsInt(Lfreemarker/template/Template;)I

    move-result p2

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_21:I

    if-ge p2, v1, :cond_73

    goto :goto_92

    .line 3876
    :cond_73
    new-instance p2, Lfreemarker/core/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unclosed \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {p2, v0, v1, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw p2

    :cond_92
    :goto_92
    return-object v0

    nop

    :pswitch_data_94
    .packed-switch 0x9a
        :pswitch_32
        :pswitch_2b
        :pswitch_24
        :pswitch_1d
    .end packed-switch

    :pswitch_data_a0
    .packed-switch 0x9a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final Visit()Lfreemarker/core/VisitNode;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x18

    .line 2069
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 2070
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v1

    .line 2071
    iget v2, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v2

    :cond_13
    const/16 v3, 0x8d

    if-eq v2, v3, :cond_21

    .line 2078
    iget-object v2, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v3, 0x26

    iget v4, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v4, v2, v3

    const/4 v2, 0x0

    goto :goto_28

    .line 2073
    :cond_21
    invoke-direct {p0, v3}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 2074
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Expression()Lfreemarker/core/Expression;

    move-result-object v2

    .line 2081
    :goto_28
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->LooseDirectiveEnd()Lfreemarker/core/Token;

    move-result-object v3

    .line 2082
    new-instance v4, Lfreemarker/core/VisitNode;

    invoke-direct {v4, v1, v2}, Lfreemarker/core/VisitNode;-><init>(Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V

    .line 2083
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v4, v1, v0, v3}, Lfreemarker/core/VisitNode;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v4
.end method

.method public final WhitespaceAndComments()Lfreemarker/core/MixedContent;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 4310
    new-instance v0, Lfreemarker/core/MixedContent;

    invoke-direct {v0}, Lfreemarker/core/MixedContent;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 4314
    :cond_7
    iget v3, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v3

    :cond_10
    const/16 v5, 0x4f

    const/16 v6, 0x22

    const/16 v7, 0x21

    if-eq v3, v7, :cond_32

    if-eq v3, v6, :cond_32

    if-ne v3, v5, :cond_21

    .line 4316
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->WhitespaceText()Lfreemarker/core/TextBlock;

    move-result-object v3

    goto :goto_36

    .line 4325
    :cond_21
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v1, 0x6a

    iget v2, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v2, v0, v1

    .line 4326
    invoke-direct {p0, v4}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    .line 4327
    new-instance v0, Lfreemarker/core/ParseException;

    invoke-direct {v0}, Lfreemarker/core/ParseException;-><init>()V

    throw v0

    .line 4321
    :cond_32
    invoke-virtual {p0}, Lfreemarker/core/FMParser;->Comment()Lfreemarker/core/Comment;

    move-result-object v3

    :goto_36
    if-eqz v3, :cond_3e

    if-nez v2, :cond_3b

    move-object v2, v3

    .line 4333
    :cond_3b
    invoke-virtual {v0, v3}, Lfreemarker/core/MixedContent;->addChild(Lfreemarker/core/TemplateElement;)V

    .line 4335
    :cond_3e
    iget v8, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    if-ne v8, v4, :cond_46

    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_ntk_f()I

    move-result v8

    :cond_46
    if-eq v8, v7, :cond_7

    if-eq v8, v6, :cond_7

    if-eq v8, v5, :cond_7

    .line 4343
    iget-object v4, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    const/16 v5, 0x6b

    iget v6, p0, Lfreemarker/core/FMParser;->jj_gen:I

    aput v6, v4, v5

    if-eqz v2, :cond_75

    .line 4347
    iget-boolean v4, p0, Lfreemarker/core/FMParser;->stripWhitespace:Z

    if-eqz v4, :cond_6f

    iget-boolean v4, p0, Lfreemarker/core/FMParser;->preventStrippings:Z

    if-nez v4, :cond_6f

    .line 4352
    invoke-virtual {v0}, Lfreemarker/core/MixedContent;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6f

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lfreemarker/core/MixedContent;->getChild(I)Lfreemarker/core/TemplateElement;

    move-result-object v4

    instance-of v4, v4, Lfreemarker/core/TextBlock;

    if-eqz v4, :cond_6f

    goto :goto_75

    .line 4355
    :cond_6f
    iget-object v1, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v0, v1, v2, v3}, Lfreemarker/core/MixedContent;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V

    return-object v0

    :cond_75
    :goto_75
    return-object v1
.end method

.method public final WhitespaceText()Lfreemarker/core/TextBlock;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    const/16 v0, 0x4f

    .line 3819
    invoke-direct {p0, v0}, Lfreemarker/core/FMParser;->jj_consume_token(I)Lfreemarker/core/Token;

    move-result-object v0

    .line 3820
    iget-boolean v1, p0, Lfreemarker/core/FMParser;->stripText:Z

    if-eqz v1, :cond_15

    iget v1, p0, Lfreemarker/core/FMParser;->mixedContentNesting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    iget-boolean v1, p0, Lfreemarker/core/FMParser;->preventStrippings:Z

    if-nez v1, :cond_15

    const/4 v0, 0x0

    return-object v0

    .line 3822
    :cond_15
    new-instance v1, Lfreemarker/core/TextBlock;

    iget-object v2, v0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lfreemarker/core/TextBlock;-><init>(Ljava/lang/String;Z)V

    .line 3823
    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-virtual {v1, v2, v0, v0}, Lfreemarker/core/TextBlock;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    return-object v1
.end method

.method public _getLastNamingConvention()I
    .registers 2

    .line 365
    iget-object v0, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    iget v0, v0, Lfreemarker/core/FMParserTokenManager;->namingConvention:I

    return v0
.end method

.method public _getLastTagSyntax()I
    .registers 2

    .line 354
    iget-object v0, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    iget-boolean v0, v0, Lfreemarker/core/FMParserTokenManager;->squBracTagSyntax:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method checkCurrentOutputFormatCanEscape(Lfreemarker/core/Token;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    instance-of v0, v0, Lfreemarker/core/MarkupOutputFormat;

    if-eqz v0, :cond_7

    return-void

    .line 492
    :cond_7
    new-instance v0, Lfreemarker/core/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The current output format can\'t do escaping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/FMParser;->template:Lfreemarker/template/Template;

    invoke-direct {v0, v1, v2, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw v0
.end method

.method public final disable_tracing()V
    .registers 1

    return-void
.end method

.method public final enable_tracing()V
    .registers 1

    return-void
.end method

.method public generateParseException()Lfreemarker/core/ParseException;
    .registers 9

    .line 6066
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/16 v0, 0x9e

    .line 6067
    new-array v1, v0, [Z

    .line 6068
    iget v2, p0, Lfreemarker/core/FMParser;->jj_kind:I

    const/4 v3, 0x1

    if-ltz v2, :cond_13

    .line 6069
    aput-boolean v3, v1, v2

    const/4 v2, -0x1

    .line 6070
    iput v2, p0, Lfreemarker/core/FMParser;->jj_kind:I

    :cond_13
    const/4 v2, 0x0

    move v4, v2

    :goto_15
    const/16 v5, 0x74

    if-ge v4, v5, :cond_63

    .line 6073
    iget-object v5, p0, Lfreemarker/core/FMParser;->jj_la1:[I

    aget v5, v5, v4

    iget v6, p0, Lfreemarker/core/FMParser;->jj_gen:I

    if-ne v5, v6, :cond_60

    move v5, v2

    :goto_22
    const/16 v6, 0x20

    if-ge v5, v6, :cond_60

    .line 6075
    sget-object v6, Lfreemarker/core/FMParser;->jj_la1_0:[I

    aget v6, v6, v4

    shl-int v7, v3, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_31

    .line 6076
    aput-boolean v3, v1, v5

    .line 6078
    :cond_31
    sget-object v6, Lfreemarker/core/FMParser;->jj_la1_1:[I

    aget v6, v6, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_3c

    add-int/lit8 v6, v5, 0x20

    .line 6079
    aput-boolean v3, v1, v6

    .line 6081
    :cond_3c
    sget-object v6, Lfreemarker/core/FMParser;->jj_la1_2:[I

    aget v6, v6, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_47

    add-int/lit8 v6, v5, 0x40

    .line 6082
    aput-boolean v3, v1, v6

    .line 6084
    :cond_47
    sget-object v6, Lfreemarker/core/FMParser;->jj_la1_3:[I

    aget v6, v6, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_52

    add-int/lit8 v6, v5, 0x60

    .line 6085
    aput-boolean v3, v1, v6

    .line 6087
    :cond_52
    sget-object v6, Lfreemarker/core/FMParser;->jj_la1_4:[I

    aget v6, v6, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_5d

    add-int/lit16 v6, v5, 0x80

    .line 6088
    aput-boolean v3, v1, v6

    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_63
    move v4, v2

    :goto_64
    if-ge v4, v0, :cond_78

    .line 6094
    aget-boolean v5, v1, v4

    if-eqz v5, :cond_75

    .line 6095
    new-array v5, v3, [I

    iput-object v5, p0, Lfreemarker/core/FMParser;->jj_expentry:[I

    .line 6096
    aput v4, v5, v2

    .line 6097
    iget-object v6, p0, Lfreemarker/core/FMParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 6100
    :cond_78
    iput v2, p0, Lfreemarker/core/FMParser;->jj_endpos:I

    .line 6101
    invoke-direct {p0}, Lfreemarker/core/FMParser;->jj_rescan_token()V

    .line 6102
    invoke-direct {p0, v2, v2}, Lfreemarker/core/FMParser;->jj_add_error_token(II)V

    .line 6103
    iget-object v0, p0, Lfreemarker/core/FMParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[I

    .line 6104
    :goto_88
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_9d

    .line 6105
    iget-object v1, p0, Lfreemarker/core/FMParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    .line 6107
    :cond_9d
    new-instance v1, Lfreemarker/core/ParseException;

    iget-object v2, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    sget-object v3, Lfreemarker/core/FMParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lfreemarker/core/ParseException;-><init>(Lfreemarker/core/Token;[[I[Ljava/lang/String;)V

    return-object v1
.end method

.method getMarkupOutputFormat()Lfreemarker/core/MarkupOutputFormat;
    .registers 3

    .line 347
    iget-object v0, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    instance-of v1, v0, Lfreemarker/core/MarkupOutputFormat;

    if-eqz v1, :cond_9

    check-cast v0, Lfreemarker/core/MarkupOutputFormat;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final getNextToken()Lfreemarker/core/Token;
    .registers 3

    .line 5996
    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iget-object v0, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iget-object v0, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iput-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    goto :goto_19

    .line 5997
    :cond_d
    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    iget-object v1, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    invoke-virtual {v1}, Lfreemarker/core/FMParserTokenManager;->getNextToken()Lfreemarker/core/Token;

    move-result-object v1

    iput-object v1, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    iput-object v1, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    :goto_19
    const/4 v0, -0x1

    .line 5998
    iput v0, p0, Lfreemarker/core/FMParser;->jj_ntk:I

    .line 5999
    iget v0, p0, Lfreemarker/core/FMParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfreemarker/core/FMParser;->jj_gen:I

    .line 6000
    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    return-object v0
.end method

.method public final getToken(I)Lfreemarker/core/Token;
    .registers 5

    .line 6005
    iget-object v0, p0, Lfreemarker/core/FMParser;->token:Lfreemarker/core/Token;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_18

    .line 6007
    iget-object v2, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    if-eqz v2, :cond_c

    iget-object v0, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    goto :goto_15

    .line 6008
    :cond_c
    iget-object v2, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    invoke-virtual {v2}, Lfreemarker/core/FMParserTokenManager;->getNextToken()Lfreemarker/core/Token;

    move-result-object v2

    iput-object v2, v0, Lfreemarker/core/Token;->next:Lfreemarker/core/Token;

    move-object v0, v2

    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_18
    return-object v0
.end method

.method setPreventStrippings(Z)V
    .registers 2

    .line 288
    iput-boolean p1, p0, Lfreemarker/core/FMParser;->preventStrippings:Z

    return-void
.end method

.method setupStringLiteralMode(Lfreemarker/core/FMParser;Lfreemarker/core/OutputFormat;)V
    .registers 6

    .line 259
    iget-object v0, p1, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    .line 261
    iget-object v1, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    iget v2, v0, Lfreemarker/core/FMParserTokenManager;->initialNamingConvention:I

    iput v2, v1, Lfreemarker/core/FMParserTokenManager;->initialNamingConvention:I

    .line 262
    iget-object v1, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    iget v2, v0, Lfreemarker/core/FMParserTokenManager;->namingConvention:I

    iput v2, v1, Lfreemarker/core/FMParserTokenManager;->namingConvention:I

    .line 263
    iget-object v1, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    iget-object v0, v0, Lfreemarker/core/FMParserTokenManager;->namingConventionEstabilisher:Lfreemarker/core/Token;

    iput-object v0, v1, Lfreemarker/core/FMParserTokenManager;->namingConventionEstabilisher:Lfreemarker/core/Token;

    .line 264
    iget-object v0, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfreemarker/core/FMParserTokenManager;->SwitchTo(I)V

    .line 266
    iput-object p2, p0, Lfreemarker/core/FMParser;->outputFormat:Lfreemarker/core/OutputFormat;

    .line 267
    invoke-direct {p0}, Lfreemarker/core/FMParser;->recalculateAutoEscapingField()V

    .line 268
    iget p2, p0, Lfreemarker/core/FMParser;->incompatibleImprovements:I

    sget v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_24:I

    if-ge p2, v0, :cond_29

    .line 270
    sget p2, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_0:I

    iput p2, p0, Lfreemarker/core/FMParser;->incompatibleImprovements:I

    .line 274
    :cond_29
    iget-object p1, p1, Lfreemarker/core/FMParser;->iteratorBlockContexts:Ljava/util/List;

    iput-object p1, p0, Lfreemarker/core/FMParser;->iteratorBlockContexts:Ljava/util/List;

    return-void
.end method

.method tearDownStringLiteralMode(Lfreemarker/core/FMParser;)V
    .registers 3

    .line 279
    iget-object p1, p1, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    .line 280
    iget-object v0, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    iget v0, v0, Lfreemarker/core/FMParserTokenManager;->namingConvention:I

    iput v0, p1, Lfreemarker/core/FMParserTokenManager;->namingConvention:I

    .line 281
    iget-object v0, p0, Lfreemarker/core/FMParser;->token_source:Lfreemarker/core/FMParserTokenManager;

    iget-object v0, v0, Lfreemarker/core/FMParserTokenManager;->namingConventionEstabilisher:Lfreemarker/core/Token;

    iput-object v0, p1, Lfreemarker/core/FMParserTokenManager;->namingConventionEstabilisher:Lfreemarker/core/Token;

    return-void
.end method
