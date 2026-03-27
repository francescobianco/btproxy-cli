.class public Lfreemarker/core/_CoreAPI;
.super Ljava/lang/Object;
.source "_CoreAPI.java"


# static fields
.field public static final ALL_BUILT_IN_DIRECTIVE_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAMEL_CASE_BUILT_IN_DIRECTIVE_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_MESSAGE_HR:Ljava/lang/String; = "----"

.field public static final LEGACY_BUILT_IN_DIRECTIVE_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 70
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 71
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 72
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 74
    const-string v3, "assign"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 75
    const-string v3, "attempt"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 76
    const-string v3, "autoesc"

    const-string v4, "autoEsc"

    invoke-static {v0, v1, v2, v3, v4}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v3, "break"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 78
    const-string v3, "call"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 79
    const-string v3, "case"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 80
    const-string v3, "comment"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 81
    const-string v3, "compress"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 82
    const-string v3, "continue"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 83
    const-string v3, "default"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 84
    const-string v3, "else"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 85
    const-string v3, "elseif"

    const-string v4, "elseIf"

    invoke-static {v0, v1, v2, v3, v4}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v3, "escape"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 87
    const-string v3, "fallback"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 88
    const-string v3, "flush"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 89
    const-string v3, "foreach"

    const-string v4, "forEach"

    invoke-static {v0, v1, v2, v3, v4}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v3, "ftl"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 91
    const-string v3, "function"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 92
    const-string v3, "global"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 93
    const-string v3, "if"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 94
    const-string v3, "import"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 95
    const-string v3, "include"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 96
    const-string v3, "items"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 97
    const-string v3, "list"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 98
    const-string v3, "local"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 99
    const-string v3, "lt"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 100
    const-string v3, "macro"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 101
    const-string v3, "nested"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 102
    const-string v3, "noautoesc"

    const-string v4, "noAutoEsc"

    invoke-static {v0, v1, v2, v3, v4}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v3, "noescape"

    const-string v4, "noEscape"

    invoke-static {v0, v1, v2, v3, v4}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v3, "noparse"

    const-string v4, "noParse"

    invoke-static {v0, v1, v2, v3, v4}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v3, "nt"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 106
    const-string v3, "outputformat"

    const-string v4, "outputFormat"

    invoke-static {v0, v1, v2, v3, v4}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v3, "recover"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 108
    const-string v3, "recurse"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 109
    const-string v3, "return"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 110
    const-string v3, "rt"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 111
    const-string v3, "sep"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 112
    const-string v3, "setting"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 113
    const-string v3, "stop"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 114
    const-string v3, "switch"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 115
    const-string v3, "t"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 116
    const-string v3, "transform"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 117
    const-string v3, "visit"

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_CoreAPI;->addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 119
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lfreemarker/core/_CoreAPI;->ALL_BUILT_IN_DIRECTIVE_NAMES:Ljava/util/Set;

    .line 120
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lfreemarker/core/_CoreAPI;->LEGACY_BUILT_IN_DIRECTIVE_NAMES:Ljava/util/Set;

    .line 121
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lfreemarker/core/_CoreAPI;->CAMEL_CASE_BUILT_IN_DIRECTIVE_NAMES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-interface {p0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static addName(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-interface {p0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-interface {p0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-interface {p2, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final addThreadInterruptedChecks(Lfreemarker/template/Template;)V
    .registers 3

    .line 167
    :try_start_0
    new-instance v0, Lfreemarker/core/ThreadInterruptionSupportTemplatePostProcessor;

    invoke-direct {v0}, Lfreemarker/core/ThreadInterruptionSupportTemplatePostProcessor;-><init>()V

    invoke-virtual {v0, p0}, Lfreemarker/core/ThreadInterruptionSupportTemplatePostProcessor;->postProcess(Lfreemarker/template/Template;)V
    :try_end_8
    .catch Lfreemarker/core/TemplatePostProcessorException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Template post-processing failed"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static appendInstructionStackItem(Lfreemarker/core/TemplateElement;Ljava/lang/StringBuilder;)V
    .registers 2

    .line 149
    invoke-static {p0, p1}, Lfreemarker/core/Environment;->appendInstructionStackItem(Lfreemarker/core/TemplateElement;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static final checkHasNoNestedContent(Lfreemarker/template/TemplateDirectiveBody;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/NestedContentNotSupportedException;
        }
    .end annotation

    .line 175
    invoke-static {p0}, Lfreemarker/core/NestedContentNotSupportedException;->check(Lfreemarker/template/TemplateDirectiveBody;)V

    return-void
.end method

.method public static checkSettingValueItemsType(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 189
    :cond_3
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_7

    .line 191
    :cond_18
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " must be instances of "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 192
    invoke-static {p1}, Lfreemarker/template/utility/ClassUtil;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", but one of them was a(n) "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 193
    invoke-static {v0}, Lfreemarker/template/utility/ClassUtil;->getShortClassNameOfObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4d
    return-void
.end method

.method public static ensureIsTemplateModelException(Ljava/lang/String;Lfreemarker/template/TemplateException;)Lfreemarker/template/TemplateModelException;
    .registers 5

    .line 203
    instance-of v0, p1, Lfreemarker/template/TemplateModelException;

    if-eqz v0, :cond_7

    .line 204
    check-cast p1, Lfreemarker/template/TemplateModelException;

    return-object p1

    .line 206
    :cond_7
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    .line 207
    invoke-static {p1}, Lfreemarker/template/_TemplateAPI;->getBlamedExpression(Lfreemarker/template/TemplateException;)Lfreemarker/core/Expression;

    move-result-object v1

    invoke-virtual {p1}, Lfreemarker/template/TemplateException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p1}, Lfreemarker/template/TemplateException;->getEnvironment()Lfreemarker/core/Environment;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1, p0}, Lfreemarker/core/_TemplateModelException;-><init>(Lfreemarker/core/Expression;Ljava/lang/Throwable;Lfreemarker/core/Environment;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getChildElement(Lfreemarker/core/TemplateElement;I)Lfreemarker/core/TemplateElement;
    .registers 2

    .line 216
    invoke-virtual {p0, p1}, Lfreemarker/core/TemplateElement;->getChild(I)Lfreemarker/core/TemplateElement;

    move-result-object p0

    return-object p0
.end method

.method public static getInstructionStackSnapshot(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 1

    .line 153
    invoke-virtual {p0}, Lfreemarker/core/Environment;->getInstructionStackSnapshot()[Lfreemarker/core/TemplateElement;

    move-result-object p0

    return-object p0
.end method

.method public static getParentElement(Lfreemarker/core/TemplateElement;)Lfreemarker/core/TemplateElement;
    .registers 1

    .line 212
    invoke-virtual {p0}, Lfreemarker/core/TemplateElement;->getParentElement()Lfreemarker/core/TemplateElement;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedBuiltInNames(I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    if-ne p0, v0, :cond_b

    .line 137
    sget-object p0, Lfreemarker/core/BuiltIn;->BUILT_INS_BY_NAME:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    goto :goto_18

    :cond_b
    const/16 v0, 0xb

    if-ne p0, v0, :cond_12

    .line 139
    sget-object p0, Lfreemarker/core/BuiltIn;->SNAKE_CASE_NAMES:Ljava/util/Set;

    goto :goto_18

    :cond_12
    const/16 v0, 0xc

    if-ne p0, v0, :cond_1d

    .line 141
    sget-object p0, Lfreemarker/core/BuiltIn;->CAMEL_CASE_NAMES:Ljava/util/Set;

    .line 145
    :goto_18
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 143
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported naming convention constant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isLazilyGeneratedSequenceModel(Lfreemarker/template/TemplateCollectionModel;)Z
    .registers 2

    .line 224
    instance-of v0, p0, Lfreemarker/core/LazilyGeneratedCollectionModel;

    if-eqz v0, :cond_e

    check-cast p0, Lfreemarker/core/LazilyGeneratedCollectionModel;

    invoke-virtual {p0}, Lfreemarker/core/LazilyGeneratedCollectionModel;->isSequence()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static outputInstructionStack([Lfreemarker/core/TemplateElement;ZLjava/io/Writer;)V
    .registers 3

    .line 158
    invoke-static {p0, p1, p2}, Lfreemarker/core/Environment;->outputInstructionStack([Lfreemarker/core/TemplateElement;ZLjava/io/Writer;)V

    return-void
.end method

.method public static final replaceText(Lfreemarker/core/TextBlock;Ljava/lang/String;)V
    .registers 2

    .line 179
    invoke-virtual {p0, p1}, Lfreemarker/core/TextBlock;->replaceText(Ljava/lang/String;)V

    return-void
.end method

.method public static setPreventStrippings(Lfreemarker/core/FMParser;Z)V
    .registers 2

    .line 220
    invoke-virtual {p0, p1}, Lfreemarker/core/FMParser;->setPreventStrippings(Z)V

    return-void
.end method
