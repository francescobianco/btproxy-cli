.class public Lfreemarker/template/Template;
.super Lfreemarker/core/Configurable;
.source "Template.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/Template$WrongEncodingException;,
        Lfreemarker/template/Template$LineTableBuilder;
    }
.end annotation


# static fields
.field public static final DEFAULT_NAMESPACE_PREFIX:Ljava/lang/String; = "D"

.field public static final NO_NS_PREFIX:Ljava/lang/String; = "N"

.field private static final READER_BUFFER_SIZE:I = 0x1000


# instance fields
.field private actualNamingConvention:I

.field private actualTagSyntax:I

.field private autoEscaping:Z

.field private customLookupCondition:Ljava/lang/Object;

.field private defaultNS:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private imports:Ljava/util/List;

.field private interpolationSyntax:I

.field private final lines:Ljava/util/ArrayList;

.field private macros:Ljava/util/Map;

.field private final name:Ljava/lang/String;

.field private namespaceURIToPrefixLookup:Ljava/util/Map;

.field private outputFormat:Lfreemarker/core/OutputFormat;

.field private final parserConfiguration:Lfreemarker/core/ParserConfiguration;

.field private prefixToNamespaceURILookup:Ljava/util/Map;

.field private rootElement:Lfreemarker/core/TemplateElement;

.field private final sourceName:Ljava/lang/String;

.field private templateLanguageVersion:Lfreemarker/template/Version;


# direct methods
.method constructor <init>(Ljava/lang/String;Lfreemarker/core/TemplateElement;Lfreemarker/template/Configuration;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 306
    move-object v1, v0

    check-cast v1, Lfreemarker/core/ParserConfiguration;

    invoke-direct {p0, p1, v0, p3, v0}, Lfreemarker/template/Template;-><init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/template/Configuration;Lfreemarker/core/ParserConfiguration;)V

    .line 307
    iput-object p2, p0, Lfreemarker/template/Template;->rootElement:Lfreemarker/core/TemplateElement;

    .line 308
    invoke-static {p0}, Lfreemarker/debug/impl/DebuggerService;->registerTemplate(Lfreemarker/template/Template;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 295
    move-object v1, v0

    check-cast v1, Lfreemarker/template/Configuration;

    invoke-direct {p0, p1, p2, v0}, Lfreemarker/template/Template;-><init>(Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/Configuration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/Configuration;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, v0, p2, p3}, Lfreemarker/template/Template;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/Configuration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/Configuration;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 142
    invoke-direct/range {v0 .. v5}, Lfreemarker/template/Template;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/Configuration;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/template/Configuration;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lfreemarker/template/Template;-><init>(Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/Configuration;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/template/Configuration;Lfreemarker/core/ParserConfiguration;)V
    .registers 6

    .line 109
    invoke-static {p3}, Lfreemarker/template/Template;->toNonNull(Lfreemarker/template/Configuration;)Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/Configurable;-><init>(Lfreemarker/core/Configurable;)V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/template/Template;->macros:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lfreemarker/template/Template;->imports:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/template/Template;->lines:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/template/Template;->prefixToNamespaceURILookup:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/template/Template;->namespaceURIToPrefixLookup:Ljava/util/Map;

    .line 110
    iput-object p1, p0, Lfreemarker/template/Template;->name:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lfreemarker/template/Template;->sourceName:Ljava/lang/String;

    .line 112
    invoke-static {p3}, Lfreemarker/template/Template;->toNonNull(Lfreemarker/template/Configuration;)Lfreemarker/template/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/template/Template;->normalizeTemplateLanguageVersion(Lfreemarker/template/Version;)Lfreemarker/template/Version;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/Template;->templateLanguageVersion:Lfreemarker/template/Version;

    if-eqz p4, :cond_3f

    goto :goto_43

    .line 113
    :cond_3f
    invoke-virtual {p0}, Lfreemarker/template/Template;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object p4

    :goto_43
    iput-object p4, p0, Lfreemarker/template/Template;->parserConfiguration:Lfreemarker/core/ParserConfiguration;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/Configuration;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 181
    invoke-direct/range {v0 .. v5}, Lfreemarker/template/Template;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/Configuration;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/Configuration;Lfreemarker/core/ParserConfiguration;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-direct {p0, p1, p2, p4, p5}, Lfreemarker/template/Template;-><init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/template/Configuration;Lfreemarker/core/ParserConfiguration;)V

    .line 235
    invoke-virtual {p0, p6}, Lfreemarker/template/Template;->setEncoding(Ljava/lang/String;)V

    .line 238
    :try_start_6
    invoke-virtual {p0}, Lfreemarker/template/Template;->getParserConfiguration()Lfreemarker/core/ParserConfiguration;

    move-result-object p1

    .line 240
    instance-of p2, p3, Ljava/io/BufferedReader;

    if-nez p2, :cond_1a

    instance-of p2, p3, Ljava/io/StringReader;

    if-nez p2, :cond_1a

    .line 241
    new-instance p2, Ljava/io/BufferedReader;

    const/16 p5, 0x1000

    invoke-direct {p2, p3, p5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object p3, p2

    .line 243
    :cond_1a
    new-instance p2, Lfreemarker/template/Template$LineTableBuilder;

    invoke-direct {p2, p0, p3, p1}, Lfreemarker/template/Template$LineTableBuilder;-><init>(Lfreemarker/template/Template;Ljava/io/Reader;Lfreemarker/core/ParserConfiguration;)V
    :try_end_1f
    .catch Lfreemarker/core/ParseException; {:try_start_6 .. :try_end_1f} :catch_79
    .catchall {:try_start_6 .. :try_end_1f} :catchall_77

    .line 247
    :try_start_1f
    new-instance p3, Lfreemarker/core/FMParser;

    invoke-direct {p3, p0, p2, p1}, Lfreemarker/core/FMParser;-><init>(Lfreemarker/template/Template;Ljava/io/Reader;Lfreemarker/core/ParserConfiguration;)V

    if-eqz p4, :cond_2d

    .line 249
    invoke-virtual {p4}, Lfreemarker/template/Configuration;->getPreventStrippings()Z

    move-result p4

    invoke-static {p3, p4}, Lfreemarker/core/_CoreAPI;->setPreventStrippings(Lfreemarker/core/FMParser;Z)V
    :try_end_2d
    .catch Lfreemarker/core/TokenMgrError; {:try_start_1f .. :try_end_2d} :catch_71
    .catch Lfreemarker/core/ParseException; {:try_start_1f .. :try_end_2d} :catch_6e
    .catchall {:try_start_1f .. :try_end_2d} :catchall_6b

    .line 252
    :cond_2d
    :try_start_2d
    invoke-virtual {p3}, Lfreemarker/core/FMParser;->Root()Lfreemarker/core/TemplateElement;

    move-result-object p4

    iput-object p4, p0, Lfreemarker/template/Template;->rootElement:Lfreemarker/core/TemplateElement;
    :try_end_33
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2d .. :try_end_33} :catch_34
    .catch Lfreemarker/core/TokenMgrError; {:try_start_2d .. :try_end_33} :catch_71
    .catch Lfreemarker/core/ParseException; {:try_start_2d .. :try_end_33} :catch_6e
    .catchall {:try_start_2d .. :try_end_33} :catchall_6b

    goto :goto_3e

    :catch_34
    move-exception p4

    .line 257
    :try_start_35
    invoke-virtual {p2}, Lfreemarker/template/Template$LineTableBuilder;->hasFailure()Z

    move-result p5

    if-eqz p5, :cond_6a

    const/4 p4, 0x0

    .line 260
    iput-object p4, p0, Lfreemarker/template/Template;->rootElement:Lfreemarker/core/TemplateElement;

    .line 262
    :goto_3e
    invoke-virtual {p3}, Lfreemarker/core/FMParser;->_getLastTagSyntax()I

    move-result p4

    iput p4, p0, Lfreemarker/template/Template;->actualTagSyntax:I

    .line 263
    invoke-interface {p1}, Lfreemarker/core/ParserConfiguration;->getInterpolationSyntax()I

    move-result p1

    iput p1, p0, Lfreemarker/template/Template;->interpolationSyntax:I

    .line 264
    invoke-virtual {p3}, Lfreemarker/core/FMParser;->_getLastNamingConvention()I

    move-result p1

    iput p1, p0, Lfreemarker/template/Template;->actualNamingConvention:I
    :try_end_50
    .catch Lfreemarker/core/TokenMgrError; {:try_start_35 .. :try_end_50} :catch_71
    .catch Lfreemarker/core/ParseException; {:try_start_35 .. :try_end_50} :catch_6e
    .catchall {:try_start_35 .. :try_end_50} :catchall_6b

    .line 274
    invoke-virtual {p2}, Ljava/io/Reader;->close()V

    .line 278
    invoke-virtual {p2}, Lfreemarker/template/Template$LineTableBuilder;->throwFailure()V

    .line 280
    invoke-static {p0}, Lfreemarker/debug/impl/DebuggerService;->registerTemplate(Lfreemarker/template/Template;)V

    .line 281
    iget-object p1, p0, Lfreemarker/template/Template;->namespaceURIToPrefixLookup:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/Template;->namespaceURIToPrefixLookup:Ljava/util/Map;

    .line 282
    iget-object p1, p0, Lfreemarker/template/Template;->prefixToNamespaceURILookup:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/Template;->prefixToNamespaceURILookup:Ljava/util/Map;

    return-void

    .line 258
    :cond_6a
    :try_start_6a
    throw p4
    :try_end_6b
    .catch Lfreemarker/core/TokenMgrError; {:try_start_6a .. :try_end_6b} :catch_71
    .catch Lfreemarker/core/ParseException; {:try_start_6a .. :try_end_6b} :catch_6e
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception p1

    move-object p3, p2

    goto :goto_82

    :catch_6e
    move-exception p1

    move-object p3, p2

    goto :goto_7a

    :catch_71
    move-exception p1

    .line 268
    :try_start_72
    invoke-virtual {p1, p0}, Lfreemarker/core/TokenMgrError;->toParseException(Lfreemarker/template/Template;)Lfreemarker/core/ParseException;

    move-result-object p1

    throw p1
    :try_end_77
    .catch Lfreemarker/core/ParseException; {:try_start_72 .. :try_end_77} :catch_6e
    .catchall {:try_start_72 .. :try_end_77} :catchall_6b

    :catchall_77
    move-exception p1

    goto :goto_82

    :catch_79
    move-exception p1

    .line 271
    :goto_7a
    :try_start_7a
    invoke-virtual {p0}, Lfreemarker/template/Template;->getSourceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfreemarker/core/ParseException;->setTemplateName(Ljava/lang/String;)V

    .line 272
    throw p1
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_77

    .line 274
    :goto_82
    invoke-virtual {p3}, Ljava/io/Reader;->close()V

    .line 275
    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/Configuration;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 202
    invoke-direct/range {v0 .. v6}, Lfreemarker/template/Template;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/Configuration;Lfreemarker/core/ParserConfiguration;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lfreemarker/template/Template;)Ljava/util/ArrayList;
    .registers 1

    .line 80
    iget-object p0, p0, Lfreemarker/template/Template;->lines:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getPlainTextTemplate(Ljava/lang/String;Ljava/lang/String;Lfreemarker/template/Configuration;)Lfreemarker/template/Template;
    .registers 4

    const/4 v0, 0x0

    .line 316
    invoke-static {p0, v0, p1, p2}, Lfreemarker/template/Template;->getPlainTextTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfreemarker/template/Configuration;)Lfreemarker/template/Template;

    move-result-object p0

    return-object p0
.end method

.method public static getPlainTextTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfreemarker/template/Configuration;)Lfreemarker/template/Template;
    .registers 7

    .line 336
    :try_start_0
    new-instance v0, Lfreemarker/template/Template;

    new-instance v1, Ljava/io/StringReader;

    const-string v2, "X"

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, p1, v1, p3}, Lfreemarker/template/Template;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/Configuration;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_17

    .line 340
    iget-object p0, v0, Lfreemarker/template/Template;->rootElement:Lfreemarker/core/TemplateElement;

    check-cast p0, Lfreemarker/core/TextBlock;

    invoke-static {p0, p2}, Lfreemarker/core/_CoreAPI;->replaceText(Lfreemarker/core/TextBlock;Ljava/lang/String;)V

    .line 341
    invoke-static {v0}, Lfreemarker/debug/impl/DebuggerService;->registerTemplate(Lfreemarker/template/Template;)V

    return-object v0

    :catch_17
    move-exception p0

    .line 338
    new-instance p1, Lfreemarker/core/BugException;

    const-string p2, "Plain text template creation failed"

    invoke-direct {p1, p2, p0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static normalizeTemplateLanguageVersion(Lfreemarker/template/Version;)Lfreemarker/template/Version;
    .registers 3

    .line 346
    invoke-static {p0}, Lfreemarker/template/_TemplateAPI;->checkVersionNotNullAndSupported(Lfreemarker/template/Version;)V

    .line 347
    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    .line 348
    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_19:I

    if-ge v0, v1, :cond_e

    .line 349
    sget-object p0, Lfreemarker/template/Configuration;->VERSION_2_3_0:Lfreemarker/template/Version;

    return-object p0

    .line 350
    :cond_e
    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_21:I

    if-le v0, v1, :cond_14

    .line 351
    sget-object p0, Lfreemarker/template/Configuration;->VERSION_2_3_21:Lfreemarker/template/Version;

    :cond_14
    return-object p0
.end method

.method private static toNonNull(Lfreemarker/template/Configuration;)Lfreemarker/template/Configuration;
    .registers 1

    if-eqz p0, :cond_3

    goto :goto_7

    .line 117
    :cond_3
    invoke-static {}, Lfreemarker/template/Configuration;->getDefaultConfiguration()Lfreemarker/template/Configuration;

    move-result-object p0

    :goto_7
    return-object p0
.end method


# virtual methods
.method public addImport(Lfreemarker/core/LibraryLoad;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 756
    iget-object v0, p0, Lfreemarker/template/Template;->imports:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMacro(Lfreemarker/core/Macro;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 746
    iget-object v0, p0, Lfreemarker/template/Template;->macros:Ljava/util/Map;

    invoke-virtual {p1}, Lfreemarker/core/Macro;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPrefixNSMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 938
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_93

    .line 941
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8b

    .line 944
    const-string v0, "N"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 947
    iget-object v0, p0, Lfreemarker/template/Template;->prefixToNamespaceURILookup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 950
    iget-object v0, p0, Lfreemarker/template/Template;->namespaceURIToPrefixLookup:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 953
    const-string v0, "D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 954
    iput-object p2, p0, Lfreemarker/template/Template;->defaultNS:Ljava/lang/String;

    goto :goto_39

    .line 956
    :cond_2f
    iget-object v0, p0, Lfreemarker/template/Template;->prefixToNamespaceURILookup:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    iget-object v0, p0, Lfreemarker/template/Template;->namespaceURIToPrefixLookup:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_39
    return-void

    .line 951
    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The namespace URI: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " cannot be mapped to 2 different prefixes."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 948
    :cond_55
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The prefix: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' was repeated. This is illegal."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 945
    :cond_70
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The prefix: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " cannot be registered, it\'s reserved for special internal use."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 942
    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot map empty string prefix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 939
    :cond_93
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot map empty string URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public containingElements(II)Ljavax/swing/tree/TreePath;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1020
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    iget-object v1, p0, Lfreemarker/template/Template;->rootElement:Lfreemarker/core/TemplateElement;

    .line 1022
    :goto_7
    invoke-virtual {v1, p1, p2}, Lfreemarker/core/TemplateElement;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1023
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    invoke-virtual {v1}, Lfreemarker/core/TemplateElement;->children()Ljava/util/Enumeration;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1025
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/TemplateElement;

    .line 1026
    invoke-virtual {v2, p1, p2}, Lfreemarker/core/TemplateElement;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object v1, v2

    goto :goto_7

    .line 1033
    :cond_28
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_30

    const/4 p1, 0x0

    return-object p1

    .line 1036
    :cond_30
    new-instance p1, Ljavax/swing/tree/TreePath;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V

    return-object p1
.end method

.method public createProcessingEnvironment(Ljava/lang/Object;Ljava/io/Writer;)Lfreemarker/core/Environment;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 500
    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/template/Template;->createProcessingEnvironment(Ljava/lang/Object;Ljava/io/Writer;Lfreemarker/template/ObjectWrapper;)Lfreemarker/core/Environment;

    move-result-object p1

    return-object p1
.end method

.method public createProcessingEnvironment(Ljava/lang/Object;Ljava/io/Writer;Lfreemarker/template/ObjectWrapper;)Lfreemarker/core/Environment;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    instance-of v0, p1, Lfreemarker/template/TemplateHashModel;

    if-eqz v0, :cond_7

    .line 467
    check-cast p1, Lfreemarker/template/TemplateHashModel;

    goto :goto_20

    :cond_7
    if-nez p3, :cond_d

    .line 470
    invoke-virtual {p0}, Lfreemarker/template/Template;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object p3

    :cond_d
    if-nez p1, :cond_15

    .line 474
    new-instance p1, Lfreemarker/template/SimpleHash;

    invoke-direct {p1, p3}, Lfreemarker/template/SimpleHash;-><init>(Lfreemarker/template/ObjectWrapper;)V

    goto :goto_20

    .line 476
    :cond_15
    invoke-interface {p3, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 477
    instance-of v1, v0, Lfreemarker/template/TemplateHashModel;

    if-eqz v1, :cond_26

    .line 478
    move-object p1, v0

    check-cast p1, Lfreemarker/template/TemplateHashModel;

    .line 491
    :goto_20
    new-instance p3, Lfreemarker/core/Environment;

    invoke-direct {p3, p0, p1, p2}, Lfreemarker/core/Environment;-><init>(Lfreemarker/template/Template;Lfreemarker/template/TemplateHashModel;Ljava/io/Writer;)V

    return-object p3

    :cond_26
    if-nez v0, :cond_5b

    .line 480
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " converted "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " to null."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 483
    :cond_5b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " didn\'t convert "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " to a TemplateHashModel. Generally, you want to use a Map<String, Object> or a JavaBean as the root-map (aka. data-model) parameter. The Map key-s or JavaBean property names will be the variable names in the template."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public dump(Ljava/io/PrintStream;)V
    .registers 3

    .line 729
    iget-object v0, p0, Lfreemarker/template/Template;->rootElement:Lfreemarker/core/TemplateElement;

    invoke-virtual {v0}, Lfreemarker/core/TemplateElement;->getCanonicalForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lfreemarker/template/Template;->rootElement:Lfreemarker/core/TemplateElement;

    invoke-virtual {v0}, Lfreemarker/core/TemplateElement;->getCanonicalForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public getActualNamingConvention()I
    .registers 2

    .line 682
    iget v0, p0, Lfreemarker/template/Template;->actualNamingConvention:I

    return v0
.end method

.method public getActualTagSyntax()I
    .registers 2

    .line 651
    iget v0, p0, Lfreemarker/template/Template;->actualTagSyntax:I

    return v0
.end method

.method public getAutoEscaping()Z
    .registers 2

    .line 715
    iget-boolean v0, p0, Lfreemarker/template/Template;->autoEscaping:Z

    return v0
.end method

.method public getConfiguration()Lfreemarker/template/Configuration;
    .registers 2

    .line 571
    invoke-virtual {p0}, Lfreemarker/template/Template;->getParent()Lfreemarker/core/Configurable;

    move-result-object v0

    check-cast v0, Lfreemarker/template/Configuration;

    return-object v0
.end method

.method public getCustomLookupCondition()Ljava/lang/Object;
    .registers 2

    .line 624
    iget-object v0, p0, Lfreemarker/template/Template;->customLookupCondition:Ljava/lang/Object;

    return-object v0
.end method

.method public getDefaultNS()Ljava/lang/String;
    .registers 2

    .line 962
    iget-object v0, p0, Lfreemarker/template/Template;->defaultNS:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 613
    iget-object v0, p0, Lfreemarker/template/Template;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getImports()Ljava/util/List;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 928
    iget-object v0, p0, Lfreemarker/template/Template;->imports:Ljava/util/List;

    return-object v0
.end method

.method public getInterpolationSyntax()I
    .registers 2

    .line 667
    iget v0, p0, Lfreemarker/template/Template;->interpolationSyntax:I

    return v0
.end method

.method public getMacros()Ljava/util/Map;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 920
    iget-object v0, p0, Lfreemarker/template/Template;->macros:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 547
    iget-object v0, p0, Lfreemarker/template/Template;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 969
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 970
    iget-object p1, p0, Lfreemarker/template/Template;->defaultNS:Ljava/lang/String;

    if-nez p1, :cond_d

    goto :goto_e

    :cond_d
    move-object v0, p1

    :goto_e
    return-object v0

    .line 972
    :cond_f
    iget-object v0, p0, Lfreemarker/template/Template;->prefixToNamespaceURILookup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getOutputFormat()Lfreemarker/core/OutputFormat;
    .registers 2

    .line 695
    iget-object v0, p0, Lfreemarker/template/Template;->outputFormat:Lfreemarker/core/OutputFormat;

    return-object v0
.end method

.method public getParserConfiguration()Lfreemarker/core/ParserConfiguration;
    .registers 2

    .line 582
    iget-object v0, p0, Lfreemarker/template/Template;->parserConfiguration:Lfreemarker/core/ParserConfiguration;

    return-object v0
.end method

.method public getPrefixForNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 982
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_14

    .line 983
    iget-object p1, p0, Lfreemarker/template/Template;->defaultNS:Ljava/lang/String;

    if-nez p1, :cond_11

    goto :goto_13

    :cond_11
    const-string v1, "N"

    :goto_13
    return-object v1

    .line 985
    :cond_14
    iget-object v0, p0, Lfreemarker/template/Template;->defaultNS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-object v1

    .line 988
    :cond_1d
    iget-object v0, p0, Lfreemarker/template/Template;->namespaceURIToPrefixLookup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPrefixedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_32

    .line 997
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_32

    .line 1004
    :cond_9
    iget-object v0, p0, Lfreemarker/template/Template;->defaultNS:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-object p1

    .line 1007
    :cond_12
    invoke-virtual {p0, p2}, Lfreemarker/template/Template;->getPrefixForNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1a

    const/4 p1, 0x0

    return-object p1

    .line 1011
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 998
    :cond_32
    :goto_32
    iget-object p2, p0, Lfreemarker/template/Template;->defaultNS:Ljava/lang/String;

    if-eqz p2, :cond_45

    .line 999
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "N:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_45
    return-object p1
.end method

.method public getRootTreeNode()Lfreemarker/core/TemplateElement;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 912
    iget-object v0, p0, Lfreemarker/template/Template;->rootElement:Lfreemarker/core/TemplateElement;

    return-object v0
.end method

.method public getSource(IIII)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4e

    if-ge p4, v0, :cond_6

    goto :goto_4e

    :cond_6
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p4, p4, -0x1

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_13
    if-gt p2, p4, :cond_29

    .line 786
    iget-object v2, p0, Lfreemarker/template/Template;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_26

    .line 787
    iget-object v2, p0, Lfreemarker/template/Template;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_26
    add-int/lit8 p2, p2, 0x1

    goto :goto_13

    .line 790
    :cond_29
    iget-object p2, p0, Lfreemarker/template/Template;->lines:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p3

    sub-int/2addr p2, v0

    const/4 p3, 0x0

    .line 792
    invoke-virtual {v1, p3, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 793
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 794
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4e
    :goto_4e
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSourceName()Ljava/lang/String;
    .registers 2

    .line 564
    iget-object v0, p0, Lfreemarker/template/Template;->sourceName:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Lfreemarker/template/Template;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method getTemplateLanguageVersion()Lfreemarker/template/Version;
    .registers 2

    .line 591
    iget-object v0, p0, Lfreemarker/template/Template;->templateLanguageVersion:Lfreemarker/template/Version;

    return-object v0
.end method

.method public process(Ljava/lang/Object;Ljava/io/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 383
    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/template/Template;->createProcessingEnvironment(Ljava/lang/Object;Ljava/io/Writer;Lfreemarker/template/ObjectWrapper;)Lfreemarker/core/Environment;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/core/Environment;->process()V

    return-void
.end method

.method public process(Ljava/lang/Object;Ljava/io/Writer;Lfreemarker/template/ObjectWrapper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/template/Template;->createProcessingEnvironment(Ljava/lang/Object;Ljava/io/Writer;Lfreemarker/template/ObjectWrapper;)Lfreemarker/core/Environment;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/core/Environment;->process()V

    return-void
.end method

.method public process(Ljava/lang/Object;Ljava/io/Writer;Lfreemarker/template/ObjectWrapper;Lfreemarker/template/TemplateNodeModel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/template/Template;->createProcessingEnvironment(Ljava/lang/Object;Ljava/io/Writer;Lfreemarker/template/ObjectWrapper;)Lfreemarker/core/Environment;

    move-result-object p1

    if-eqz p4, :cond_9

    .line 401
    invoke-virtual {p1, p4}, Lfreemarker/core/Environment;->setCurrentVisitorNode(Lfreemarker/template/TemplateNodeModel;)V

    .line 403
    :cond_9
    invoke-virtual {p1}, Lfreemarker/core/Environment;->process()V

    return-void
.end method

.method setAutoEscaping(Z)V
    .registers 2

    .line 722
    iput-boolean p1, p0, Lfreemarker/template/Template;->autoEscaping:Z

    return-void
.end method

.method public setCustomLookupCondition(Ljava/lang/Object;)V
    .registers 2

    .line 636
    iput-object p1, p0, Lfreemarker/template/Template;->customLookupCondition:Ljava/lang/Object;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 604
    iput-object p1, p0, Lfreemarker/template/Template;->encoding:Ljava/lang/String;

    return-void
.end method

.method setOutputFormat(Lfreemarker/core/OutputFormat;)V
    .registers 2

    .line 702
    iput-object p1, p0, Lfreemarker/template/Template;->outputFormat:Lfreemarker/core/OutputFormat;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 509
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 511
    :try_start_5
    invoke-virtual {p0, v0}, Lfreemarker/template/Template;->dump(Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    .line 515
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v0

    .line 513
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
