.class public final Lfreemarker/core/Environment;
.super Lfreemarker/core/Configurable;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/Environment$LazilyInitializedNamespace;,
        Lfreemarker/core/Environment$InitializationStatus;,
        Lfreemarker/core/Environment$Namespace;,
        Lfreemarker/core/Environment$NestedElementTemplateDirectiveBody;,
        Lfreemarker/core/Environment$LocalContextWithNewLocal;
    }
.end annotation


# static fields
.field private static final ATTEMPT_LOGGER:Lfreemarker/log/Logger;

.field private static final CACHED_TDFS_LENGTH:I = 0x10

.field private static final CACHED_TDFS_SQL_D_T_TZ_OFFS:I = 0x8

.field private static final CACHED_TDFS_ZONELESS_INPUT_OFFS:I = 0x4

.field private static final C_NUMBER_FORMAT:Ljava/text/DecimalFormat;

.field private static final EMPTY_BODY_WRITER:Ljava/io/Writer;

.field private static final LOG:Lfreemarker/log/Logger;

.field private static final NO_OUT_ARGS:[Lfreemarker/template/TemplateModel;

.field private static final TERSE_MODE_INSTRUCTION_STACK_TRACE_LIMIT:I = 0xa

.field private static final threadEnv:Ljava/lang/ThreadLocal;


# instance fields
.field private cNumberFormat:Ljava/text/NumberFormat;

.field private cachedCollator:Ljava/text/Collator;

.field private cachedSQLDateAndTimeTimeZoneSameAsNormal:Ljava/lang/Boolean;

.field private cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

.field private cachedTempDateFormatsByFmtStrArray:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lfreemarker/core/TemplateDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private cachedTemplateNumberFormat:Lfreemarker/core/TemplateNumberFormat;

.field private cachedTemplateNumberFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lfreemarker/core/TemplateNumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private cachedURLEscapingCharset:Ljava/lang/String;

.field private cachedURLEscapingCharsetSet:Z

.field private final configuration:Lfreemarker/template/Configuration;

.field private currentMacroContext:Lfreemarker/core/Macro$Context;

.field private currentNamespace:Lfreemarker/core/Environment$Namespace;

.field private currentNodeNS:Ljava/lang/String;

.field private currentNodeName:Ljava/lang/String;

.field private currentVisitorNode:Lfreemarker/template/TemplateNodeModel;

.field private customStateVariables:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fastInvalidReferenceExceptions:Z

.field private globalNamespace:Lfreemarker/core/Environment$Namespace;

.field private inAttemptBlock:Z

.field private final incompatibleImprovementsGE2328:Z

.field private instructionStack:[Lfreemarker/core/TemplateElement;

.field private instructionStackSize:I

.field private isoBuiltInCalendarFactory:Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;

.field private lastReturnValue:Lfreemarker/template/TemplateModel;

.field private lastThrowable:Ljava/lang/Throwable;

.field private legacyParent:Lfreemarker/core/Configurable;

.field private loadedLibs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lfreemarker/core/Environment$Namespace;",
            ">;"
        }
    .end annotation
.end field

.field private localContextStack:Lfreemarker/core/LocalContextStack;

.field private macroToNamespaceLookup:Ljava/util/HashMap;

.field private final mainNamespace:Lfreemarker/core/Environment$Namespace;

.field private nodeNamespaceIndex:I

.field private nodeNamespaces:Lfreemarker/template/TemplateSequenceModel;

.field private out:Ljava/io/Writer;

.field private final recoveredErrorStack:Ljava/util/ArrayList;

.field private final rootDataModel:Lfreemarker/template/TemplateHashModel;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lfreemarker/core/Environment;->threadEnv:Ljava/lang/ThreadLocal;

    .line 99
    const-string v0, "freemarker.runtime"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Environment;->LOG:Lfreemarker/log/Logger;

    .line 100
    const-string v0, "freemarker.runtime.attempt"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Environment;->ATTEMPT_LOGGER:Lfreemarker/log/Logger;

    .line 104
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v2, "0.################"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lfreemarker/core/Environment;->C_NUMBER_FORMAT:Ljava/text/DecimalFormat;

    const/4 v1, 0x0

    .line 109
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 110
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 405
    new-array v0, v1, [Lfreemarker/template/TemplateModel;

    sput-object v0, Lfreemarker/core/Environment;->NO_OUT_ARGS:[Lfreemarker/template/TemplateModel;

    .line 3216
    new-instance v0, Lfreemarker/core/Environment$5;

    invoke-direct {v0}, Lfreemarker/core/Environment$5;-><init>()V

    sput-object v0, Lfreemarker/core/Environment;->EMPTY_BODY_WRITER:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Template;Lfreemarker/template/TemplateHashModel;Ljava/io/Writer;)V
    .registers 7

    .line 202
    invoke-direct {p0, p1}, Lfreemarker/core/Configurable;-><init>(Lfreemarker/core/Configurable;)V

    const/16 v0, 0x10

    .line 116
    new-array v0, v0, [Lfreemarker/core/TemplateElement;

    iput-object v0, p0, Lfreemarker/core/Environment;->instructionStack:[Lfreemarker/core/TemplateElement;

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lfreemarker/core/Environment;->instructionStackSize:I

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfreemarker/core/Environment;->recoveredErrorStack:Ljava/util/ArrayList;

    .line 174
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lfreemarker/core/Environment;->macroToNamespaceLookup:Ljava/util/HashMap;

    .line 203
    invoke-virtual {p1}, Lfreemarker/template/Template;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/core/Environment;->configuration:Lfreemarker/template/Configuration;

    .line 204
    invoke-virtual {v1}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/Version;->intValue()I

    move-result v1

    sget v2, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_28:I

    if-lt v1, v2, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    iput-boolean v0, p0, Lfreemarker/core/Environment;->incompatibleImprovementsGE2328:Z

    .line 205
    new-instance v0, Lfreemarker/core/Environment$Namespace;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfreemarker/core/Environment$Namespace;-><init>(Lfreemarker/core/Environment;Lfreemarker/template/Template;)V

    iput-object v0, p0, Lfreemarker/core/Environment;->globalNamespace:Lfreemarker/core/Environment$Namespace;

    .line 206
    new-instance v0, Lfreemarker/core/Environment$Namespace;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/Environment$Namespace;-><init>(Lfreemarker/core/Environment;Lfreemarker/template/Template;)V

    iput-object v0, p0, Lfreemarker/core/Environment;->mainNamespace:Lfreemarker/core/Environment$Namespace;

    iput-object v0, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    .line 207
    iput-object p3, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    .line 208
    iput-object p2, p0, Lfreemarker/core/Environment;->rootDataModel:Lfreemarker/template/TemplateHashModel;

    .line 209
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->importMacros(Lfreemarker/template/Template;)V

    return-void
.end method

.method static synthetic access$100(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateHashModel;
    .registers 1

    .line 95
    iget-object p0, p0, Lfreemarker/core/Environment;->rootDataModel:Lfreemarker/template/TemplateHashModel;

    return-object p0
.end method

.method static synthetic access$200(Lfreemarker/core/Environment;)Lfreemarker/template/Configuration;
    .registers 1

    .line 95
    iget-object p0, p0, Lfreemarker/core/Environment;->configuration:Lfreemarker/template/Configuration;

    return-object p0
.end method

.method static synthetic access$300(Lfreemarker/core/Environment;)Lfreemarker/core/Environment$Namespace;
    .registers 1

    .line 95
    iget-object p0, p0, Lfreemarker/core/Environment;->globalNamespace:Lfreemarker/core/Environment$Namespace;

    return-object p0
.end method

.method static synthetic access$600(Lfreemarker/core/Environment;)Ljava/io/Writer;
    .registers 1

    .line 95
    iget-object p0, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic access$602(Lfreemarker/core/Environment;Ljava/io/Writer;)Ljava/io/Writer;
    .registers 2

    .line 95
    iput-object p1, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    return-object p1
.end method

.method static synthetic access$700(Lfreemarker/core/Environment;)Ljava/lang/String;
    .registers 1

    .line 95
    invoke-direct {p0}, Lfreemarker/core/Environment;->getIncludedTemplateEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lfreemarker/core/Environment;)Ljava/lang/Object;
    .registers 1

    .line 95
    invoke-direct {p0}, Lfreemarker/core/Environment;->getIncludedTemplateCustomLookupCondition()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lfreemarker/core/Environment;Lfreemarker/core/Environment$Namespace;Lfreemarker/template/Template;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Lfreemarker/core/Environment;->initializeImportLibNamespace(Lfreemarker/core/Environment$Namespace;Lfreemarker/template/Template;)V

    return-void
.end method

.method static appendInstructionStackItem(Lfreemarker/core/TemplateElement;Ljava/lang/StringBuilder;)V
    .registers 4

    .line 2320
    invoke-virtual {p0}, Lfreemarker/core/TemplateElement;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lfreemarker/core/_MessageUtil;->shorten(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2322
    const-string v0, "  ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2323
    invoke-static {p0}, Lfreemarker/core/Environment;->getEnclosingMacro(Lfreemarker/core/TemplateElement;)Lfreemarker/core/Macro;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 2325
    iget v1, p0, Lfreemarker/core/TemplateElement;->beginLine:I

    iget p0, p0, Lfreemarker/core/TemplateElement;->beginColumn:I

    invoke-static {v0, v1, p0}, Lfreemarker/core/_MessageUtil;->formatLocationForEvaluationError(Lfreemarker/core/Macro;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 2329
    :cond_24
    invoke-virtual {p0}, Lfreemarker/core/TemplateElement;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    iget v1, p0, Lfreemarker/core/TemplateElement;->beginLine:I

    iget p0, p0, Lfreemarker/core/TemplateElement;->beginColumn:I

    .line 2328
    invoke-static {v0, v1, p0}, Lfreemarker/core/_MessageUtil;->formatLocationForEvaluationError(Lfreemarker/template/Template;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2331
    :goto_33
    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private clearCachedValues()V
    .registers 2

    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lfreemarker/core/Environment;->cachedTemplateNumberFormats:Ljava/util/Map;

    .line 289
    iput-object v0, p0, Lfreemarker/core/Environment;->cachedTemplateNumberFormat:Lfreemarker/core/TemplateNumberFormat;

    .line 291
    iput-object v0, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    .line 292
    iput-object v0, p0, Lfreemarker/core/Environment;->cachedTempDateFormatsByFmtStrArray:[Ljava/util/HashMap;

    .line 294
    iput-object v0, p0, Lfreemarker/core/Environment;->cachedCollator:Ljava/text/Collator;

    .line 295
    iput-object v0, p0, Lfreemarker/core/Environment;->cachedURLEscapingCharset:Ljava/lang/String;

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lfreemarker/core/Environment;->cachedURLEscapingCharsetSet:Z

    return-void
.end method

.method private findEnclosingIterationContext(Ljava/lang/String;)Lfreemarker/core/IteratorBlock$IterationContext;
    .registers 6

    .line 670
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getLocalContextStack()Lfreemarker/core/LocalContextStack;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 672
    invoke-virtual {v0}, Lfreemarker/core/LocalContextStack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_27

    .line 673
    invoke-virtual {v0, v1}, Lfreemarker/core/LocalContextStack;->get(I)Lfreemarker/core/LocalContext;

    move-result-object v2

    .line 674
    instance-of v3, v2, Lfreemarker/core/IteratorBlock$IterationContext;

    if-eqz v3, :cond_24

    if-eqz p1, :cond_21

    move-object v3, v2

    check-cast v3, Lfreemarker/core/IteratorBlock$IterationContext;

    .line 677
    invoke-virtual {v3, p1}, Lfreemarker/core/IteratorBlock$IterationContext;->hasVisibleLoopVar(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 678
    :cond_21
    check-cast v2, Lfreemarker/core/IteratorBlock$IterationContext;

    return-object v2

    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getCurrentEnvironment()Lfreemarker/core/Environment;
    .registers 1

    .line 194
    sget-object v0, Lfreemarker/core/Environment;->threadEnv:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/Environment;

    return-object v0
.end method

.method private static getEnclosingMacro(Lfreemarker/core/TemplateElement;)Lfreemarker/core/Macro;
    .registers 2

    :goto_0
    if-eqz p0, :cond_e

    .line 2336
    instance-of v0, p0, Lfreemarker/core/Macro;

    if-eqz v0, :cond_9

    check-cast p0, Lfreemarker/core/Macro;

    return-object p0

    .line 2337
    :cond_9
    invoke-virtual {p0}, Lfreemarker/core/TemplateElement;->getParentElement()Lfreemarker/core/TemplateElement;

    move-result-object p0

    goto :goto_0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private getIncludedTemplateCustomLookupCondition()Ljava/lang/Object;
    .registers 2

    .line 2660
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Template;->getCustomLookupCondition()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getIncludedTemplateEncoding()Ljava/lang/String;
    .registers 3

    .line 2666
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Template;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    .line 2668
    iget-object v0, p0, Lfreemarker/core/Environment;->configuration:Lfreemarker/template/Configuration;

    invoke-virtual {p0}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/template/Configuration;->getEncoding(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method private getNodeProcessor(Lfreemarker/core/Environment$Namespace;Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_14

    .line 2551
    invoke-virtual {p1, p2}, Lfreemarker/core/Environment$Namespace;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    .line 2552
    instance-of p2, p1, Lfreemarker/core/Macro;

    if-nez p2, :cond_11

    instance-of p2, p1, Lfreemarker/template/TemplateTransformModel;

    if-nez p2, :cond_11

    goto/16 :goto_a1

    :cond_11
    move-object v0, p1

    goto/16 :goto_a1

    .line 2556
    :cond_14
    invoke-virtual {p1}, Lfreemarker/core/Environment$Namespace;->getTemplate()Lfreemarker/template/Template;

    move-result-object v1

    .line 2557
    invoke-virtual {v1, p3}, Lfreemarker/template/Template;->getPrefixForNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    return-object v0

    .line 2563
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_49

    .line 2564
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfreemarker/core/Environment$Namespace;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    .line 2565
    instance-of p2, p1, Lfreemarker/core/Macro;

    if-nez p2, :cond_11

    instance-of p2, p1, Lfreemarker/template/TemplateTransformModel;

    if-nez p2, :cond_11

    goto :goto_a1

    .line 2569
    :cond_49
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6a

    .line 2570
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "N:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lfreemarker/core/Environment$Namespace;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    .line 2571
    instance-of v3, v2, Lfreemarker/core/Macro;

    if-nez v3, :cond_6b

    instance-of v3, v2, Lfreemarker/template/TemplateTransformModel;

    if-nez v3, :cond_6b

    :cond_6a
    move-object v2, v0

    .line 2575
    :cond_6b
    invoke-virtual {v1}, Lfreemarker/template/Template;->getDefaultNS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_91

    .line 2576
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "D:"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lfreemarker/core/Environment$Namespace;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    .line 2577
    instance-of p3, v2, Lfreemarker/core/Macro;

    if-nez p3, :cond_91

    instance-of p3, v2, Lfreemarker/template/TemplateTransformModel;

    if-nez p3, :cond_91

    move-object v2, v0

    :cond_91
    if-nez v2, :cond_a0

    .line 2582
    invoke-virtual {p1, p2}, Lfreemarker/core/Environment$Namespace;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    .line 2583
    instance-of p2, p1, Lfreemarker/core/Macro;

    if-nez p2, :cond_11

    instance-of p2, p1, Lfreemarker/template/TemplateTransformModel;

    if-nez p2, :cond_11

    goto :goto_a1

    :cond_a0
    move-object v0, v2

    :goto_a1
    return-object v0
.end method

.method private getNodeProcessor(Ljava/lang/String;Ljava/lang/String;I)Lfreemarker/template/TemplateModel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 2526
    iget-object v0, p0, Lfreemarker/core/Environment;->nodeNamespaces:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge p3, v0, :cond_23

    .line 2530
    :try_start_9
    iget-object v1, p0, Lfreemarker/core/Environment;->nodeNamespaces:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v1, p3}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v1

    check-cast v1, Lfreemarker/core/Environment$Namespace;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_11} :catch_1b

    .line 2536
    invoke-direct {p0, v1, p1, p2}, Lfreemarker/core/Environment;->getNodeProcessor(Lfreemarker/core/Environment$Namespace;Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    if-eqz v1, :cond_18

    goto :goto_23

    :cond_18
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    .line 2532
    :catch_1b
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    const-string p2, "A \"using\" clause should contain a sequence of namespaces or strings that indicate the location of importable macro libraries."

    invoke-direct {p1, p0, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw p1

    :cond_23
    :goto_23
    if-eqz v1, :cond_2d

    add-int/lit8 p3, p3, 0x1

    .line 2541
    iput p3, p0, Lfreemarker/core/Environment;->nodeNamespaceIndex:I

    .line 2542
    iput-object p1, p0, Lfreemarker/core/Environment;->currentNodeName:Ljava/lang/String;

    .line 2543
    iput-object p2, p0, Lfreemarker/core/Environment;->currentNodeNS:Ljava/lang/String;

    :cond_2d
    return-object v1
.end method

.method private final getNullableLocalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 2051
    iget-object v0, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    if-eqz v0, :cond_1c

    .line 2052
    invoke-virtual {v0}, Lfreemarker/core/LocalContextStack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_1c

    .line 2053
    iget-object v1, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    invoke-virtual {v1, v0}, Lfreemarker/core/LocalContextStack;->get(I)Lfreemarker/core/LocalContext;

    move-result-object v1

    .line 2054
    invoke-interface {v1, p1}, Lfreemarker/core/LocalContext;->getLocalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    if-eqz v1, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 2060
    :cond_1c
    iget-object v0, p0, Lfreemarker/core/Environment;->currentMacroContext:Lfreemarker/core/Macro$Context;

    if-nez v0, :cond_22

    const/4 p1, 0x0

    goto :goto_26

    :cond_22
    invoke-virtual {v0, p1}, Lfreemarker/core/Macro$Context;->getLocalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    :goto_26
    return-object p1
.end method

.method private getTemplateDateFormat(IZZ)Lfreemarker/core/TemplateDateFormat;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation

    if-eqz p1, :cond_51

    .line 1822
    invoke-direct {p0, p1, p3, p2}, Lfreemarker/core/Environment;->getTemplateDateFormatCacheArrayIndex(IZZ)I

    move-result v0

    .line 1823
    iget-object v1, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    if-nez v1, :cond_10

    const/16 v1, 0x10

    .line 1825
    new-array v1, v1, [Lfreemarker/core/TemplateDateFormat;

    .line 1826
    iput-object v1, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    .line 1828
    :cond_10
    aget-object v2, v1, v0

    if-nez v2, :cond_50

    const/4 v2, 0x1

    if-eq p1, v2, :cond_40

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3b

    const/4 v2, 0x3

    if-ne p1, v2, :cond_22

    .line 1839
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getDateTimeFormat()Ljava/lang/String;

    move-result-object v2

    goto :goto_44

    .line 1842
    :cond_22
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid date type enum: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1836
    :cond_3b
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getDateFormat()Ljava/lang/String;

    move-result-object v2

    goto :goto_44

    .line 1833
    :cond_40
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getTimeFormat()Ljava/lang/String;

    move-result-object v2

    :goto_44
    move-object v4, v2

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    .line 1845
    invoke-direct/range {v3 .. v8}, Lfreemarker/core/Environment;->getTemplateDateFormat(Ljava/lang/String;IZZZ)Lfreemarker/core/TemplateDateFormat;

    move-result-object v2

    .line 1847
    aput-object v2, v1, v0

    :cond_50
    return-object v2

    .line 1820
    :cond_51
    new-instance p1, Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;

    invoke-direct {p1}, Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;-><init>()V

    throw p1
.end method

.method private getTemplateDateFormat(Ljava/lang/String;IZZZ)Lfreemarker/core/TemplateDateFormat;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation

    .line 1867
    iget-object v0, p0, Lfreemarker/core/Environment;->cachedTempDateFormatsByFmtStrArray:[Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    if-eqz p5, :cond_2c

    const/16 v0, 0x10

    .line 1870
    new-array v0, v0, [Ljava/util/HashMap;

    .line 1871
    iput-object v0, p0, Lfreemarker/core/Environment;->cachedTempDateFormatsByFmtStrArray:[Ljava/util/HashMap;

    .line 1880
    :cond_d
    invoke-direct {p0, p2, p4, p3}, Lfreemarker/core/Environment;->getTemplateDateFormatCacheArrayIndex(IZZ)I

    move-result v2

    .line 1881
    aget-object v3, v0, v2

    if-nez v3, :cond_22

    if-eqz p5, :cond_20

    .line 1884
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1885
    aput-object v3, v0, v2

    goto :goto_29

    :cond_20
    move-object v1, v3

    goto :goto_2c

    .line 1891
    :cond_22
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lfreemarker/core/TemplateDateFormat;

    :goto_29
    if-eqz v1, :cond_20

    return-object v1

    .line 1903
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object v5

    if-eqz p3, :cond_37

    invoke-virtual {p0}, Lfreemarker/core/Environment;->getSQLDateAndTimeTimeZone()Ljava/util/TimeZone;

    move-result-object p3

    goto :goto_3b

    :cond_37
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p3

    :goto_3b
    move-object v6, p3

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v7, p4

    .line 1901
    invoke-direct/range {v2 .. v7}, Lfreemarker/core/Environment;->getTemplateDateFormatWithoutCache(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;Z)Lfreemarker/core/TemplateDateFormat;

    move-result-object p2

    if-eqz p5, :cond_49

    .line 1907
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    return-object p2
.end method

.method private getTemplateDateFormatCacheArrayIndex(IZZ)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const/4 p2, 0x4

    goto :goto_6

    :cond_5
    move p2, v0

    :goto_6
    add-int/2addr p1, p2

    if-eqz p3, :cond_b

    const/16 v0, 0x8

    :cond_b
    add-int/2addr p1, v0

    return p1
.end method

.method private getTemplateDateFormatWithoutCache(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;Z)Lfreemarker/core/TemplateDateFormat;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation

    .line 1927
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1931
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_b
    const/16 v2, 0x78

    const/16 v3, 0x73

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1e

    if-le v0, v4, :cond_1e

    .line 1936
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1e

    .line 1937
    sget-object v0, Lfreemarker/core/XSTemplateDateFormatFactory;->INSTANCE:Lfreemarker/core/XSTemplateDateFormatFactory;

    goto/16 :goto_95

    :cond_1e
    const/16 v2, 0x69

    if-ne v1, v2, :cond_36

    const/4 v2, 0x2

    if-le v0, v2, :cond_36

    .line 1941
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_36

    .line 1942
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_36

    .line 1943
    sget-object v0, Lfreemarker/core/ISOTemplateDateFormatFactory;->INSTANCE:Lfreemarker/core/ISOTemplateDateFormatFactory;

    goto :goto_95

    :cond_36
    const/16 v2, 0x40

    if-ne v1, v2, :cond_93

    if-le v0, v4, :cond_93

    .line 1947
    invoke-virtual {p0}, Lfreemarker/core/Environment;->isIcI2324OrLater()Z

    move-result v1

    if-nez v1, :cond_48

    invoke-virtual {p0}, Lfreemarker/core/Environment;->hasCustomFormats()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1948
    :cond_48
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_93

    move v1, v4

    :goto_53
    if-ge v1, v0, :cond_65

    .line 1953
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_65

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_62

    goto :goto_65

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 1958
    :cond_65
    :goto_65
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-ge v1, v0, :cond_71

    add-int/2addr v1, v4

    .line 1959
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_73

    :cond_71
    const-string p1, ""

    .line 1962
    :goto_73
    invoke-virtual {p0, v2}, Lfreemarker/core/Environment;->getCustomDateFormat(Ljava/lang/String;)Lfreemarker/core/TemplateDateFormatFactory;

    move-result-object v0

    if-eqz v0, :cond_7a

    goto :goto_95

    .line 1964
    :cond_7a
    new-instance p1, Lfreemarker/core/UndefinedCustomFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "No custom date format was defined with name "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1965
    invoke-static {v2}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/core/UndefinedCustomFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1969
    :cond_93
    sget-object v0, Lfreemarker/core/JavaTemplateDateFormatFactory;->INSTANCE:Lfreemarker/core/JavaTemplateDateFormatFactory;

    :goto_95
    move-object v2, p1

    move-object v1, v0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p0

    .line 1972
    invoke-virtual/range {v1 .. v7}, Lfreemarker/core/TemplateDateFormatFactory;->get(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;ZLfreemarker/core/Environment;)Lfreemarker/core/TemplateDateFormat;

    move-result-object p1

    return-object p1
.end method

.method private getTemplateNumberFormat(Ljava/lang/String;Z)Lfreemarker/core/TemplateNumberFormat;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation

    .line 1408
    iget-object v0, p0, Lfreemarker/core/Environment;->cachedTemplateNumberFormats:Ljava/util/Map;

    if-nez v0, :cond_e

    if-eqz p2, :cond_17

    .line 1410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/core/Environment;->cachedTemplateNumberFormats:Ljava/util/Map;

    goto :goto_17

    .line 1413
    :cond_e
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/TemplateNumberFormat;

    if-eqz v0, :cond_17

    return-object v0

    .line 1419
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lfreemarker/core/Environment;->getTemplateNumberFormatWithoutCache(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/core/TemplateNumberFormat;

    move-result-object v0

    if-eqz p2, :cond_26

    .line 1422
    iget-object p2, p0, Lfreemarker/core/Environment;->cachedTemplateNumberFormats:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method private getTemplateNumberFormatWithoutCache(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/core/TemplateNumberFormat;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation

    .line 1438
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_6b

    const/4 v2, 0x0

    .line 1440
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6b

    .line 1441
    invoke-virtual {p0}, Lfreemarker/core/Environment;->isIcI2324OrLater()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {p0}, Lfreemarker/core/Environment;->hasCustomFormats()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1442
    :cond_1c
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_6b

    move v2, v1

    :goto_27
    if-ge v2, v0, :cond_39

    .line 1448
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_39

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_36

    goto :goto_39

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 1453
    :cond_39
    :goto_39
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-ge v2, v0, :cond_45

    add-int/2addr v2, v1

    .line 1454
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_47

    :cond_45
    const-string p1, ""

    .line 1457
    :goto_47
    invoke-virtual {p0, v3}, Lfreemarker/core/Environment;->getCustomNumberFormat(Ljava/lang/String;)Lfreemarker/core/TemplateNumberFormatFactory;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 1463
    invoke-virtual {v0, p1, p2, p0}, Lfreemarker/core/TemplateNumberFormatFactory;->get(Ljava/lang/String;Ljava/util/Locale;Lfreemarker/core/Environment;)Lfreemarker/core/TemplateNumberFormat;

    move-result-object p1

    return-object p1

    .line 1459
    :cond_52
    new-instance p1, Lfreemarker/core/UndefinedCustomFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "No custom number format was defined with name "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1460
    invoke-static {v3}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/core/UndefinedCustomFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1465
    :cond_6b
    sget-object v0, Lfreemarker/core/JavaTemplateNumberFormatFactory;->INSTANCE:Lfreemarker/core/JavaTemplateNumberFormatFactory;

    invoke-virtual {v0, p1, p2, p0}, Lfreemarker/core/JavaTemplateNumberFormatFactory;->get(Ljava/lang/String;Ljava/util/Locale;Lfreemarker/core/Environment;)Lfreemarker/core/TemplateNumberFormat;

    move-result-object p1

    return-object p1
.end method

.method private handleTemplateException(Lfreemarker/template/TemplateException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 999
    instance-of v0, p1, Lfreemarker/template/TemplateModelException;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Lfreemarker/template/TemplateModelException;

    .line 1000
    invoke-virtual {v0}, Lfreemarker/template/TemplateModelException;->getReplaceWithCause()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1001
    invoke-virtual {p1}, Lfreemarker/template/TemplateException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lfreemarker/template/TemplateException;

    if-eqz v0, :cond_1b

    .line 1002
    invoke-virtual {p1}, Lfreemarker/template/TemplateException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateException;

    .line 1007
    :cond_1b
    iget-object v0, p0, Lfreemarker/core/Environment;->lastThrowable:Ljava/lang/Throwable;

    if-eq v0, p1, :cond_58

    .line 1010
    iput-object p1, p0, Lfreemarker/core/Environment;->lastThrowable:Ljava/lang/Throwable;

    .line 1012
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getLogTemplateExceptions()Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lfreemarker/core/Environment;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {v0}, Lfreemarker/log/Logger;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1013
    invoke-virtual {p0}, Lfreemarker/core/Environment;->isInAttemptBlock()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1014
    const-string v1, "Error executing FreeMarker template"

    invoke-virtual {v0, v1, p1}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1020
    :cond_3a
    :try_start_3a
    instance-of v0, p1, Lfreemarker/core/StopException;

    if-nez v0, :cond_48

    .line 1025
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getTemplateExceptionHandler()Lfreemarker/template/TemplateExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    invoke-interface {v0, p1, p0, v1}, Lfreemarker/template/TemplateExceptionHandler;->handleTemplateException(Lfreemarker/template/TemplateException;Lfreemarker/core/Environment;Ljava/io/Writer;)V

    return-void

    .line 1021
    :cond_48
    throw p1
    :try_end_49
    .catch Lfreemarker/template/TemplateException; {:try_start_3a .. :try_end_49} :catch_49

    :catch_49
    move-exception v0

    .line 1028
    invoke-virtual {p0}, Lfreemarker/core/Environment;->isInAttemptBlock()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1029
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getAttemptExceptionReporter()Lfreemarker/template/AttemptExceptionReporter;

    move-result-object v1

    invoke-interface {v1, p1, p0}, Lfreemarker/template/AttemptExceptionReporter;->report(Lfreemarker/template/TemplateException;Lfreemarker/core/Environment;)V

    .line 1031
    :cond_57
    throw v0

    .line 1008
    :cond_58
    throw p1
.end method

.method private importLib(Ljava/lang/String;Lfreemarker/template/Template;Ljava/lang/String;)Lfreemarker/core/Environment$Namespace;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 2795
    invoke-virtual {p2}, Lfreemarker/template/Template;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_15

    .line 2801
    :cond_8
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getTemplateNameFormat()Lfreemarker/cache/TemplateNameFormat;

    move-result-object v0

    .line 2802
    invoke-static {v0, p1}, Lfreemarker/cache/_CacheAPI;->normalizeRootBasedName(Lfreemarker/cache/TemplateNameFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 2805
    :goto_15
    iget-object v1, p0, Lfreemarker/core/Environment;->loadedLibs:Ljava/util/HashMap;

    if-nez v1, :cond_20

    .line 2806
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lfreemarker/core/Environment;->loadedLibs:Ljava/util/HashMap;

    .line 2808
    :cond_20
    iget-object v1, p0, Lfreemarker/core/Environment;->loadedLibs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/core/Environment$Namespace;

    if-eqz v1, :cond_4c

    if-eqz p3, :cond_40

    .line 2811
    invoke-virtual {p0, p3, v1}, Lfreemarker/core/Environment;->setVariable(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    .line 2812
    invoke-virtual {p0}, Lfreemarker/core/Environment;->isIcI2324OrLater()Z

    move-result p2

    if-eqz p2, :cond_40

    iget-object p2, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    iget-object v2, p0, Lfreemarker/core/Environment;->mainNamespace:Lfreemarker/core/Environment$Namespace;

    if-ne p2, v2, :cond_40

    .line 2813
    iget-object p2, p0, Lfreemarker/core/Environment;->globalNamespace:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {p2, p3, v1}, Lfreemarker/core/Environment$Namespace;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_40
    if-nez v0, :cond_74

    .line 2816
    instance-of p2, v1, Lfreemarker/core/Environment$LazilyInitializedNamespace;

    if-eqz p2, :cond_74

    .line 2817
    check-cast v1, Lfreemarker/core/Environment$LazilyInitializedNamespace;

    # invokes: Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedTME()V
    invoke-static {v1}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->access$400(Lfreemarker/core/Environment$LazilyInitializedNamespace;)V

    goto :goto_74

    :cond_4c
    if-eqz v0, :cond_55

    .line 2820
    new-instance v1, Lfreemarker/core/Environment$LazilyInitializedNamespace;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lfreemarker/core/Environment$LazilyInitializedNamespace;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;Lfreemarker/core/Environment$1;)V

    goto :goto_5a

    :cond_55
    new-instance v1, Lfreemarker/core/Environment$Namespace;

    invoke-direct {v1, p0, p2}, Lfreemarker/core/Environment$Namespace;-><init>(Lfreemarker/core/Environment;Lfreemarker/template/Template;)V

    .line 2822
    :goto_5a
    iget-object v2, p0, Lfreemarker/core/Environment;->loadedLibs:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_6f

    .line 2825
    invoke-virtual {p0, p3, v1}, Lfreemarker/core/Environment;->setVariable(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    .line 2826
    iget-object v2, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    iget-object v3, p0, Lfreemarker/core/Environment;->mainNamespace:Lfreemarker/core/Environment$Namespace;

    if-ne v2, v3, :cond_6f

    .line 2827
    iget-object v2, p0, Lfreemarker/core/Environment;->globalNamespace:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v2, p3, v1}, Lfreemarker/core/Environment$Namespace;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6f
    if-nez v0, :cond_74

    .line 2832
    invoke-direct {p0, v1, p2}, Lfreemarker/core/Environment;->initializeImportLibNamespace(Lfreemarker/core/Environment$Namespace;Lfreemarker/template/Template;)V

    .line 2835
    :cond_74
    :goto_74
    iget-object p2, p0, Lfreemarker/core/Environment;->loadedLibs:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/core/Environment$Namespace;

    return-object p1
.end method

.method private initializeImportLibNamespace(Lfreemarker/core/Environment$Namespace;Lfreemarker/template/Template;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2840
    iget-object v0, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    .line 2841
    iput-object p1, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    .line 2842
    iget-object p1, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    .line 2843
    sget-object v1, Lfreemarker/template/utility/NullWriter;->INSTANCE:Lfreemarker/template/utility/NullWriter;

    iput-object v1, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    .line 2845
    :try_start_a
    invoke-virtual {p0, p2}, Lfreemarker/core/Environment;->include(Lfreemarker/template/Template;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_12

    .line 2847
    iput-object p1, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    .line 2848
    iput-object v0, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    return-void

    :catchall_12
    move-exception p2

    .line 2847
    iput-object p1, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    .line 2848
    iput-object v0, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    .line 2849
    throw p2
.end method

.method static instructionStackItemToString(Lfreemarker/core/TemplateElement;)Ljava/lang/String;
    .registers 2

    .line 2314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2315
    invoke-static {p0, v0}, Lfreemarker/core/Environment;->appendInstructionStackItem(Lfreemarker/core/TemplateElement;Ljava/lang/StringBuilder;)V

    .line 2316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private invokeMacroOrFunctionCommonPart(Lfreemarker/core/Macro;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lfreemarker/core/TemplateObject;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/core/Macro;",
            "Ljava/util/Map;",
            "Ljava/util/List<",
            "+",
            "Lfreemarker/core/Expression;",
            ">;",
            "Ljava/util/List<",
            "Lfreemarker/core/Expression;",
            ">;",
            "Lfreemarker/core/TemplateObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    sget-object v0, Lfreemarker/core/Macro;->DO_NOTHING_MACRO:Lfreemarker/core/Macro;

    if-ne p1, v0, :cond_5

    return-void

    .line 843
    :cond_5
    iget-boolean v0, p0, Lfreemarker/core/Environment;->incompatibleImprovementsGE2328:Z

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 846
    invoke-direct {p0, p1}, Lfreemarker/core/Environment;->pushElement(Lfreemarker/core/TemplateElement;)V

    move v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 852
    :goto_10
    :try_start_10
    new-instance v2, Lfreemarker/core/Macro$Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p1, p0, p5, p4}, Lfreemarker/core/Macro$Context;-><init>(Lfreemarker/core/Macro;Lfreemarker/core/Environment;Lfreemarker/core/TemplateObject;Ljava/util/List;)V

    .line 854
    invoke-direct {p0, v2, p1, p2, p3}, Lfreemarker/core/Environment;->setMacroContextLocalsFromArguments(Lfreemarker/core/Macro$Context;Lfreemarker/core/Macro;Ljava/util/Map;Ljava/util/List;)V

    if-nez v0, :cond_21

    .line 857
    invoke-direct {p0, p1}, Lfreemarker/core/Environment;->pushElement(Lfreemarker/core/TemplateElement;)V
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_68

    goto :goto_22

    :cond_21
    move v1, v0

    .line 861
    :goto_22
    :try_start_22
    iget-object p2, p0, Lfreemarker/core/Environment;->currentMacroContext:Lfreemarker/core/Macro$Context;

    .line 862
    iput-object v2, p0, Lfreemarker/core/Environment;->currentMacroContext:Lfreemarker/core/Macro$Context;

    .line 864
    iget-object p3, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    const/4 p4, 0x0

    .line 865
    iput-object p4, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    .line 867
    iget-object p4, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    .line 868
    iget-object p5, p0, Lfreemarker/core/Environment;->macroToNamespaceLookup:Ljava/util/HashMap;

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lfreemarker/core/Environment$Namespace;

    iput-object p5, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_65

    .line 871
    :try_start_37
    invoke-virtual {v2, p0}, Lfreemarker/core/Macro$Context;->sanityCheck(Lfreemarker/core/Environment;)V

    .line 872
    invoke-virtual {p1}, Lfreemarker/core/Macro;->getChildBuffer()[Lfreemarker/core/TemplateElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->visit([Lfreemarker/core/TemplateElement;)V
    :try_end_41
    .catch Lfreemarker/core/ReturnInstruction$Return; {:try_start_37 .. :try_end_41} :catch_5a
    .catch Lfreemarker/template/TemplateException; {:try_start_37 .. :try_end_41} :catch_4a
    .catchall {:try_start_37 .. :try_end_41} :catchall_48

    .line 878
    :try_start_41
    iput-object p2, p0, Lfreemarker/core/Environment;->currentMacroContext:Lfreemarker/core/Macro$Context;

    .line 879
    iput-object p3, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    .line 880
    :goto_45
    iput-object p4, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_65

    goto :goto_5f

    :catchall_48
    move-exception p1

    goto :goto_53

    :catch_4a
    move-exception p1

    .line 876
    :try_start_4b
    invoke-direct {p0, p1}, Lfreemarker/core/Environment;->handleTemplateException(Lfreemarker/template/TemplateException;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_48

    .line 878
    :try_start_4e
    iput-object p2, p0, Lfreemarker/core/Environment;->currentMacroContext:Lfreemarker/core/Macro$Context;

    .line 879
    iput-object p3, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    goto :goto_45

    .line 878
    :goto_53
    iput-object p2, p0, Lfreemarker/core/Environment;->currentMacroContext:Lfreemarker/core/Macro$Context;

    .line 879
    iput-object p3, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    .line 880
    iput-object p4, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    .line 881
    throw p1

    .line 878
    :catch_5a
    iput-object p2, p0, Lfreemarker/core/Environment;->currentMacroContext:Lfreemarker/core/Macro$Context;

    .line 879
    iput-object p3, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;
    :try_end_5e
    .catchall {:try_start_4e .. :try_end_5e} :catchall_65

    goto :goto_45

    :goto_5f
    if-eqz v1, :cond_64

    .line 884
    invoke-direct {p0}, Lfreemarker/core/Environment;->popElement()V

    :cond_64
    return-void

    :catchall_65
    move-exception p1

    move v0, v1

    goto :goto_69

    :catchall_68
    move-exception p1

    :goto_69
    if-eqz v0, :cond_6e

    invoke-direct {p0}, Lfreemarker/core/Environment;->popElement()V

    .line 886
    :cond_6e
    throw p1
.end method

.method private isBeforeIcI2322()Z
    .registers 3

    .line 3236
    iget-object v0, p0, Lfreemarker/core/Environment;->configuration:Lfreemarker/template/Configuration;

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_22:I

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static isSQLDateOrTimeClass(Ljava/lang/Class;)Z
    .registers 2

    .line 1993
    const-class v0, Ljava/util/Date;

    if-eq p0, v0, :cond_22

    const-class v0, Ljava/sql/Date;

    if-eq p0, v0, :cond_20

    const-class v0, Ljava/sql/Time;

    if-eq p0, v0, :cond_20

    const-class v0, Ljava/sql/Timestamp;

    if-eq p0, v0, :cond_22

    const-class v0, Ljava/sql/Date;

    .line 1996
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_20

    const-class v0, Ljava/sql/Time;

    .line 1997
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_20
    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method private noNodeHandlerDefinedDescription(Lfreemarker/template/TemplateNodeModel;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-eqz p2, :cond_10

    .line 780
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 781
    const-string v0, " and namespace "

    goto :goto_d

    .line 783
    :cond_b
    const-string v0, " and no namespace"

    :goto_d
    move-object v3, p2

    move-object v2, v0

    goto :goto_14

    .line 787
    :cond_10
    const-string p2, ""

    move-object v2, p2

    move-object v3, v2

    .line 789
    :goto_14
    new-instance v1, Lfreemarker/core/_DelayedJQuote;

    .line 790
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string v4, ", and there is no fallback handler called @"

    const-string v6, " either."

    const-string v0, "No macro or directive is defined for node named "

    move-object v5, p3

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p0, :cond_e

    if-nez p1, :cond_9

    goto :goto_e

    .line 1118
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method static outputInstructionStack([Lfreemarker/core/TemplateElement;ZLjava/io/Writer;)V
    .registers 16

    .line 2211
    instance-of v0, p2, Ljava/io/PrintWriter;

    if-eqz v0, :cond_6

    move-object v0, p2

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    check-cast v0, Ljava/io/PrintWriter;

    move-object v1, v0

    check-cast v1, Ljava/io/PrintWriter;

    const/16 v1, 0xa

    if-eqz p0, :cond_c5

    .line 2214
    :try_start_10
    array-length v2, p0

    const/16 v3, 0x9

    if-eqz p1, :cond_1a

    if-gt v2, v1, :cond_18

    goto :goto_1a

    :cond_18
    move v4, v3

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v4, v2

    :goto_1b
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_23

    if-ge v4, v2, :cond_23

    move p1, v6

    goto :goto_24

    :cond_23
    move p1, v5

    :goto_24
    move v7, v5

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_28
    if-ge v7, v2, :cond_70

    .line 2225
    aget-object v11, p0, v7

    if-lez v7, :cond_32

    .line 2226
    instance-of v12, v11, Lfreemarker/core/BodyInstruction;

    if-nez v12, :cond_3c

    :cond_32
    if-le v7, v6, :cond_3e

    add-int/lit8 v12, v7, -0x1

    aget-object v12, p0, v12

    instance-of v12, v12, Lfreemarker/core/BodyInstruction;

    if-eqz v12, :cond_3e

    :cond_3c
    move v12, v6

    goto :goto_3f

    :cond_3e
    move v12, v5

    :goto_3f
    if-ge v10, v4, :cond_6b

    if-eqz v12, :cond_49

    if-nez p1, :cond_46

    goto :goto_49

    :cond_46
    add-int/lit8 v9, v9, 0x1

    goto :goto_6d

    :cond_49
    :goto_49
    if-nez v7, :cond_4e

    .line 2230
    const-string v12, "\t- Failed at: "

    goto :goto_55

    :cond_4e
    if-eqz v12, :cond_53

    const-string v12, "\t~ Reached through: "

    goto :goto_55

    :cond_53
    const-string v12, "\t- Reached through: "

    :goto_55
    invoke-virtual {p2, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2235
    invoke-static {v11}, Lfreemarker/core/Environment;->instructionStackItemToString(Lfreemarker/core/TemplateElement;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_65

    .line 2236
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_68

    .line 2238
    :cond_65
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    :goto_68
    add-int/lit8 v10, v10, 0x1

    goto :goto_6d

    :cond_6b
    add-int/lit8 v8, v8, 0x1

    :goto_6d
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_70
    if-lez v8, :cond_85

    .line 2250
    const-string p0, "\t... (Had "

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/2addr v8, v9

    .line 2251
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2252
    const-string p0, " more, hidden for tersenes)"

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v5, v6

    :cond_85
    if-lez v9, :cond_b8

    if-eqz v5, :cond_8f

    const/16 p0, 0x20

    .line 2257
    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(I)V

    goto :goto_92

    .line 2259
    :cond_8f
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    .line 2261
    :goto_92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "(Hidden "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " \"~\" lines for terseness)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_b4

    .line 2262
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_b9

    .line 2264
    :cond_b4
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_b9

    :cond_b8
    move v6, v5

    :goto_b9
    if-eqz v6, :cond_dc

    if-eqz v0, :cond_c1

    .line 2268
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_dc

    .line 2270
    :cond_c1
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_dc

    .line 2273
    :cond_c5
    const-string p0, "(The stack was empty)"

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_d0

    .line 2274
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_dc

    .line 2276
    :cond_d0
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_d3} :catch_d4

    goto :goto_dc

    :catch_d4
    move-exception p0

    .line 2279
    sget-object p1, Lfreemarker/core/Environment;->LOG:Lfreemarker/log/Logger;

    const-string p2, "Failed to print FTL stack trace"

    invoke-virtual {p1, p2, p0}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_dc
    :goto_dc
    return-void
.end method

.method private popElement()V
    .registers 2

    .line 2479
    iget v0, p0, Lfreemarker/core/Environment;->instructionStackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfreemarker/core/Environment;->instructionStackSize:I

    return-void
.end method

.method private pushElement(Lfreemarker/core/TemplateElement;)V
    .registers 7

    .line 2465
    iget v0, p0, Lfreemarker/core/Environment;->instructionStackSize:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lfreemarker/core/Environment;->instructionStackSize:I

    .line 2466
    iget-object v2, p0, Lfreemarker/core/Environment;->instructionStack:[Lfreemarker/core/TemplateElement;

    .line 2467
    array-length v3, v2

    if-le v1, v3, :cond_1d

    mul-int/lit8 v1, v1, 0x2

    .line 2468
    new-array v1, v1, [Lfreemarker/core/TemplateElement;

    const/4 v3, 0x0

    .line 2469
    :goto_10
    array-length v4, v2

    if-ge v3, v4, :cond_1a

    .line 2470
    aget-object v4, v2, v3

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2473
    :cond_1a
    iput-object v1, p0, Lfreemarker/core/Environment;->instructionStack:[Lfreemarker/core/TemplateElement;

    move-object v2, v1

    .line 2475
    :cond_1d
    aput-object p1, v2, v0

    return-void
.end method

.method private pushLocalContext(Lfreemarker/core/LocalContext;)V
    .registers 3

    .line 2343
    iget-object v0, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    if-nez v0, :cond_b

    .line 2344
    new-instance v0, Lfreemarker/core/LocalContextStack;

    invoke-direct {v0}, Lfreemarker/core/LocalContextStack;-><init>()V

    iput-object v0, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    .line 2346
    :cond_b
    iget-object v0, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    invoke-virtual {v0, p1}, Lfreemarker/core/LocalContextStack;->push(Lfreemarker/core/LocalContext;)V

    return-void
.end method

.method private replaceTopElement(Lfreemarker/core/TemplateElement;)Lfreemarker/core/TemplateElement;
    .registers 4

    .line 402
    iget-object v0, p0, Lfreemarker/core/Environment;->instructionStack:[Lfreemarker/core/TemplateElement;

    iget v1, p0, Lfreemarker/core/Environment;->instructionStackSize:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-object p1
.end method

.method static setCurrentEnvironment(Lfreemarker/core/Environment;)V
    .registers 2

    .line 198
    sget-object v0, Lfreemarker/core/Environment;->threadEnv:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private setMacroContextLocalsFromArguments(Lfreemarker/core/Macro$Context;Lfreemarker/core/Macro;Ljava/util/Map;Ljava/util/List;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/core/Macro$Context;",
            "Lfreemarker/core/Macro;",
            "Ljava/util/Map;",
            "Ljava/util/List<",
            "+",
            "Lfreemarker/core/Expression;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Lfreemarker/core/_MiscTemplateException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    .line 897
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/Macro;->getCatchAll()Ljava/lang/String;

    move-result-object v3

    .line 898
    const-string v4, "Function "

    const-string v5, "Macro "

    const/4 v6, 0x0

    if-eqz p3, :cond_7c

    if-eqz v3, :cond_1f

    .line 901
    new-instance v2, Lfreemarker/template/SimpleHash;

    move-object v7, v6

    check-cast v7, Lfreemarker/template/ObjectWrapper;

    invoke-direct {v2, v6}, Lfreemarker/template/SimpleHash;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 902
    invoke-virtual {v0, v3, v2}, Lfreemarker/core/Macro$Context;->setLocalVar(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    move-object v6, v2

    .line 907
    :cond_1f
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_eb

    .line 908
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 909
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v9, p2

    .line 910
    invoke-virtual {v9, v8}, Lfreemarker/core/Macro;->hasArgNamed(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_68

    if-eqz v3, :cond_44

    goto :goto_68

    .line 920
    :cond_44
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    .line 921
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/Macro;->isFunction()Z

    move-result v2

    if-eqz v2, :cond_4d

    goto :goto_4e

    :cond_4d
    move-object v4, v5

    :goto_4e
    new-instance v2, Lfreemarker/core/_DelayedJQuote;

    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/Macro;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {v3, v8}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string v5, "."

    const-string v6, " has no parameter with name "

    filled-new-array {v4, v2, v6, v3, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0

    .line 912
    :cond_68
    :goto_68
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfreemarker/core/Expression;

    .line 913
    invoke-virtual {v7, v1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v7

    if-eqz v10, :cond_78

    .line 915
    invoke-virtual {v0, v8, v7}, Lfreemarker/core/Macro$Context;->setLocalVar(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_27

    .line 917
    :cond_78
    invoke-virtual {v6, v8, v7}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_27

    :cond_7c
    move-object/from16 v9, p2

    if-eqz v2, :cond_eb

    if-eqz v3, :cond_8e

    .line 928
    new-instance v7, Lfreemarker/template/SimpleSequence;

    move-object v8, v6

    check-cast v8, Lfreemarker/template/ObjectWrapper;

    invoke-direct {v7, v6}, Lfreemarker/template/SimpleSequence;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 929
    invoke-virtual {v0, v3, v7}, Lfreemarker/core/Macro$Context;->setLocalVar(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    move-object v6, v7

    .line 934
    :cond_8e
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/Macro;->getArgumentNamesInternal()[Ljava/lang/String;

    move-result-object v7

    .line 935
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    .line 936
    array-length v10, v7

    if-ge v10, v8, :cond_c8

    if-nez v3, :cond_c8

    .line 937
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    .line 938
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/Macro;->isFunction()Z

    move-result v2

    if-eqz v2, :cond_a4

    goto :goto_a5

    :cond_a4
    move-object v4, v5

    :goto_a5
    new-instance v10, Lfreemarker/core/_DelayedJQuote;

    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/Macro;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    new-instance v12, Lfreemarker/core/_DelayedToString;

    array-length v2, v7

    invoke-direct {v12, v2}, Lfreemarker/core/_DelayedToString;-><init>(I)V

    new-instance v14, Lfreemarker/core/_DelayedToString;

    invoke-direct {v14, v8}, Lfreemarker/core/_DelayedToString;-><init>(I)V

    const-string v15, "."

    const-string v11, " only accepts "

    const-string v13, " parameters, but got "

    move-object v9, v4

    filled-new-array/range {v9 .. v15}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0

    :cond_c8
    const/4 v3, 0x0

    :goto_c9
    if-ge v3, v8, :cond_eb

    .line 943
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/core/Expression;

    .line 944
    invoke-virtual {v4, v1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v4

    .line 946
    :try_start_d5
    array-length v5, v7

    if-ge v3, v5, :cond_de

    .line 947
    aget-object v5, v7, v3

    .line 948
    invoke-virtual {v0, v5, v4}, Lfreemarker/core/Macro$Context;->setLocalVar(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_e1

    .line 950
    :cond_de
    invoke-virtual {v6, v4}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V
    :try_end_e1
    .catch Ljava/lang/RuntimeException; {:try_start_d5 .. :try_end_e1} :catch_e4

    :goto_e1
    add-int/lit8 v3, v3, 0x1

    goto :goto_c9

    :catch_e4
    move-exception v0

    .line 953
    new-instance v2, Lfreemarker/core/_MiscTemplateException;

    invoke-direct {v2, v0, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;)V

    throw v2

    :cond_eb
    return-void
.end method

.method private shouldUseSQLDTTimeZone(Z)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 1985
    invoke-virtual {p0}, Lfreemarker/core/Environment;->isSQLDateAndTimeTimeZoneSameAsNormal()Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method


# virtual methods
.method public __getitem__(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 2950
    invoke-static {}, Lfreemarker/ext/beans/BeansWrapper;->getDefaultInstance()Lfreemarker/ext/beans/BeansWrapper;

    move-result-object v0

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->getVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/BeansWrapper;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public __setitem__(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 2957
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    invoke-interface {v0, p2}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/Environment;->setGlobalVariable(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    return-void
.end method

.method public applyEqualsOperator(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1180
    invoke-static {p1, v0, p2, p0}, Lfreemarker/core/EvalUtil;->compare(Lfreemarker/template/TemplateModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Z

    move-result p1

    return p1
.end method

.method public applyEqualsOperatorLenient(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1192
    invoke-static {p1, v0, p2, p0}, Lfreemarker/core/EvalUtil;->compareLenient(Lfreemarker/template/TemplateModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Z

    move-result p1

    return p1
.end method

.method public applyGreaterThanOperator(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1222
    invoke-static {p1, v0, p2, p0}, Lfreemarker/core/EvalUtil;->compare(Lfreemarker/template/TemplateModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Z

    move-result p1

    return p1
.end method

.method public applyLessThanOperator(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1202
    invoke-static {p1, v0, p2, p0}, Lfreemarker/core/EvalUtil;->compare(Lfreemarker/template/TemplateModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Z

    move-result p1

    return p1
.end method

.method public applyLessThanOrEqualsOperator(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1212
    invoke-static {p1, v0, p2, p0}, Lfreemarker/core/EvalUtil;->compare(Lfreemarker/template/TemplateModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Z

    move-result p1

    return p1
.end method

.method public applyWithGreaterThanOrEqualsOperator(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 1232
    invoke-static {p1, v0, p2, p0}, Lfreemarker/core/EvalUtil;->compare(Lfreemarker/template/TemplateModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)Z

    move-result p1

    return p1
.end method

.method clearLastReturnValue()V
    .registers 2

    const/4 v0, 0x0

    .line 1534
    iput-object v0, p0, Lfreemarker/core/Environment;->lastReturnValue:Lfreemarker/template/TemplateModel;

    return-void
.end method

.method evaluateWithNewLocal(Lfreemarker/core/Expression;Ljava/lang/String;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 690
    new-instance v0, Lfreemarker/core/Environment$LocalContextWithNewLocal;

    invoke-direct {v0, p2, p3}, Lfreemarker/core/Environment$LocalContextWithNewLocal;-><init>(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    invoke-direct {p0, v0}, Lfreemarker/core/Environment;->pushLocalContext(Lfreemarker/core/LocalContext;)V

    .line 692
    :try_start_8
    invoke-virtual {p1, p0}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_12

    .line 694
    iget-object p2, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    invoke-virtual {p2}, Lfreemarker/core/LocalContextStack;->pop()V

    return-object p1

    :catchall_12
    move-exception p1

    iget-object p2, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    invoke-virtual {p2}, Lfreemarker/core/LocalContextStack;->pop()V

    .line 695
    throw p1
.end method

.method fallback()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 795
    iget-object v0, p0, Lfreemarker/core/Environment;->currentNodeName:Ljava/lang/String;

    iget-object v1, p0, Lfreemarker/core/Environment;->currentNodeNS:Ljava/lang/String;

    iget v2, p0, Lfreemarker/core/Environment;->nodeNamespaceIndex:I

    invoke-direct {p0, v0, v1, v2}, Lfreemarker/core/Environment;->getNodeProcessor(Ljava/lang/String;Ljava/lang/String;I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 796
    instance-of v1, v0, Lfreemarker/core/Macro;

    if-eqz v1, :cond_1a

    .line 797
    move-object v3, v0

    check-cast v3, Lfreemarker/core/Macro;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lfreemarker/core/Environment;->invokeMacro(Lfreemarker/core/Macro;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lfreemarker/core/TemplateObject;)V

    goto :goto_24

    .line 798
    :cond_1a
    instance-of v1, v0, Lfreemarker/template/TemplateTransformModel;

    if-eqz v1, :cond_24

    .line 799
    check-cast v0, Lfreemarker/template/TemplateTransformModel;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lfreemarker/core/Environment;->visitAndTransform([Lfreemarker/core/TemplateElement;Lfreemarker/template/TemplateTransformModel;Ljava/util/Map;)V

    :cond_24
    :goto_24
    return-void
.end method

.method findClosestEnclosingIterationContext()Lfreemarker/core/IteratorBlock$IterationContext;
    .registers 2

    const/4 v0, 0x0

    .line 666
    invoke-direct {p0, v0}, Lfreemarker/core/Environment;->findEnclosingIterationContext(Ljava/lang/String;)Lfreemarker/core/IteratorBlock$IterationContext;

    move-result-object v0

    return-object v0
.end method

.method findEnclosingIterationContextWithVisibleVariable(Ljava/lang/String;)Lfreemarker/core/IteratorBlock$IterationContext;
    .registers 2

    .line 659
    invoke-direct {p0, p1}, Lfreemarker/core/Environment;->findEnclosingIterationContext(Ljava/lang/String;)Lfreemarker/core/IteratorBlock$IterationContext;

    move-result-object p1

    return-object p1
.end method

.method formatDateToPlainText(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/Expression;Z)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1543
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/Environment;->getTemplateDateFormat(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/Expression;Z)Lfreemarker/core/TemplateDateFormat;

    move-result-object v0

    .line 1546
    :try_start_4
    invoke-virtual {v0, p1}, Lfreemarker/core/TemplateDateFormat;->formatToPlainText(Lfreemarker/template/TemplateDateModel;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/core/EvalUtil;->assertFormatResultNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Lfreemarker/core/TemplateValueFormatException; {:try_start_4 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1548
    invoke-static {v0, p2, p1, p3}, Lfreemarker/core/_MessageUtil;->newCantFormatDateException(Lfreemarker/core/TemplateDateFormat;Lfreemarker/core/Expression;Lfreemarker/core/TemplateValueFormatException;Z)Lfreemarker/template/TemplateException;

    move-result-object p1

    throw p1
.end method

.method formatDateToPlainText(Lfreemarker/template/TemplateDateModel;Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression;Z)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1561
    invoke-static {p1, p3}, Lfreemarker/core/EvalUtil;->modelToDate(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/Expression;)Ljava/util/Date;

    move-result-object v0

    .line 1564
    invoke-interface {p1}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 1563
    invoke-virtual/range {v1 .. v7}, Lfreemarker/core/Environment;->getTemplateDateFormat(Ljava/lang/String;ILjava/lang/Class;Lfreemarker/core/Expression;Lfreemarker/core/Expression;Z)Lfreemarker/core/TemplateDateFormat;

    move-result-object p2

    .line 1569
    :try_start_15
    invoke-virtual {p2, p1}, Lfreemarker/core/TemplateDateFormat;->formatToPlainText(Lfreemarker/template/TemplateDateModel;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/core/EvalUtil;->assertFormatResultNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catch Lfreemarker/core/TemplateValueFormatException; {:try_start_15 .. :try_end_1d} :catch_1e

    return-object p1

    :catch_1e
    move-exception p1

    .line 1571
    invoke-static {p2, p3, p1, p5}, Lfreemarker/core/_MessageUtil;->newCantFormatDateException(Lfreemarker/core/TemplateDateFormat;Lfreemarker/core/Expression;Lfreemarker/core/TemplateValueFormatException;Z)Lfreemarker/template/TemplateException;

    move-result-object p1

    throw p1
.end method

.method formatNumberToPlainText(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/Expression;Z)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1257
    invoke-virtual {p0, p2, p3}, Lfreemarker/core/Environment;->getTemplateNumberFormat(Lfreemarker/core/Expression;Z)Lfreemarker/core/TemplateNumberFormat;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lfreemarker/core/Environment;->formatNumberToPlainText(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/TemplateNumberFormat;Lfreemarker/core/Expression;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method formatNumberToPlainText(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/TemplateNumberFormat;Lfreemarker/core/Expression;Z)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1271
    :try_start_0
    invoke-virtual {p2, p1}, Lfreemarker/core/TemplateNumberFormat;->formatToPlainText(Lfreemarker/template/TemplateNumberModel;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/core/EvalUtil;->assertFormatResultNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Lfreemarker/core/TemplateValueFormatException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    .line 1273
    invoke-static {p2, p3, p1, p4}, Lfreemarker/core/_MessageUtil;->newCantFormatNumberException(Lfreemarker/core/TemplateNumberFormat;Lfreemarker/core/Expression;Lfreemarker/core/TemplateValueFormatException;Z)Lfreemarker/template/TemplateException;

    move-result-object p1

    throw p1
.end method

.method formatNumberToPlainText(Ljava/lang/Number;Lfreemarker/core/BackwardCompatibleTemplateNumberFormat;Lfreemarker/core/Expression;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Lfreemarker/core/_MiscTemplateException;
        }
    .end annotation

    .line 1286
    :try_start_0
    invoke-virtual {p2, p1}, Lfreemarker/core/BackwardCompatibleTemplateNumberFormat;->format(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Lfreemarker/core/UnformattableValueException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    .line 1288
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    new-instance v1, Lfreemarker/core/_DelayedJQuote;

    .line 1289
    invoke-virtual {p2}, Lfreemarker/core/BackwardCompatibleTemplateNumberFormat;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string p2, ": "

    .line 1290
    invoke-virtual {p1}, Lfreemarker/core/UnformattableValueException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to format number with "

    filled-new-array {v3, v1, p2, v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, p3, p1, p0, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;Ljava/lang/Throwable;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getCNumberFormat()Ljava/text/NumberFormat;
    .registers 2

    .line 1476
    iget-object v0, p0, Lfreemarker/core/Environment;->cNumberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_e

    .line 1477
    sget-object v0, Lfreemarker/core/Environment;->C_NUMBER_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    iput-object v0, p0, Lfreemarker/core/Environment;->cNumberFormat:Ljava/text/NumberFormat;

    .line 1479
    :cond_e
    iget-object v0, p0, Lfreemarker/core/Environment;->cNumberFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method getCollator()Ljava/text/Collator;
    .registers 2

    .line 1167
    iget-object v0, p0, Lfreemarker/core/Environment;->cachedCollator:Ljava/text/Collator;

    if-nez v0, :cond_e

    .line 1168
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Environment;->cachedCollator:Ljava/text/Collator;

    .line 1170
    :cond_e
    iget-object v0, p0, Lfreemarker/core/Environment;->cachedCollator:Ljava/text/Collator;

    return-object v0
.end method

.method public getConfiguration()Lfreemarker/template/Configuration;
    .registers 2

    .line 1522
    iget-object v0, p0, Lfreemarker/core/Environment;->configuration:Lfreemarker/template/Configuration;

    return-object v0
.end method

.method public getCurrentDirectiveCallPlace()Lfreemarker/core/DirectiveCallPlace;
    .registers 6

    .line 274
    iget v0, p0, Lfreemarker/core/Environment;->instructionStackSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 276
    :cond_6
    iget-object v2, p0, Lfreemarker/core/Environment;->instructionStack:[Lfreemarker/core/TemplateElement;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, v2, v3

    .line 277
    instance-of v4, v3, Lfreemarker/core/UnifiedCall;

    if-eqz v4, :cond_13

    check-cast v3, Lfreemarker/core/UnifiedCall;

    return-object v3

    .line 278
    :cond_13
    instance-of v3, v3, Lfreemarker/core/Macro;

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    if-le v0, v3, :cond_25

    add-int/lit8 v0, v0, -0x2

    aget-object v0, v2, v0

    instance-of v2, v0, Lfreemarker/core/UnifiedCall;

    if-eqz v2, :cond_25

    .line 279
    check-cast v0, Lfreemarker/core/UnifiedCall;

    return-object v0

    :cond_25
    return-object v1
.end method

.method getCurrentMacroContext()Lfreemarker/core/Macro$Context;
    .registers 2

    .line 994
    iget-object v0, p0, Lfreemarker/core/Environment;->currentMacroContext:Lfreemarker/core/Macro$Context;

    return-object v0
.end method

.method public getCurrentNamespace()Lfreemarker/core/Environment$Namespace;
    .registers 2

    .line 2385
    iget-object v0, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    return-object v0
.end method

.method getCurrentRecoveredErrorMessage()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lfreemarker/core/Environment;->recoveredErrorStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 578
    iget-object v0, p0, Lfreemarker/core/Environment;->recoveredErrorStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 576
    :cond_1b
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    const-string v1, ".error is not available outside of a #recover block"

    invoke-direct {v0, p0, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentTemplate()Lfreemarker/template/Template;
    .registers 3

    .line 260
    iget v0, p0, Lfreemarker/core/Environment;->instructionStackSize:I

    if-nez v0, :cond_9

    .line 261
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getMainTemplate()Lfreemarker/template/Template;

    move-result-object v0

    goto :goto_13

    :cond_9
    iget-object v1, p0, Lfreemarker/core/Environment;->instructionStack:[Lfreemarker/core/TemplateElement;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lfreemarker/core/TemplateElement;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method public getCurrentVisitorNode()Lfreemarker/template/TemplateNodeModel;
    .registers 2

    .line 2487
    iget-object v0, p0, Lfreemarker/core/Environment;->currentVisitorNode:Lfreemarker/template/TemplateNodeModel;

    return-object v0
.end method

.method public getCustomState(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 2969
    iget-object v0, p0, Lfreemarker/core/Environment;->customStateVariables:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 2972
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDataModel()Lfreemarker/template/TemplateHashModel;
    .registers 2

    .line 2401
    iget-object v0, p0, Lfreemarker/core/Environment;->rootDataModel:Lfreemarker/template/TemplateHashModel;

    instance-of v0, v0, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v0, :cond_c

    new-instance v0, Lfreemarker/core/Environment$2;

    invoke-direct {v0, p0}, Lfreemarker/core/Environment$2;-><init>(Lfreemarker/core/Environment;)V

    goto :goto_11

    :cond_c
    new-instance v0, Lfreemarker/core/Environment$3;

    invoke-direct {v0, p0}, Lfreemarker/core/Environment$3;-><init>(Lfreemarker/core/Environment;)V

    :goto_11
    return-object v0
.end method

.method public getDefaultNS()Ljava/lang/String;
    .registers 2

    .line 2943
    iget-object v0, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v0}, Lfreemarker/core/Environment$Namespace;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Template;->getDefaultNS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getEffectiveURLEscapingCharset()Ljava/lang/String;
    .registers 2

    .line 1156
    iget-boolean v0, p0, Lfreemarker/core/Environment;->cachedURLEscapingCharsetSet:Z

    if-nez v0, :cond_15

    .line 1157
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getURLEscapingCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Environment;->cachedURLEscapingCharset:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 1159
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getOutputEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Environment;->cachedURLEscapingCharset:Ljava/lang/String;

    :cond_12
    const/4 v0, 0x1

    .line 1161
    iput-boolean v0, p0, Lfreemarker/core/Environment;->cachedURLEscapingCharsetSet:Z

    .line 1163
    :cond_15
    iget-object v0, p0, Lfreemarker/core/Environment;->cachedURLEscapingCharset:Ljava/lang/String;

    return-object v0
.end method

.method getFastInvalidReferenceExceptions()Z
    .registers 2

    .line 3247
    iget-boolean v0, p0, Lfreemarker/core/Environment;->fastInvalidReferenceExceptions:Z

    return v0
.end method

.method public getGlobalNamespace()Lfreemarker/core/Environment$Namespace;
    .registers 2

    .line 2393
    iget-object v0, p0, Lfreemarker/core/Environment;->globalNamespace:Lfreemarker/core/Environment$Namespace;

    return-object v0
.end method

.method public getGlobalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 2100
    iget-object v0, p0, Lfreemarker/core/Environment;->globalNamespace:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v0, p1}, Lfreemarker/core/Environment$Namespace;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-nez v0, :cond_e

    .line 2102
    iget-object v0, p0, Lfreemarker/core/Environment;->rootDataModel:Lfreemarker/template/TemplateHashModel;

    invoke-interface {v0, p1}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    :cond_e
    if-nez v0, :cond_16

    .line 2105
    iget-object v0, p0, Lfreemarker/core/Environment;->configuration:Lfreemarker/template/Configuration;

    invoke-virtual {v0, p1}, Lfreemarker/template/Configuration;->getSharedVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    :cond_16
    return-object v0
.end method

.method public getGlobalVariables()Lfreemarker/template/TemplateHashModel;
    .registers 2

    .line 2445
    new-instance v0, Lfreemarker/core/Environment$4;

    invoke-direct {v0, p0}, Lfreemarker/core/Environment$4;-><init>(Lfreemarker/core/Environment;)V

    return-object v0
.end method

.method getISOBuiltInCalendarFactory()Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;
    .registers 2

    .line 2014
    iget-object v0, p0, Lfreemarker/core/Environment;->isoBuiltInCalendarFactory:Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;

    if-nez v0, :cond_b

    .line 2015
    new-instance v0, Lfreemarker/template/utility/DateUtil$TrivialDateToISO8601CalendarFactory;

    invoke-direct {v0}, Lfreemarker/template/utility/DateUtil$TrivialDateToISO8601CalendarFactory;-><init>()V

    iput-object v0, p0, Lfreemarker/core/Environment;->isoBuiltInCalendarFactory:Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;

    .line 2017
    :cond_b
    iget-object v0, p0, Lfreemarker/core/Environment;->isoBuiltInCalendarFactory:Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;

    return-object v0
.end method

.method getInstructionStackSnapshot()[Lfreemarker/core/TemplateElement;
    .registers 7

    .line 2290
    iget v0, p0, Lfreemarker/core/Environment;->instructionStackSize:I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_5
    if-ge v2, v0, :cond_1a

    .line 2293
    iget-object v4, p0, Lfreemarker/core/Environment;->instructionStack:[Lfreemarker/core/TemplateElement;

    aget-object v4, v4, v2

    add-int/lit8 v5, v0, -0x1

    if-eq v2, v5, :cond_15

    .line 2294
    invoke-virtual {v4}, Lfreemarker/core/TemplateElement;->isShownInStackTrace()Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_15
    add-int/lit8 v3, v3, 0x1

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1a
    if-nez v3, :cond_1e

    const/4 v0, 0x0

    return-object v0

    .line 2301
    :cond_1e
    new-array v2, v3, [Lfreemarker/core/TemplateElement;

    add-int/lit8 v3, v3, -0x1

    :goto_22
    if-ge v1, v0, :cond_3a

    .line 2304
    iget-object v4, p0, Lfreemarker/core/Environment;->instructionStack:[Lfreemarker/core/TemplateElement;

    aget-object v4, v4, v1

    add-int/lit8 v5, v0, -0x1

    if-eq v1, v5, :cond_32

    .line 2305
    invoke-virtual {v4}, Lfreemarker/core/TemplateElement;->isShownInStackTrace()Z

    move-result v5

    if-eqz v5, :cond_37

    :cond_32
    add-int/lit8 v5, v3, -0x1

    .line 2306
    aput-object v4, v2, v3

    move v3, v5

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_3a
    return-object v2
.end method

.method public getKnownVariableNames()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 2157
    iget-object v0, p0, Lfreemarker/core/Environment;->configuration:Lfreemarker/template/Configuration;

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getSharedVariableNames()Ljava/util/Set;

    move-result-object v0

    .line 2160
    iget-object v1, p0, Lfreemarker/core/Environment;->rootDataModel:Lfreemarker/template/TemplateHashModel;

    instance-of v2, v1, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v2, :cond_2a

    .line 2161
    check-cast v1, Lfreemarker/template/TemplateHashModelEx;

    invoke-interface {v1}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v1

    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    .line 2162
    :goto_16
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2163
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    check-cast v2, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v2}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 2168
    :cond_2a
    iget-object v1, p0, Lfreemarker/core/Environment;->globalNamespace:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v1}, Lfreemarker/core/Environment$Namespace;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v1

    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2169
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    check-cast v2, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v2}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 2173
    :cond_48
    iget-object v1, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v1}, Lfreemarker/core/Environment$Namespace;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v1

    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 2174
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    check-cast v2, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v2}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 2178
    :cond_66
    iget-object v1, p0, Lfreemarker/core/Environment;->currentMacroContext:Lfreemarker/core/Macro$Context;

    if-eqz v1, :cond_71

    .line 2179
    invoke-virtual {v1}, Lfreemarker/core/Macro$Context;->getLocalVariableNames()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2181
    :cond_71
    iget-object v1, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    if-eqz v1, :cond_8d

    .line 2182
    invoke-virtual {v1}, Lfreemarker/core/LocalContextStack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7b
    if-ltz v1, :cond_8d

    .line 2183
    iget-object v2, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    invoke-virtual {v2, v1}, Lfreemarker/core/LocalContextStack;->get(I)Lfreemarker/core/LocalContext;

    move-result-object v2

    .line 2184
    invoke-interface {v2}, Lfreemarker/core/LocalContext;->getLocalVariableNames()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_7b

    :cond_8d
    return-object v0
.end method

.method getLastReturnValue()Lfreemarker/template/TemplateModel;
    .registers 2

    .line 1526
    iget-object v0, p0, Lfreemarker/core/Environment;->lastReturnValue:Lfreemarker/template/TemplateModel;

    return-object v0
.end method

.method getLocalContextStack()Lfreemarker/core/LocalContextStack;
    .registers 2

    .line 2350
    iget-object v0, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    return-object v0
.end method

.method public getLocalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 2040
    invoke-direct {p0, p1}, Lfreemarker/core/Environment;->getNullableLocalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    .line 2041
    sget-object v0, Lfreemarker/core/NullTemplateModel;->INSTANCE:Lfreemarker/core/NullTemplateModel;

    if-eq p1, v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return-object p1
.end method

.method getMacroNamespace(Lfreemarker/core/Macro;)Lfreemarker/core/Environment$Namespace;
    .registers 3

    .line 968
    iget-object v0, p0, Lfreemarker/core/Environment;->macroToNamespaceLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/core/Environment$Namespace;

    return-object p1
.end method

.method public getMainNamespace()Lfreemarker/core/Environment$Namespace;
    .registers 2

    .line 2374
    iget-object v0, p0, Lfreemarker/core/Environment;->mainNamespace:Lfreemarker/core/Environment$Namespace;

    return-object v0
.end method

.method public getMainTemplate()Lfreemarker/template/Template;
    .registers 2

    .line 243
    iget-object v0, p0, Lfreemarker/core/Environment;->mainNamespace:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v0}, Lfreemarker/core/Environment$Namespace;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Lfreemarker/core/Environment$Namespace;
    .registers 3

    .line 2362
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2363
    :cond_d
    iget-object v0, p0, Lfreemarker/core/Environment;->loadedLibs:Ljava/util/HashMap;

    if-eqz v0, :cond_18

    .line 2364
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/core/Environment$Namespace;

    return-object p1

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2932
    iget-object v0, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v0}, Lfreemarker/core/Environment$Namespace;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfreemarker/template/Template;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeProcessor(Lfreemarker/template/TemplateNodeModel;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 2498
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 2502
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getNodeNamespace()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lfreemarker/core/Environment;->getNodeProcessor(Ljava/lang/String;Ljava/lang/String;I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 2505
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getNodeType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_19

    .line 2509
    const-string p1, "default"

    .line 2511
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lfreemarker/core/Environment;->getNodeProcessor(Ljava/lang/String;Ljava/lang/String;I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    :cond_2d
    return-object v0

    .line 2500
    :cond_2e
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    const-string v0, "Node name is null."

    invoke-direct {p1, p0, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw p1
.end method

.method public getOut()Ljava/io/Writer;
    .registers 2

    .line 1240
    iget-object v0, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    return-object v0
.end method

.method public getPrefixForNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2936
    iget-object v0, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v0}, Lfreemarker/core/Environment$Namespace;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfreemarker/template/Template;->getPrefixForNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTemplate()Lfreemarker/template/Template;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getParent()Lfreemarker/core/Configurable;

    move-result-object v0

    check-cast v0, Lfreemarker/template/Template;

    return-object v0
.end method

.method getTemplate230()Lfreemarker/template/Template;
    .registers 2

    .line 229
    iget-object v0, p0, Lfreemarker/core/Environment;->legacyParent:Lfreemarker/core/Configurable;

    check-cast v0, Lfreemarker/template/Template;

    if-eqz v0, :cond_7

    goto :goto_b

    .line 230
    :cond_7
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getTemplateDateFormat(ILjava/lang/Class;)Lfreemarker/core/TemplateDateFormat;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;)",
            "Lfreemarker/core/TemplateDateFormat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation

    .line 1589
    invoke-static {p2}, Lfreemarker/core/Environment;->isSQLDateOrTimeClass(Ljava/lang/Class;)Z

    move-result p2

    .line 1590
    invoke-direct {p0, p2}, Lfreemarker/core/Environment;->shouldUseSQLDTTimeZone(Z)Z

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lfreemarker/core/Environment;->getTemplateDateFormat(IZZ)Lfreemarker/core/TemplateDateFormat;

    move-result-object p1

    return-object p1
.end method

.method getTemplateDateFormat(ILjava/lang/Class;Lfreemarker/core/Expression;Z)Lfreemarker/core/TemplateDateFormat;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;",
            "Lfreemarker/core/Expression;",
            "Z)",
            "Lfreemarker/core/TemplateDateFormat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1756
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/Environment;->getTemplateDateFormat(ILjava/lang/Class;)Lfreemarker/core/TemplateDateFormat;

    move-result-object p1
    :try_end_4
    .catch Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException; {:try_start_0 .. :try_end_4} :catch_56
    .catch Lfreemarker/core/TemplateValueFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_21

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1a

    const/4 p3, 0x3

    if-eq p1, p3, :cond_13

    .line 1777
    const-string p1, "???"

    move-object v1, p1

    goto :goto_28

    .line 1773
    :cond_13
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getDateTimeFormat()Ljava/lang/String;

    move-result-object p1

    .line 1774
    const-string p3, "datetime_format"

    goto :goto_27

    .line 1769
    :cond_1a
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getDateFormat()Ljava/lang/String;

    move-result-object p1

    .line 1770
    const-string p3, "date_format"

    goto :goto_27

    .line 1765
    :cond_21
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getTimeFormat()Ljava/lang/String;

    move-result-object p1

    .line 1766
    const-string p3, "time_format"

    :goto_27
    move-object v1, p3

    .line 1780
    :goto_28
    new-instance p3, Lfreemarker/core/_ErrorDescriptionBuilder;

    new-instance v3, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {v3, p1}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string v4, ". Reason given: "

    .line 1784
    invoke-virtual {p2}, Lfreemarker/core/TemplateValueFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v0, "The value of the \""

    const-string v2, "\" FreeMarker configuration setting is a malformed date/time/datetime format string: "

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p3, p1}, Lfreemarker/core/_ErrorDescriptionBuilder;-><init>([Ljava/lang/Object;)V

    if-eqz p4, :cond_4c

    .line 1785
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_55

    :cond_4c
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_55
    throw p1

    :catch_56
    move-exception p1

    .line 1758
    invoke-static {p3, p1}, Lfreemarker/core/_MessageUtil;->newCantFormatUnknownTypeDateException(Lfreemarker/core/Expression;Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;)Lfreemarker/core/_TemplateModelException;

    move-result-object p1

    throw p1
.end method

.method getTemplateDateFormat(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/Expression;Z)Lfreemarker/core/TemplateDateFormat;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1741
    invoke-static {p1, p2}, Lfreemarker/core/EvalUtil;->modelToDate(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/Expression;)Ljava/util/Date;

    move-result-object v0

    .line 1744
    invoke-interface {p1}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1743
    invoke-virtual {p0, p1, v0, p2, p3}, Lfreemarker/core/Environment;->getTemplateDateFormat(ILjava/lang/Class;Lfreemarker/core/Expression;Z)Lfreemarker/core/TemplateDateFormat;

    move-result-object p1

    return-object p1
.end method

.method public getTemplateDateFormat(Ljava/lang/String;ILjava/lang/Class;)Lfreemarker/core/TemplateDateFormat;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;)",
            "Lfreemarker/core/TemplateDateFormat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation

    .line 1612
    invoke-static {p3}, Lfreemarker/core/Environment;->isSQLDateOrTimeClass(Ljava/lang/Class;)Z

    move-result v4

    .line 1615
    invoke-direct {p0, v4}, Lfreemarker/core/Environment;->shouldUseSQLDTTimeZone(Z)Z

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 1613
    invoke-direct/range {v0 .. v5}, Lfreemarker/core/Environment;->getTemplateDateFormat(Ljava/lang/String;IZZZ)Lfreemarker/core/TemplateDateFormat;

    move-result-object p1

    return-object p1
.end method

.method getTemplateDateFormat(Ljava/lang/String;ILjava/lang/Class;Lfreemarker/core/Expression;Lfreemarker/core/Expression;Z)Lfreemarker/core/TemplateDateFormat;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;",
            "Lfreemarker/core/Expression;",
            "Lfreemarker/core/Expression;",
            "Z)",
            "Lfreemarker/core/TemplateDateFormat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1799
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/Environment;->getTemplateDateFormat(Ljava/lang/String;ILjava/lang/Class;)Lfreemarker/core/TemplateDateFormat;

    move-result-object p1
    :try_end_4
    .catch Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException; {:try_start_0 .. :try_end_4} :catch_36
    .catch Lfreemarker/core/TemplateValueFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p2

    .line 1803
    new-instance p3, Lfreemarker/core/_ErrorDescriptionBuilder;

    new-instance p4, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {p4, p1}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string p1, ". Reason given: "

    .line 1806
    invoke-virtual {p2}, Lfreemarker/core/TemplateValueFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can\'t create date/time/datetime format based on format string "

    filled-new-array {v1, p4, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p3, p1}, Lfreemarker/core/_ErrorDescriptionBuilder;-><init>([Ljava/lang/Object;)V

    .line 1807
    invoke-virtual {p3, p5}, Lfreemarker/core/_ErrorDescriptionBuilder;->blame(Lfreemarker/core/Expression;)Lfreemarker/core/_ErrorDescriptionBuilder;

    move-result-object p1

    if-eqz p6, :cond_2c

    .line 1808
    new-instance p3, Lfreemarker/core/_TemplateModelException;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_35

    :cond_2c
    new-instance p3, Lfreemarker/core/_MiscTemplateException;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_35
    throw p3

    :catch_36
    move-exception p1

    .line 1801
    invoke-static {p4, p1}, Lfreemarker/core/_MessageUtil;->newCantFormatUnknownTypeDateException(Lfreemarker/core/Expression;Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;)Lfreemarker/core/_TemplateModelException;

    move-result-object p1

    throw p1
.end method

.method public getTemplateDateFormat(Ljava/lang/String;ILjava/lang/Class;Ljava/util/Locale;)Lfreemarker/core/TemplateDateFormat;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Lfreemarker/core/TemplateDateFormat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation

    .line 1640
    invoke-static {p3}, Lfreemarker/core/Environment;->isSQLDateOrTimeClass(Ljava/lang/Class;)Z

    move-result v5

    .line 1641
    invoke-direct {p0, v5}, Lfreemarker/core/Environment;->shouldUseSQLDTTimeZone(Z)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 1644
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getSQLDateAndTimeTimeZone()Ljava/util/TimeZone;

    move-result-object p3

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p3

    :goto_13
    move-object v4, p3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    .line 1642
    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/Environment;->getTemplateDateFormat(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;Z)Lfreemarker/core/TemplateDateFormat;

    move-result-object p1

    return-object p1
.end method

.method public getTemplateDateFormat(Ljava/lang/String;ILjava/lang/Class;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/TimeZone;)Lfreemarker/core/TemplateDateFormat;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/util/TimeZone;",
            "Ljava/util/TimeZone;",
            ")",
            "Lfreemarker/core/TemplateDateFormat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation

    .line 1672
    invoke-static {p3}, Lfreemarker/core/Environment;->isSQLDateOrTimeClass(Ljava/lang/Class;)Z

    move-result v5

    .line 1673
    invoke-direct {p0, v5}, Lfreemarker/core/Environment;->shouldUseSQLDTTimeZone(Z)Z

    move-result p3

    if-eqz p3, :cond_c

    move-object v4, p6

    goto :goto_d

    :cond_c
    move-object v4, p5

    :goto_d
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    .line 1674
    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/Environment;->getTemplateDateFormat(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;Z)Lfreemarker/core/TemplateDateFormat;

    move-result-object p1

    return-object p1
.end method

.method public getTemplateDateFormat(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;Z)Lfreemarker/core/TemplateDateFormat;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation

    .line 1717
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 1718
    invoke-virtual {p3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1720
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1721
    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_19

    move v0, v3

    goto :goto_26

    .line 1724
    :cond_19
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getSQLDateAndTimeTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1725
    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    if-eqz v0, :cond_37

    if-ne v0, v1, :cond_2c

    move v7, v3

    goto :goto_2d

    :cond_2c
    move v7, v2

    :goto_2d
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v8, p5

    .line 1732
    invoke-direct/range {v4 .. v9}, Lfreemarker/core/Environment;->getTemplateDateFormat(Ljava/lang/String;IZZZ)Lfreemarker/core/TemplateDateFormat;

    move-result-object p1

    return-object p1

    .line 1736
    :cond_37
    invoke-direct/range {p0 .. p5}, Lfreemarker/core/Environment;->getTemplateDateFormatWithoutCache(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;Z)Lfreemarker/core/TemplateDateFormat;

    move-result-object p1

    return-object p1
.end method

.method public getTemplateForImporting(Ljava/lang/String;)Lfreemarker/template/Template;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2776
    invoke-virtual {p0, p1, v0, v1}, Lfreemarker/core/Environment;->getTemplateForInclusion(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/template/Template;

    move-result-object p1

    return-object p1
.end method

.method public getTemplateForInclusion(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/template/Template;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2614
    invoke-virtual {p0, p1, p2, p3, v0}, Lfreemarker/core/Environment;->getTemplateForInclusion(Ljava/lang/String;Ljava/lang/String;ZZ)Lfreemarker/template/Template;

    move-result-object p1

    return-object p1
.end method

.method public getTemplateForInclusion(Ljava/lang/String;Ljava/lang/String;ZZ)Lfreemarker/template/Template;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2652
    iget-object v0, p0, Lfreemarker/core/Environment;->configuration:Lfreemarker/template/Configuration;

    .line 2653
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0}, Lfreemarker/core/Environment;->getIncludedTemplateCustomLookupCondition()Ljava/lang/Object;

    move-result-object v3

    if-eqz p2, :cond_d

    goto :goto_11

    .line 2654
    :cond_d
    invoke-direct {p0}, Lfreemarker/core/Environment;->getIncludedTemplateEncoding()Ljava/lang/String;

    move-result-object p2

    :goto_11
    move-object v4, p2

    move-object v1, p1

    move v5, p3

    move v6, p4

    .line 2652
    invoke-virtual/range {v0 .. v6}, Lfreemarker/template/Configuration;->getTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/Template;

    move-result-object p1

    return-object p1
.end method

.method public getTemplateNumberFormat()Lfreemarker/core/TemplateNumberFormat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation

    .line 1306
    iget-object v0, p0, Lfreemarker/core/Environment;->cachedTemplateNumberFormat:Lfreemarker/core/TemplateNumberFormat;

    if-nez v0, :cond_f

    .line 1308
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getNumberFormat()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lfreemarker/core/Environment;->getTemplateNumberFormat(Ljava/lang/String;Z)Lfreemarker/core/TemplateNumberFormat;

    move-result-object v0

    .line 1309
    iput-object v0, p0, Lfreemarker/core/Environment;->cachedTemplateNumberFormat:Lfreemarker/core/TemplateNumberFormat;

    :cond_f
    return-object v0
.end method

.method getTemplateNumberFormat(Lfreemarker/core/Expression;Z)Lfreemarker/core/TemplateNumberFormat;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1363
    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getTemplateNumberFormat()Lfreemarker/core/TemplateNumberFormat;

    move-result-object p1
    :try_end_4
    .catch Lfreemarker/core/TemplateValueFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception v0

    .line 1365
    new-instance v1, Lfreemarker/core/_ErrorDescriptionBuilder;

    new-instance v2, Lfreemarker/core/_DelayedJQuote;

    .line 1367
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getNumberFormat()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string v3, ": "

    invoke-virtual {v0}, Lfreemarker/core/TemplateValueFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to get number format object for the current number format string, "

    filled-new-array {v5, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lfreemarker/core/_ErrorDescriptionBuilder;-><init>([Ljava/lang/Object;)V

    .line 1368
    invoke-virtual {v1, p1}, Lfreemarker/core/_ErrorDescriptionBuilder;->blame(Lfreemarker/core/Expression;)Lfreemarker/core/_ErrorDescriptionBuilder;

    move-result-object p1

    if-eqz p2, :cond_2c

    .line 1369
    new-instance p2, Lfreemarker/core/_TemplateModelException;

    invoke-direct {p2, v0, p0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/_ErrorDescriptionBuilder;)V

    goto :goto_31

    :cond_2c
    new-instance p2, Lfreemarker/core/_MiscTemplateException;

    invoke-direct {p2, v0, p0, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/_ErrorDescriptionBuilder;)V

    :goto_31
    throw p2
.end method

.method public getTemplateNumberFormat(Ljava/lang/String;)Lfreemarker/core/TemplateNumberFormat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1327
    invoke-direct {p0, p1, v0}, Lfreemarker/core/Environment;->getTemplateNumberFormat(Ljava/lang/String;Z)Lfreemarker/core/TemplateNumberFormat;

    move-result-object p1

    return-object p1
.end method

.method getTemplateNumberFormat(Ljava/lang/String;Lfreemarker/core/Expression;Z)Lfreemarker/core/TemplateNumberFormat;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1385
    :try_start_0
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->getTemplateNumberFormat(Ljava/lang/String;)Lfreemarker/core/TemplateNumberFormat;

    move-result-object p1
    :try_end_4
    .catch Lfreemarker/core/TemplateValueFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception v0

    .line 1387
    new-instance v1, Lfreemarker/core/_ErrorDescriptionBuilder;

    new-instance v2, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {v2, p1}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string p1, " number format string: "

    .line 1389
    invoke-virtual {v0}, Lfreemarker/core/TemplateValueFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to get number format object for the "

    filled-new-array {v4, v2, p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p1}, Lfreemarker/core/_ErrorDescriptionBuilder;-><init>([Ljava/lang/Object;)V

    .line 1390
    invoke-virtual {v1, p2}, Lfreemarker/core/_ErrorDescriptionBuilder;->blame(Lfreemarker/core/Expression;)Lfreemarker/core/_ErrorDescriptionBuilder;

    move-result-object p1

    if-eqz p3, :cond_28

    .line 1391
    new-instance p2, Lfreemarker/core/_TemplateModelException;

    invoke-direct {p2, v0, p0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/_ErrorDescriptionBuilder;)V

    goto :goto_2d

    :cond_28
    new-instance p2, Lfreemarker/core/_MiscTemplateException;

    invoke-direct {p2, v0, p0, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/_ErrorDescriptionBuilder;)V

    :goto_2d
    throw p2
.end method

.method public getTemplateNumberFormat(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/core/TemplateNumberFormat;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation

    .line 1350
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1351
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->getTemplateNumberFormat(Ljava/lang/String;)Lfreemarker/core/TemplateNumberFormat;

    .line 1354
    :cond_d
    invoke-direct {p0, p1, p2}, Lfreemarker/core/Environment;->getTemplateNumberFormatWithoutCache(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/core/TemplateNumberFormat;

    move-result-object p1

    return-object p1
.end method

.method getTransform(Lfreemarker/core/Expression;)Lfreemarker/template/TemplateTransformModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 2022
    invoke-virtual {p1, p0}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 2023
    instance-of v1, v0, Lfreemarker/template/TemplateTransformModel;

    if-eqz v1, :cond_b

    .line 2024
    check-cast v0, Lfreemarker/template/TemplateTransformModel;

    goto :goto_22

    .line 2025
    :cond_b
    instance-of v0, p1, Lfreemarker/core/Identifier;

    if-eqz v0, :cond_21

    .line 2026
    iget-object v0, p0, Lfreemarker/core/Environment;->configuration:Lfreemarker/template/Configuration;

    invoke-virtual {p1}, Lfreemarker/core/Expression;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/template/Configuration;->getSharedVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    .line 2027
    instance-of v0, p1, Lfreemarker/template/TemplateTransformModel;

    if-eqz v0, :cond_21

    .line 2028
    move-object v0, p1

    check-cast v0, Lfreemarker/template/TemplateTransformModel;

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 2081
    invoke-direct {p0, p1}, Lfreemarker/core/Environment;->getNullableLocalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2083
    sget-object p1, Lfreemarker/core/NullTemplateModel;->INSTANCE:Lfreemarker/core/NullTemplateModel;

    if-eq v0, p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 2086
    :cond_d
    iget-object v0, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v0, p1}, Lfreemarker/core/Environment$Namespace;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-eqz v0, :cond_16

    return-object v0

    .line 2091
    :cond_16
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->getGlobalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public importLib(Lfreemarker/template/Template;Ljava/lang/String;)Lfreemarker/core/Environment$Namespace;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2745
    invoke-direct {p0, v0, p1, p2}, Lfreemarker/core/Environment;->importLib(Ljava/lang/String;Lfreemarker/template/Template;Ljava/lang/String;)Lfreemarker/core/Environment$Namespace;

    move-result-object p1

    return-object p1
.end method

.method public importLib(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/Environment$Namespace;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 2725
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getLazyImports()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/core/Environment;->importLib(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/core/Environment$Namespace;

    move-result-object p1

    return-object p1
.end method

.method public importLib(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/core/Environment$Namespace;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_8

    .line 2760
    invoke-direct {p0, p1, v0, p2}, Lfreemarker/core/Environment;->importLib(Ljava/lang/String;Lfreemarker/template/Template;Ljava/lang/String;)Lfreemarker/core/Environment$Namespace;

    move-result-object p1

    goto :goto_10

    .line 2761
    :cond_8
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->getTemplateForImporting(Ljava/lang/String;)Lfreemarker/template/Template;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lfreemarker/core/Environment;->importLib(Ljava/lang/String;Lfreemarker/template/Template;Ljava/lang/String;)Lfreemarker/core/Environment$Namespace;

    move-result-object p1

    :goto_10
    return-object p1
.end method

.method importMacros(Lfreemarker/template/Template;)V
    .registers 3

    .line 2922
    invoke-virtual {p1}, Lfreemarker/template/Template;->getMacros()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2923
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/Macro;

    invoke-virtual {p0, v0}, Lfreemarker/core/Environment;->visitMacroDef(Lfreemarker/core/Macro;)V

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public include(Lfreemarker/template/Template;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2684
    invoke-direct {p0}, Lfreemarker/core/Environment;->isBeforeIcI2322()Z

    move-result v0

    .line 2685
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getTemplate()Lfreemarker/template/Template;

    move-result-object v1

    if-eqz v0, :cond_e

    .line 2687
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->setParent(Lfreemarker/core/Configurable;)V

    goto :goto_10

    .line 2689
    :cond_e
    iput-object p1, p0, Lfreemarker/core/Environment;->legacyParent:Lfreemarker/core/Configurable;

    .line 2692
    :goto_10
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->importMacros(Lfreemarker/template/Template;)V

    .line 2694
    :try_start_13
    invoke-virtual {p1}, Lfreemarker/template/Template;->getRootTreeNode()Lfreemarker/core/TemplateElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->visit(Lfreemarker/core/TemplateElement;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_23

    if-eqz v0, :cond_20

    .line 2697
    invoke-virtual {p0, v1}, Lfreemarker/core/Environment;->setParent(Lfreemarker/core/Configurable;)V

    goto :goto_22

    .line 2699
    :cond_20
    iput-object v1, p0, Lfreemarker/core/Environment;->legacyParent:Lfreemarker/core/Configurable;

    :goto_22
    return-void

    :catchall_23
    move-exception p1

    if-eqz v0, :cond_2a

    .line 2697
    invoke-virtual {p0, v1}, Lfreemarker/core/Environment;->setParent(Lfreemarker/core/Configurable;)V

    goto :goto_2c

    .line 2699
    :cond_2a
    iput-object v1, p0, Lfreemarker/core/Environment;->legacyParent:Lfreemarker/core/Configurable;

    .line 2701
    :goto_2c
    throw p1
.end method

.method public include(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 2605
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/Environment;->getTemplateForInclusion(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/template/Template;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->include(Lfreemarker/template/Template;)V

    return-void
.end method

.method invokeFunction(Lfreemarker/core/Environment;Lfreemarker/core/Macro;Ljava/util/List;Lfreemarker/core/TemplateObject;)Lfreemarker/template/TemplateModel;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/core/Environment;",
            "Lfreemarker/core/Macro;",
            "Ljava/util/List<",
            "+",
            "Lfreemarker/core/Expression;",
            ">;",
            "Lfreemarker/core/TemplateObject;",
            ")",
            "Lfreemarker/template/TemplateModel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 818
    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->setLastReturnValue(Lfreemarker/template/TemplateModel;)V

    .line 819
    invoke-virtual {p2}, Lfreemarker/core/Macro;->isFunction()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 822
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getOut()Ljava/io/Writer;

    move-result-object v0

    .line 824
    :try_start_e
    sget-object v1, Lfreemarker/template/utility/NullWriter;->INSTANCE:Lfreemarker/template/utility/NullWriter;

    invoke-virtual {p1, v1}, Lfreemarker/core/Environment;->setOut(Ljava/io/Writer;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v7, p4

    .line 825
    invoke-virtual/range {v2 .. v7}, Lfreemarker/core/Environment;->invokeMacro(Lfreemarker/core/Macro;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lfreemarker/core/TemplateObject;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_26
    .catchall {:try_start_e .. :try_end_1c} :catchall_24

    .line 830
    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->setOut(Ljava/io/Writer;)V

    .line 832
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getLastReturnValue()Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    :catchall_24
    move-exception p2

    goto :goto_2f

    :catch_26
    move-exception p2

    .line 828
    :try_start_27
    new-instance p3, Lfreemarker/template/TemplateException;

    const-string p4, "Unexpected exception during function execution"

    invoke-direct {p3, p4, p2, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/Environment;)V

    throw p3
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_24

    .line 830
    :goto_2f
    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->setOut(Ljava/io/Writer;)V

    .line 831
    throw p2

    .line 820
    :cond_33
    new-instance p2, Lfreemarker/core/_MiscTemplateException;

    const-string p3, "A macro cannot be called in an expression. (Functions can be.)"

    invoke-direct {p2, p1, p3}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw p2
.end method

.method invokeMacro(Lfreemarker/core/Macro;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lfreemarker/core/TemplateObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/core/Macro;",
            "Ljava/util/Map;",
            "Ljava/util/List<",
            "+",
            "Lfreemarker/core/Expression;",
            ">;",
            "Ljava/util/List;",
            "Lfreemarker/core/TemplateObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    invoke-direct/range {p0 .. p5}, Lfreemarker/core/Environment;->invokeMacroOrFunctionCommonPart(Lfreemarker/core/Macro;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lfreemarker/core/TemplateObject;)V

    return-void
.end method

.method invokeNestedContent(Lfreemarker/core/BodyInstruction$Context;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getCurrentMacroContext()Lfreemarker/core/Macro$Context;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    .line 598
    iget-object v2, v0, Lfreemarker/core/Macro$Context;->callPlace:Lfreemarker/core/TemplateObject;

    .line 599
    instance-of v3, v2, Lfreemarker/core/TemplateElement;

    if-eqz v3, :cond_13

    check-cast v2, Lfreemarker/core/TemplateElement;

    .line 600
    invoke-virtual {v2}, Lfreemarker/core/TemplateElement;->getChildBuffer()[Lfreemarker/core/TemplateElement;

    move-result-object v2

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    if-eqz v2, :cond_89

    .line 602
    iget-object v3, v0, Lfreemarker/core/Macro$Context;->prevMacroContext:Lfreemarker/core/Macro$Context;

    iput-object v3, p0, Lfreemarker/core/Environment;->currentMacroContext:Lfreemarker/core/Macro$Context;

    .line 603
    iget-object v3, v0, Lfreemarker/core/Macro$Context;->nestedContentNamespace:Lfreemarker/core/Environment$Namespace;

    iput-object v3, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    .line 606
    invoke-direct {p0}, Lfreemarker/core/Environment;->isBeforeIcI2322()Z

    move-result v3

    .line 607
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getParent()Lfreemarker/core/Configurable;

    move-result-object v4

    if-eqz v3, :cond_32

    .line 609
    iget-object v5, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v5}, Lfreemarker/core/Environment$Namespace;->getTemplate()Lfreemarker/template/Template;

    move-result-object v5

    invoke-virtual {p0, v5}, Lfreemarker/core/Environment;->setParent(Lfreemarker/core/Configurable;)V

    goto :goto_3a

    .line 611
    :cond_32
    iget-object v5, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v5}, Lfreemarker/core/Environment$Namespace;->getTemplate()Lfreemarker/template/Template;

    move-result-object v5

    iput-object v5, p0, Lfreemarker/core/Environment;->legacyParent:Lfreemarker/core/Configurable;

    .line 614
    :goto_3a
    iget-object v5, v0, Lfreemarker/core/Macro$Context;->prevLocalContextStack:Lfreemarker/core/LocalContextStack;

    iput-object v5, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    .line 615
    iget-object v5, v0, Lfreemarker/core/Macro$Context;->nestedContentParameterNames:Ljava/util/List;

    if-eqz v5, :cond_45

    .line 616
    invoke-direct {p0, p1}, Lfreemarker/core/Environment;->pushLocalContext(Lfreemarker/core/LocalContext;)V

    .line 619
    :cond_45
    :try_start_45
    invoke-virtual {p0, v2}, Lfreemarker/core/Environment;->visit([Lfreemarker/core/TemplateElement;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_68

    .line 621
    iget-object p1, v0, Lfreemarker/core/Macro$Context;->nestedContentParameterNames:Ljava/util/List;

    if-eqz p1, :cond_51

    .line 622
    iget-object p1, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    invoke-virtual {p1}, Lfreemarker/core/LocalContextStack;->pop()V

    .line 624
    :cond_51
    iput-object v0, p0, Lfreemarker/core/Environment;->currentMacroContext:Lfreemarker/core/Macro$Context;

    .line 625
    invoke-virtual {v0}, Lfreemarker/core/Macro$Context;->getMacro()Lfreemarker/core/Macro;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->getMacroNamespace(Lfreemarker/core/Macro;)Lfreemarker/core/Environment$Namespace;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    if-eqz v3, :cond_63

    .line 627
    invoke-virtual {p0, v4}, Lfreemarker/core/Environment;->setParent(Lfreemarker/core/Configurable;)V

    goto :goto_65

    .line 629
    :cond_63
    iput-object v4, p0, Lfreemarker/core/Environment;->legacyParent:Lfreemarker/core/Configurable;

    .line 631
    :goto_65
    iput-object v1, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    goto :goto_89

    :catchall_68
    move-exception p1

    .line 621
    iget-object v2, v0, Lfreemarker/core/Macro$Context;->nestedContentParameterNames:Ljava/util/List;

    if-eqz v2, :cond_72

    .line 622
    iget-object v2, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    invoke-virtual {v2}, Lfreemarker/core/LocalContextStack;->pop()V

    .line 624
    :cond_72
    iput-object v0, p0, Lfreemarker/core/Environment;->currentMacroContext:Lfreemarker/core/Macro$Context;

    .line 625
    invoke-virtual {v0}, Lfreemarker/core/Macro$Context;->getMacro()Lfreemarker/core/Macro;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Environment;->getMacroNamespace(Lfreemarker/core/Macro;)Lfreemarker/core/Environment$Namespace;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    if-eqz v3, :cond_84

    .line 627
    invoke-virtual {p0, v4}, Lfreemarker/core/Environment;->setParent(Lfreemarker/core/Configurable;)V

    goto :goto_86

    .line 629
    :cond_84
    iput-object v4, p0, Lfreemarker/core/Environment;->legacyParent:Lfreemarker/core/Configurable;

    .line 631
    :goto_86
    iput-object v1, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    .line 632
    throw p1

    :cond_89
    :goto_89
    return-void
.end method

.method invokeNodeHandlerFor(Lfreemarker/template/TemplateNodeModel;Lfreemarker/template/TemplateSequenceModel;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lfreemarker/core/Environment;->nodeNamespaces:Lfreemarker/template/TemplateSequenceModel;

    if-nez v0, :cond_11

    .line 725
    new-instance v0, Lfreemarker/template/SimpleSequence;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleSequence;-><init>(I)V

    .line 726
    iget-object v1, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v0, v1}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    .line 727
    iput-object v0, p0, Lfreemarker/core/Environment;->nodeNamespaces:Lfreemarker/template/TemplateSequenceModel;

    .line 729
    :cond_11
    iget v0, p0, Lfreemarker/core/Environment;->nodeNamespaceIndex:I

    .line 730
    iget-object v1, p0, Lfreemarker/core/Environment;->currentNodeName:Ljava/lang/String;

    .line 731
    iget-object v2, p0, Lfreemarker/core/Environment;->currentNodeNS:Ljava/lang/String;

    .line 732
    iget-object v3, p0, Lfreemarker/core/Environment;->nodeNamespaces:Lfreemarker/template/TemplateSequenceModel;

    .line 733
    iget-object v4, p0, Lfreemarker/core/Environment;->currentVisitorNode:Lfreemarker/template/TemplateNodeModel;

    .line 734
    iput-object p1, p0, Lfreemarker/core/Environment;->currentVisitorNode:Lfreemarker/template/TemplateNodeModel;

    if-eqz p2, :cond_21

    .line 736
    iput-object p2, p0, Lfreemarker/core/Environment;->nodeNamespaces:Lfreemarker/template/TemplateSequenceModel;

    .line 739
    :cond_21
    :try_start_21
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->getNodeProcessor(Lfreemarker/template/TemplateNodeModel;)Lfreemarker/template/TemplateModel;

    move-result-object v5

    .line 740
    instance-of v6, v5, Lfreemarker/core/Macro;

    if-eqz v6, :cond_35

    .line 741
    move-object v8, v5

    check-cast v8, Lfreemarker/core/Macro;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lfreemarker/core/Environment;->invokeMacro(Lfreemarker/core/Macro;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lfreemarker/core/TemplateObject;)V

    goto :goto_91

    .line 742
    :cond_35
    instance-of v6, v5, Lfreemarker/template/TemplateTransformModel;

    if-eqz v6, :cond_40

    .line 743
    check-cast v5, Lfreemarker/template/TemplateTransformModel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v5, p1}, Lfreemarker/core/Environment;->visitAndTransform([Lfreemarker/core/TemplateElement;Lfreemarker/template/TemplateTransformModel;Ljava/util/Map;)V

    goto :goto_91

    .line 745
    :cond_40
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getNodeType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9c

    .line 748
    const-string v6, "text"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    instance-of v6, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz v6, :cond_5e

    .line 749
    iget-object p2, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_91

    .line 750
    :cond_5e
    const-string v6, "document"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 751
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/Environment;->recurse(Lfreemarker/template/TemplateNodeModel;Lfreemarker/template/TemplateSequenceModel;)V

    goto :goto_91

    .line 755
    :cond_6a
    const-string p2, "pi"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_91

    const-string p2, "comment"

    .line 756
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_91

    const-string p2, "document_type"

    .line 757
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_83

    goto :goto_91

    .line 758
    :cond_83
    new-instance p2, Lfreemarker/core/_MiscTemplateException;

    .line 759
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getNodeNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, v5}, Lfreemarker/core/Environment;->noNodeHandlerDefinedDescription(Lfreemarker/template/TemplateNodeModel;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw p2
    :try_end_91
    .catchall {:try_start_21 .. :try_end_91} :catchall_ac

    .line 767
    :cond_91
    :goto_91
    iput-object v4, p0, Lfreemarker/core/Environment;->currentVisitorNode:Lfreemarker/template/TemplateNodeModel;

    .line 768
    iput v0, p0, Lfreemarker/core/Environment;->nodeNamespaceIndex:I

    .line 769
    iput-object v1, p0, Lfreemarker/core/Environment;->currentNodeName:Ljava/lang/String;

    .line 770
    iput-object v2, p0, Lfreemarker/core/Environment;->currentNodeNS:Ljava/lang/String;

    .line 771
    iput-object v3, p0, Lfreemarker/core/Environment;->nodeNamespaces:Lfreemarker/template/TemplateSequenceModel;

    return-void

    .line 762
    :cond_9c
    :try_start_9c
    new-instance p2, Lfreemarker/core/_MiscTemplateException;

    .line 763
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getNodeNamespace()Ljava/lang/String;

    move-result-object v5

    const-string v6, "default"

    invoke-direct {p0, p1, v5, v6}, Lfreemarker/core/Environment;->noNodeHandlerDefinedDescription(Lfreemarker/template/TemplateNodeModel;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw p2
    :try_end_ac
    .catchall {:try_start_9c .. :try_end_ac} :catchall_ac

    :catchall_ac
    move-exception p1

    .line 767
    iput-object v4, p0, Lfreemarker/core/Environment;->currentVisitorNode:Lfreemarker/template/TemplateNodeModel;

    .line 768
    iput v0, p0, Lfreemarker/core/Environment;->nodeNamespaceIndex:I

    .line 769
    iput-object v1, p0, Lfreemarker/core/Environment;->currentNodeName:Ljava/lang/String;

    .line 770
    iput-object v2, p0, Lfreemarker/core/Environment;->currentNodeNS:Ljava/lang/String;

    .line 771
    iput-object v3, p0, Lfreemarker/core/Environment;->nodeNamespaces:Lfreemarker/template/TemplateSequenceModel;

    .line 772
    throw p1
.end method

.method isIcI2324OrLater()Z
    .registers 3

    .line 3240
    iget-object v0, p0, Lfreemarker/core/Environment;->configuration:Lfreemarker/template/Configuration;

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_24:I

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isInAttemptBlock()Z
    .registers 2

    .line 589
    iget-boolean v0, p0, Lfreemarker/core/Environment;->inAttemptBlock:Z

    return v0
.end method

.method isSQLDateAndTimeTimeZoneSameAsNormal()Z
    .registers 3

    .line 1126
    iget-object v0, p0, Lfreemarker/core/Environment;->cachedSQLDateAndTimeTimeZoneSameAsNormal:Ljava/lang/Boolean;

    if-nez v0, :cond_22

    .line 1128
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getSQLDateAndTimeTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1129
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getSQLDateAndTimeTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/Environment;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 1127
    :goto_1c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Environment;->cachedSQLDateAndTimeTimeZoneSameAsNormal:Ljava/lang/Boolean;

    .line 1131
    :cond_22
    iget-object v0, p0, Lfreemarker/core/Environment;->cachedSQLDateAndTimeTimeZoneSameAsNormal:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public outputInstructionStack(Ljava/io/PrintWriter;)V
    .registers 4

    .line 2195
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getInstructionStackSnapshot()[Lfreemarker/core/TemplateElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lfreemarker/core/Environment;->outputInstructionStack([Lfreemarker/core/TemplateElement;ZLjava/io/Writer;)V

    .line 2196
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public process()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    sget-object v0, Lfreemarker/core/Environment;->threadEnv:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    .line 304
    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 307
    :try_start_9
    invoke-direct {p0}, Lfreemarker/core/Environment;->clearCachedValues()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_31

    .line 309
    :try_start_c
    invoke-virtual {p0, p0}, Lfreemarker/core/Environment;->doAutoImportsAndIncludes(Lfreemarker/core/Environment;)V

    .line 310
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getTemplate()Lfreemarker/template/Template;

    move-result-object v2

    invoke-virtual {v2}, Lfreemarker/template/Template;->getRootTreeNode()Lfreemarker/core/TemplateElement;

    move-result-object v2

    invoke-virtual {p0, v2}, Lfreemarker/core/Environment;->visit(Lfreemarker/core/TemplateElement;)V

    .line 312
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getAutoFlush()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 313
    iget-object v2, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2c

    .line 317
    :cond_25
    :try_start_25
    invoke-direct {p0}, Lfreemarker/core/Environment;->clearCachedValues()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_31

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :catchall_2c
    move-exception v0

    .line 317
    :try_start_2d
    invoke-direct {p0}, Lfreemarker/core/Environment;->clearCachedValues()V

    .line 318
    throw v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v0

    .line 320
    sget-object v2, Lfreemarker/core/Environment;->threadEnv:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 321
    throw v0
.end method

.method recurse(Lfreemarker/template/TemplateNodeModel;Lfreemarker/template/TemplateSequenceModel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_11

    .line 974
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getCurrentVisitorNode()Lfreemarker/template/TemplateNodeModel;

    move-result-object p1

    if-eqz p1, :cond_9

    goto :goto_11

    .line 976
    :cond_9
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    const-string p2, "The target node of recursion is missing or null."

    invoke-direct {p1, p2}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 980
    :cond_11
    :goto_11
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getChildNodes()Lfreemarker/template/TemplateSequenceModel;

    move-result-object p1

    if-nez p1, :cond_18

    return-void

    .line 984
    :cond_18
    invoke-interface {p1}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_2d

    .line 986
    invoke-interface {p1, v1}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v2

    check-cast v2, Lfreemarker/template/TemplateNodeModel;

    if-eqz v2, :cond_2a

    .line 988
    invoke-virtual {p0, v2, p2}, Lfreemarker/core/Environment;->invokeNodeHandlerFor(Lfreemarker/template/TemplateNodeModel;Lfreemarker/template/TemplateSequenceModel;)V

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2d
    return-void
.end method

.method renderElementToString(Lfreemarker/core/TemplateElement;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 2910
    iget-object v0, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    .line 2912
    :try_start_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 2913
    iput-object v1, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    .line 2914
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->visit(Lfreemarker/core/TemplateElement;)V

    .line 2915
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_13

    .line 2917
    iput-object v0, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    return-object p1

    :catchall_13
    move-exception p1

    iput-object v0, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    .line 2918
    throw p1
.end method

.method replaceElementStackTop(Lfreemarker/core/TemplateElement;)V
    .registers 4

    .line 2483
    iget-object v0, p0, Lfreemarker/core/Environment;->instructionStack:[Lfreemarker/core/TemplateElement;

    iget v1, p0, Lfreemarker/core/Environment;->instructionStackSize:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public rootBasedToAbsoluteTemplateName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/MalformedTemplateNameException;
        }
    .end annotation

    .line 2906
    iget-object v0, p0, Lfreemarker/core/Environment;->configuration:Lfreemarker/template/Configuration;

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getTemplateNameFormat()Lfreemarker/cache/TemplateNameFormat;

    move-result-object v0

    invoke-static {v0, p1}, Lfreemarker/cache/_CacheAPI;->rootBasedNameToAbsoluteName(Lfreemarker/cache/TemplateNameFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentVisitorNode(Lfreemarker/template/TemplateNodeModel;)V
    .registers 2

    .line 2494
    iput-object p1, p0, Lfreemarker/core/Environment;->currentVisitorNode:Lfreemarker/template/TemplateNodeModel;

    return-void
.end method

.method public setCustomState(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2992
    iget-object v0, p0, Lfreemarker/core/Environment;->customStateVariables:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_b

    .line 2994
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2995
    iput-object v0, p0, Lfreemarker/core/Environment;->customStateVariables:Ljava/util/IdentityHashMap;

    .line 2997
    :cond_b
    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .registers 5

    .line 1497
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    .line 1498
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setDateFormat(Ljava/lang/String;)V

    .line 1499
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 1500
    iget-object p1, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    if-eqz p1, :cond_20

    const/4 p1, 0x0

    :goto_12
    const/16 v0, 0x10

    if-ge p1, v0, :cond_20

    .line 1502
    iget-object v0, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    add-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 p1, p1, 0x4

    goto :goto_12

    :cond_20
    return-void
.end method

.method public setDateTimeFormat(Ljava/lang/String;)V
    .registers 5

    .line 1510
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getDateTimeFormat()Ljava/lang/String;

    move-result-object v0

    .line 1511
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setDateTimeFormat(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 1513
    iget-object p1, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    if-eqz p1, :cond_20

    const/4 p1, 0x0

    :goto_12
    const/16 v0, 0x10

    if-ge p1, v0, :cond_20

    .line 1515
    iget-object v0, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    add-int/lit8 v1, p1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 p1, p1, 0x4

    goto :goto_12

    :cond_20
    return-void
.end method

.method setFastInvalidReferenceExceptions(Z)Z
    .registers 3

    .line 3256
    iget-boolean v0, p0, Lfreemarker/core/Environment;->fastInvalidReferenceExceptions:Z

    .line 3257
    iput-boolean p1, p0, Lfreemarker/core/Environment;->fastInvalidReferenceExceptions:Z

    return v0
.end method

.method public setGlobalVariable(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V
    .registers 4

    .line 2116
    iget-object v0, p0, Lfreemarker/core/Environment;->globalNamespace:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v0, p1, p2}, Lfreemarker/core/Environment$Namespace;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method setLastReturnValue(Lfreemarker/template/TemplateModel;)V
    .registers 2

    .line 1530
    iput-object p1, p0, Lfreemarker/core/Environment;->lastReturnValue:Lfreemarker/template/TemplateModel;

    return-void
.end method

.method public setLocalVariable(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V
    .registers 4

    .line 2140
    iget-object v0, p0, Lfreemarker/core/Environment;->currentMacroContext:Lfreemarker/core/Macro$Context;

    if-eqz v0, :cond_8

    .line 2143
    invoke-virtual {v0, p1, p2}, Lfreemarker/core/Macro$Context;->setLocalVar(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    return-void

    .line 2141
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not executing macro body"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 4

    .line 1043
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 1044
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setLocale(Ljava/util/Locale;)V

    .line 1045
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    const/4 p1, 0x0

    .line 1046
    iput-object p1, p0, Lfreemarker/core/Environment;->cachedTemplateNumberFormats:Ljava/util/Map;

    .line 1047
    iget-object v0, p0, Lfreemarker/core/Environment;->cachedTemplateNumberFormat:Lfreemarker/core/TemplateNumberFormat;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lfreemarker/core/TemplateNumberFormat;->isLocaleBound()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1048
    iput-object p1, p0, Lfreemarker/core/Environment;->cachedTemplateNumberFormat:Lfreemarker/core/TemplateNumberFormat;

    .line 1051
    :cond_1c
    iget-object v0, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    :goto_21
    const/16 v1, 0x10

    if-ge v0, v1, :cond_38

    .line 1053
    iget-object v1, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    aget-object v1, v1, v0

    if-eqz v1, :cond_35

    .line 1054
    invoke-virtual {v1}, Lfreemarker/core/TemplateDateFormat;->isLocaleBound()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1055
    iget-object v1, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    aput-object p1, v1, v0

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1060
    :cond_38
    iput-object p1, p0, Lfreemarker/core/Environment;->cachedTempDateFormatsByFmtStrArray:[Ljava/util/HashMap;

    .line 1062
    iput-object p1, p0, Lfreemarker/core/Environment;->cachedCollator:Ljava/text/Collator;

    :cond_3c
    return-void
.end method

.method public setNumberFormat(Ljava/lang/String;)V
    .registers 2

    .line 1245
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setNumberFormat(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1246
    iput-object p1, p0, Lfreemarker/core/Environment;->cachedTemplateNumberFormat:Lfreemarker/core/TemplateNumberFormat;

    return-void
.end method

.method public setOut(Ljava/io/Writer;)V
    .registers 2

    .line 1236
    iput-object p1, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    return-void
.end method

.method public setOutputEncoding(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1147
    iput-boolean v0, p0, Lfreemarker/core/Environment;->cachedURLEscapingCharsetSet:Z

    .line 1148
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setOutputEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setSQLDateAndTimeTimeZone(Ljava/util/TimeZone;)V
    .registers 6

    .line 1092
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getSQLDateAndTimeTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1093
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setSQLDateAndTimeTimeZone(Ljava/util/TimeZone;)V

    .line 1095
    invoke-static {p1, v0}, Lfreemarker/core/Environment;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 1096
    iget-object p1, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_2c

    move p1, v1

    :goto_17
    if-ge p1, v0, :cond_2c

    .line 1098
    iget-object v3, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    aget-object v3, v3, p1

    if-eqz v3, :cond_29

    .line 1099
    invoke-virtual {v3}, Lfreemarker/core/TemplateDateFormat;->isTimeZoneBound()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1100
    iget-object v3, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    aput-object v2, v3, p1

    :cond_29
    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    .line 1104
    :cond_2c
    iget-object p1, p0, Lfreemarker/core/Environment;->cachedTempDateFormatsByFmtStrArray:[Ljava/util/HashMap;

    if-eqz p1, :cond_39

    :goto_30
    if-ge v1, v0, :cond_39

    .line 1106
    iget-object p1, p0, Lfreemarker/core/Environment;->cachedTempDateFormatsByFmtStrArray:[Ljava/util/HashMap;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 1110
    :cond_39
    iput-object v2, p0, Lfreemarker/core/Environment;->cachedSQLDateAndTimeTimeZoneSameAsNormal:Ljava/lang/Boolean;

    :cond_3b
    return-void
.end method

.method public setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V
    .registers 2

    .line 1037
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V

    const/4 p1, 0x0

    .line 1038
    iput-object p1, p0, Lfreemarker/core/Environment;->lastThrowable:Ljava/lang/Throwable;

    return-void
.end method

.method public setTimeFormat(Ljava/lang/String;)V
    .registers 5

    .line 1484
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getTimeFormat()Ljava/lang/String;

    move-result-object v0

    .line 1485
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setTimeFormat(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 1487
    iget-object p1, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    if-eqz p1, :cond_20

    const/4 p1, 0x0

    :goto_12
    const/16 v0, 0x10

    if-ge p1, v0, :cond_20

    .line 1489
    iget-object v0, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 p1, p1, 0x4

    goto :goto_12

    :cond_20
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 6

    .line 1068
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1069
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1071
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 1072
    iget-object p1, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2b

    move p1, v1

    :goto_16
    if-ge p1, v0, :cond_2b

    .line 1074
    iget-object v3, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    aget-object v3, v3, p1

    if-eqz v3, :cond_28

    .line 1075
    invoke-virtual {v3}, Lfreemarker/core/TemplateDateFormat;->isTimeZoneBound()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1076
    iget-object v3, p0, Lfreemarker/core/Environment;->cachedTempDateFormatArray:[Lfreemarker/core/TemplateDateFormat;

    aput-object v2, v3, p1

    :cond_28
    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    .line 1080
    :cond_2b
    iget-object p1, p0, Lfreemarker/core/Environment;->cachedTempDateFormatsByFmtStrArray:[Ljava/util/HashMap;

    if-eqz p1, :cond_38

    :goto_2f
    if-ge v1, v0, :cond_38

    .line 1082
    iget-object p1, p0, Lfreemarker/core/Environment;->cachedTempDateFormatsByFmtStrArray:[Ljava/util/HashMap;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1086
    :cond_38
    iput-object v2, p0, Lfreemarker/core/Environment;->cachedSQLDateAndTimeTimeZoneSameAsNormal:Ljava/lang/Boolean;

    :cond_3a
    return-void
.end method

.method public setURLEscapingCharset(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1136
    iput-boolean v0, p0, Lfreemarker/core/Environment;->cachedURLEscapingCharsetSet:Z

    .line 1137
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setURLEscapingCharset(Ljava/lang/String;)V

    return-void
.end method

.method public setVariable(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V
    .registers 4

    .line 2125
    iget-object v0, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v0, p1, p2}, Lfreemarker/core/Environment$Namespace;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method shouldUseSQLDTTZ(Ljava/lang/Class;)Z
    .registers 3

    .line 1978
    const-class v0, Ljava/util/Date;

    if-eq p1, v0, :cond_12

    .line 1979
    invoke-virtual {p0}, Lfreemarker/core/Environment;->isSQLDateAndTimeTimeZoneSameAsNormal()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1980
    invoke-static {p1}, Lfreemarker/core/Environment;->isSQLDateOrTimeClass(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public toFullTemplateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/MalformedTemplateNameException;
        }
    .end annotation

    .line 2883
    invoke-virtual {p0}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result v0

    if-nez v0, :cond_14

    if-nez p1, :cond_9

    goto :goto_14

    .line 2887
    :cond_9
    iget-object v0, p0, Lfreemarker/core/Environment;->configuration:Lfreemarker/template/Configuration;

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getTemplateNameFormat()Lfreemarker/cache/TemplateNameFormat;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lfreemarker/cache/_CacheAPI;->toRootBasedName(Lfreemarker/cache/TemplateNameFormat;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_14
    :goto_14
    return-object p2
.end method

.method visit(Lfreemarker/core/TemplateElement;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 329
    invoke-direct {p0, p1}, Lfreemarker/core/Environment;->pushElement(Lfreemarker/core/TemplateElement;)V

    .line 331
    :try_start_3
    invoke-virtual {p1, p0}, Lfreemarker/core/TemplateElement;->accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 333
    array-length v0, p1

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_18

    aget-object v2, p1, v1

    if-nez v2, :cond_12

    goto :goto_18

    .line 337
    :cond_12
    invoke-virtual {p0, v2}, Lfreemarker/core/Environment;->visit(Lfreemarker/core/TemplateElement;)V
    :try_end_15
    .catch Lfreemarker/template/TemplateException; {:try_start_3 .. :try_end_15} :catch_1e
    .catchall {:try_start_3 .. :try_end_15} :catchall_1c

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 343
    :cond_18
    :goto_18
    invoke-direct {p0}, Lfreemarker/core/Environment;->popElement()V

    goto :goto_23

    :catchall_1c
    move-exception p1

    goto :goto_24

    :catch_1e
    move-exception p1

    .line 341
    :try_start_1f
    invoke-direct {p0, p1}, Lfreemarker/core/Environment;->handleTemplateException(Lfreemarker/template/TemplateException;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1c

    goto :goto_18

    :goto_23
    return-void

    .line 343
    :goto_24
    invoke-direct {p0}, Lfreemarker/core/Environment;->popElement()V

    .line 344
    throw p1
.end method

.method public visit(Lfreemarker/core/TemplateElement;Lfreemarker/template/TemplateDirectiveModel;Ljava/util/Map;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 414
    new-array v0, v0, [Lfreemarker/core/TemplateElement;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3, p4}, Lfreemarker/core/Environment;->visit([Lfreemarker/core/TemplateElement;Lfreemarker/template/TemplateDirectiveModel;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method final visit([Lfreemarker/core/TemplateElement;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 358
    :cond_3
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_37

    aget-object v3, p1, v2

    if-nez v3, :cond_d

    goto :goto_37

    .line 365
    :cond_d
    invoke-direct {p0, v3}, Lfreemarker/core/Environment;->pushElement(Lfreemarker/core/TemplateElement;)V

    .line 367
    :try_start_10
    invoke-virtual {v3, p0}, Lfreemarker/core/TemplateElement;->accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 369
    array-length v4, v3

    move v5, v1

    :goto_18
    if-ge v5, v4, :cond_25

    aget-object v6, v3, v5

    if-nez v6, :cond_1f

    goto :goto_25

    .line 373
    :cond_1f
    invoke-virtual {p0, v6}, Lfreemarker/core/Environment;->visit(Lfreemarker/core/TemplateElement;)V
    :try_end_22
    .catch Lfreemarker/template/TemplateException; {:try_start_10 .. :try_end_22} :catch_2b
    .catchall {:try_start_10 .. :try_end_22} :catchall_29

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 379
    :cond_25
    :goto_25
    invoke-direct {p0}, Lfreemarker/core/Environment;->popElement()V

    goto :goto_30

    :catchall_29
    move-exception p1

    goto :goto_33

    :catch_2b
    move-exception v3

    .line 377
    :try_start_2c
    invoke-direct {p0, v3}, Lfreemarker/core/Environment;->handleTemplateException(Lfreemarker/template/TemplateException;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_29

    goto :goto_25

    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 379
    :goto_33
    invoke-direct {p0}, Lfreemarker/core/Environment;->popElement()V

    .line 380
    throw p1

    :cond_37
    :goto_37
    return-void
.end method

.method visit([Lfreemarker/core/TemplateElement;Lfreemarker/template/TemplateDirectiveModel;Ljava/util/Map;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_a

    .line 424
    :cond_4
    new-instance v1, Lfreemarker/core/Environment$NestedElementTemplateDirectiveBody;

    invoke-direct {v1, p0, p1, v0}, Lfreemarker/core/Environment$NestedElementTemplateDirectiveBody;-><init>(Lfreemarker/core/Environment;[Lfreemarker/core/TemplateElement;Lfreemarker/core/Environment$1;)V

    move-object v0, v1

    :goto_a
    if-eqz p4, :cond_1a

    .line 427
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_1a

    .line 430
    :cond_13
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lfreemarker/template/TemplateModel;

    goto :goto_1c

    .line 428
    :cond_1a
    :goto_1a
    sget-object p1, Lfreemarker/core/Environment;->NO_OUT_ARGS:[Lfreemarker/template/TemplateModel;

    .line 432
    :goto_1c
    array-length v1, p1

    if-lez v1, :cond_27

    .line 433
    new-instance v1, Lfreemarker/core/Environment$1;

    invoke-direct {v1, p0, p4, p1}, Lfreemarker/core/Environment$1;-><init>(Lfreemarker/core/Environment;Ljava/util/List;[Lfreemarker/template/TemplateModel;)V

    invoke-direct {p0, v1}, Lfreemarker/core/Environment;->pushLocalContext(Lfreemarker/core/LocalContext;)V

    .line 446
    :cond_27
    :try_start_27
    invoke-interface {p2, p0, p3, p1, v0}, Lfreemarker/template/TemplateDirectiveModel;->execute(Lfreemarker/core/Environment;Ljava/util/Map;[Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateDirectiveBody;)V
    :try_end_2a
    .catch Lfreemarker/core/FlowControlException; {:try_start_27 .. :try_end_2a} :catch_55
    .catch Lfreemarker/template/TemplateException; {:try_start_27 .. :try_end_2a} :catch_53
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_51
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_35
    .catchall {:try_start_27 .. :try_end_2a} :catchall_33

    .line 464
    array-length p1, p1

    if-lez p1, :cond_32

    .line 465
    iget-object p1, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    invoke-virtual {p1}, Lfreemarker/core/LocalContextStack;->pop()V

    :cond_32
    return-void

    :catchall_33
    move-exception p2

    goto :goto_57

    :catch_35
    move-exception p2

    .line 455
    :try_start_36
    invoke-static {p2, p0}, Lfreemarker/core/EvalUtil;->shouldWrapUncheckedException(Ljava/lang/Throwable;Lfreemarker/core/Environment;)Z

    move-result p3

    if-nez p3, :cond_49

    .line 458
    instance-of p3, p2, Ljava/lang/RuntimeException;

    if-eqz p3, :cond_43

    .line 459
    check-cast p2, Ljava/lang/RuntimeException;

    throw p2

    .line 461
    :cond_43
    new-instance p3, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {p3, p2}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p3

    .line 456
    :cond_49
    new-instance p3, Lfreemarker/core/_MiscTemplateException;

    const-string p4, "Directive has thrown an unchecked exception; see the cause exception."

    invoke-direct {p3, p2, p0, p4}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw p3

    :catch_51
    move-exception p2

    .line 453
    throw p2

    :catch_53
    move-exception p2

    .line 450
    throw p2

    :catch_55
    move-exception p2

    .line 448
    throw p2
    :try_end_57
    .catchall {:try_start_36 .. :try_end_57} :catchall_33

    .line 464
    :goto_57
    array-length p1, p1

    if-lez p1, :cond_5f

    .line 465
    iget-object p1, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    invoke-virtual {p1}, Lfreemarker/core/LocalContextStack;->pop()V

    .line 467
    :cond_5f
    throw p2
.end method

.method final visit([Lfreemarker/core/TemplateElement;Ljava/io/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    .line 392
    iput-object p2, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    .line 394
    :try_start_4
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->visit([Lfreemarker/core/TemplateElement;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_a

    .line 396
    iput-object v0, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    return-void

    :catchall_a
    move-exception p1

    iput-object v0, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    .line 397
    throw p1
.end method

.method visitAndTransform([Lfreemarker/core/TemplateElement;Lfreemarker/template/TemplateTransformModel;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    invoke-interface {p2, v0, p3}, Lfreemarker/template/TemplateTransformModel;->getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;

    move-result-object p2

    if-nez p2, :cond_a

    .line 486
    sget-object p2, Lfreemarker/core/Environment;->EMPTY_BODY_WRITER:Ljava/io/Writer;

    .line 487
    :cond_a
    instance-of p3, p2, Lfreemarker/template/TransformControl;

    if-eqz p3, :cond_12

    move-object p3, p2

    check-cast p3, Lfreemarker/template/TransformControl;

    goto :goto_13

    :cond_12
    const/4 p3, 0x0

    .line 491
    :goto_13
    iget-object v0, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    .line 492
    iput-object p2, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;
    :try_end_17
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_17} :catch_7d

    if-eqz p3, :cond_1f

    .line 494
    :try_start_19
    invoke-interface {p3}, Lfreemarker/template/TransformControl;->onStart()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 496
    :cond_1f
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->visit([Lfreemarker/core/TemplateElement;)V

    if-eqz p3, :cond_2a

    .line 497
    invoke-interface {p3}, Lfreemarker/template/TransformControl;->afterBody()I

    move-result v1
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_32

    if-eqz v1, :cond_1f

    .line 526
    :cond_2a
    :try_start_2a
    iput-object v0, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    if-eq v0, p2, :cond_81

    .line 528
    :goto_2e
    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_31
    .catch Lfreemarker/template/TemplateException; {:try_start_2a .. :try_end_31} :catch_7d

    goto :goto_81

    :catchall_32
    move-exception p1

    if-eqz p3, :cond_51

    .line 501
    :try_start_35
    instance-of v1, p1, Lfreemarker/core/FlowControlException;

    if-eqz v1, :cond_49

    .line 503
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/Version;->intValue()I

    move-result v1

    sget v2, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_27:I

    if-ge v1, v2, :cond_51

    .line 505
    :cond_49
    invoke-interface {p3, p1}, Lfreemarker/template/TransformControl;->onError(Ljava/lang/Throwable;)V
    :try_end_4c
    .catch Lfreemarker/template/TemplateException; {:try_start_35 .. :try_end_4c} :catch_72
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_4c} :catch_70
    .catch Ljava/lang/Error; {:try_start_35 .. :try_end_4c} :catch_6e
    .catchall {:try_start_35 .. :try_end_4c} :catchall_52

    .line 526
    :try_start_4c
    iput-object v0, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;
    :try_end_4e
    .catch Lfreemarker/template/TemplateException; {:try_start_4c .. :try_end_4e} :catch_7d

    if-eq v0, p2, :cond_81

    goto :goto_2e

    .line 507
    :cond_51
    :try_start_51
    throw p1
    :try_end_52
    .catch Lfreemarker/template/TemplateException; {:try_start_51 .. :try_end_52} :catch_72
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_52} :catch_70
    .catch Ljava/lang/Error; {:try_start_51 .. :try_end_52} :catch_6e
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception p1

    .line 516
    :try_start_53
    invoke-static {p1, p0}, Lfreemarker/core/EvalUtil;->shouldWrapUncheckedException(Ljava/lang/Throwable;Lfreemarker/core/Environment;)Z

    move-result p3

    if-nez p3, :cond_66

    .line 519
    instance-of p3, p1, Ljava/lang/RuntimeException;

    if-eqz p3, :cond_60

    .line 520
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 522
    :cond_60
    new-instance p3, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {p3, p1}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p3

    .line 517
    :cond_66
    new-instance p3, Lfreemarker/core/_MiscTemplateException;

    const-string v1, "Transform has thrown an unchecked exception; see the cause exception."

    invoke-direct {p3, p1, p0, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw p3

    :catch_6e
    move-exception p1

    .line 514
    throw p1

    :catch_70
    move-exception p1

    .line 512
    throw p1

    :catch_72
    move-exception p1

    .line 510
    throw p1
    :try_end_74
    .catchall {:try_start_53 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception p1

    .line 526
    :try_start_75
    iput-object v0, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    if-eq v0, p2, :cond_7c

    .line 528
    invoke-virtual {p2}, Ljava/io/Writer;->close()V

    .line 530
    :cond_7c
    throw p1
    :try_end_7d
    .catch Lfreemarker/template/TemplateException; {:try_start_75 .. :try_end_7d} :catch_7d

    :catch_7d
    move-exception p1

    .line 532
    invoke-direct {p0, p1}, Lfreemarker/core/Environment;->handleTemplateException(Lfreemarker/template/TemplateException;)V

    :cond_81
    :goto_81
    return-void
.end method

.method visitAttemptRecover(Lfreemarker/core/AttemptBlock;Lfreemarker/core/TemplateElement;Lfreemarker/core/RecoveryBlock;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    .line 543
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 544
    iput-object v1, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    const/4 v2, 0x0

    .line 546
    invoke-virtual {p0, v2}, Lfreemarker/core/Environment;->setFastInvalidReferenceExceptions(Z)Z

    move-result v2

    .line 547
    iget-boolean v3, p0, Lfreemarker/core/Environment;->inAttemptBlock:Z

    const/4 v4, 0x1

    .line 549
    :try_start_11
    iput-boolean v4, p0, Lfreemarker/core/Environment;->inAttemptBlock:Z

    .line 550
    invoke-virtual {p0, p2}, Lfreemarker/core/Environment;->visit(Lfreemarker/core/TemplateElement;)V
    :try_end_16
    .catch Lfreemarker/template/TemplateException; {:try_start_11 .. :try_end_16} :catch_28
    .catchall {:try_start_11 .. :try_end_16} :catchall_1f

    .line 554
    iput-boolean v3, p0, Lfreemarker/core/Environment;->inAttemptBlock:Z

    .line 555
    invoke-virtual {p0, v2}, Lfreemarker/core/Environment;->setFastInvalidReferenceExceptions(Z)Z

    .line 556
    iput-object v0, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    const/4 p2, 0x0

    goto :goto_30

    :catchall_1f
    move-exception p1

    .line 554
    iput-boolean v3, p0, Lfreemarker/core/Environment;->inAttemptBlock:Z

    .line 555
    invoke-virtual {p0, v2}, Lfreemarker/core/Environment;->setFastInvalidReferenceExceptions(Z)Z

    .line 556
    iput-object v0, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    .line 557
    throw p1

    :catch_28
    move-exception p2

    .line 554
    iput-boolean v3, p0, Lfreemarker/core/Environment;->inAttemptBlock:Z

    .line 555
    invoke-virtual {p0, v2}, Lfreemarker/core/Environment;->setFastInvalidReferenceExceptions(Z)Z

    .line 556
    iput-object v0, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    :goto_30
    if-eqz p2, :cond_6f

    .line 559
    sget-object v0, Lfreemarker/core/Environment;->ATTEMPT_LOGGER:Lfreemarker/log/Logger;

    invoke-virtual {v0}, Lfreemarker/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in attempt block "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p1}, Lfreemarker/core/AttemptBlock;->getStartLocationQuoted()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 560
    invoke-virtual {v0, p1, p2}, Lfreemarker/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    :cond_50
    :try_start_50
    iget-object p1, p0, Lfreemarker/core/Environment;->recoveredErrorStack:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-virtual {p0, p3}, Lfreemarker/core/Environment;->visit(Lfreemarker/core/TemplateElement;)V
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_63

    .line 567
    iget-object p1, p0, Lfreemarker/core/Environment;->recoveredErrorStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v4

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_78

    :catchall_63
    move-exception p1

    iget-object p2, p0, Lfreemarker/core/Environment;->recoveredErrorStack:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v4

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 568
    throw p1

    .line 570
    :cond_6f
    iget-object p1, p0, Lfreemarker/core/Environment;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_78
    return-void
.end method

.method visitIteratorBlock(Lfreemarker/core/IteratorBlock$IterationContext;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    invoke-direct {p0, p1}, Lfreemarker/core/Environment;->pushLocalContext(Lfreemarker/core/LocalContext;)V

    .line 643
    :try_start_3
    invoke-virtual {p1, p0}, Lfreemarker/core/IteratorBlock$IterationContext;->accept(Lfreemarker/core/Environment;)Z

    move-result p1
    :try_end_7
    .catch Lfreemarker/template/TemplateException; {:try_start_3 .. :try_end_7} :catch_f
    .catchall {:try_start_3 .. :try_end_7} :catchall_d

    .line 648
    iget-object v0, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    invoke-virtual {v0}, Lfreemarker/core/LocalContextStack;->pop()V

    return p1

    :catchall_d
    move-exception p1

    goto :goto_1a

    :catch_f
    move-exception p1

    .line 645
    :try_start_10
    invoke-direct {p0, p1}, Lfreemarker/core/Environment;->handleTemplateException(Lfreemarker/template/TemplateException;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    .line 648
    iget-object p1, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    invoke-virtual {p1}, Lfreemarker/core/LocalContextStack;->pop()V

    const/4 p1, 0x1

    return p1

    :goto_1a
    iget-object v0, p0, Lfreemarker/core/Environment;->localContextStack:Lfreemarker/core/LocalContextStack;

    invoke-virtual {v0}, Lfreemarker/core/LocalContextStack;->pop()V

    .line 649
    throw p1
.end method

.method visitMacroDef(Lfreemarker/core/Macro;)V
    .registers 4

    .line 963
    iget-object v0, p0, Lfreemarker/core/Environment;->macroToNamespaceLookup:Ljava/util/HashMap;

    iget-object v1, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    iget-object v0, p0, Lfreemarker/core/Environment;->currentNamespace:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {p1}, Lfreemarker/core/Macro;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lfreemarker/core/Environment$Namespace;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
