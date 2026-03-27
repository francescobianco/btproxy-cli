.class public final Lfreemarker/core/Macro;
.super Lfreemarker/core/TemplateElement;
.source "Macro.java"

# interfaces
.implements Lfreemarker/template/TemplateModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/Macro$Context;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final DO_NOTHING_MACRO:Lfreemarker/core/Macro;

.field static final TYPE_FUNCTION:I = 0x1

.field static final TYPE_MACRO:I


# instance fields
.field private final catchAllParamName:Ljava/lang/String;

.field private final function:Z

.field private final name:Ljava/lang/String;

.field private final paramDefaults:Ljava/util/Map;

.field private final paramNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 42
    new-instance v7, Lfreemarker/core/Macro;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v5, 0x0

    sget-object v6, Lfreemarker/core/TemplateElements;->EMPTY:Lfreemarker/core/TemplateElements;

    const-string v1, ".pass"

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/Macro;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLfreemarker/core/TemplateElements;)V

    sput-object v7, Lfreemarker/core/Macro;->DO_NOTHING_MACRO:Lfreemarker/core/Macro;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLfreemarker/core/TemplateElements;)V
    .registers 7

    .line 59
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 60
    iput-object p1, p0, Lfreemarker/core/Macro;->name:Ljava/lang/String;

    .line 62
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 61
    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lfreemarker/core/Macro;->paramNames:[Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lfreemarker/core/Macro;->paramDefaults:Ljava/util/Map;

    .line 65
    iput-boolean p5, p0, Lfreemarker/core/Macro;->function:Z

    .line 66
    iput-object p4, p0, Lfreemarker/core/Macro;->catchAllParamName:Ljava/lang/String;

    .line 68
    invoke-virtual {p0, p6}, Lfreemarker/core/Macro;->setChildren(Lfreemarker/core/TemplateElements;)V

    return-void
.end method

.method static synthetic access$000(Lfreemarker/core/Macro;)[Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lfreemarker/core/Macro;->paramNames:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lfreemarker/core/Macro;)Ljava/util/Map;
    .registers 1

    .line 40
    iget-object p0, p0, Lfreemarker/core/Macro;->paramDefaults:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lfreemarker/core/Macro;)Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lfreemarker/core/Macro;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 2

    .line 93
    invoke-virtual {p1, p0}, Lfreemarker/core/Environment;->visitMacroDef(Lfreemarker/core/Macro;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 8

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_c

    const/16 v1, 0x3c

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :cond_c
    invoke-virtual {p0}, Lfreemarker/core/Macro;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    iget-object v2, p0, Lfreemarker/core/Macro;->name:Ljava/lang/String;

    invoke-static {v2}, Lfreemarker/core/_CoreStringUtils;->toFTLTopLevelTragetIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-boolean v2, p0, Lfreemarker/core/Macro;->function:Z

    if-eqz v2, :cond_2a

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    :cond_2a
    iget-object v2, p0, Lfreemarker/core/Macro;->paramNames:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    .line 106
    :goto_2e
    const-string v4, ", "

    if-ge v3, v2, :cond_73

    .line 107
    iget-boolean v5, p0, Lfreemarker/core/Macro;->function:Z

    if-eqz v5, :cond_3c

    if-eqz v3, :cond_3f

    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 112
    :cond_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    :cond_3f
    :goto_3f
    iget-object v4, p0, Lfreemarker/core/Macro;->paramNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 115
    invoke-static {v4}, Lfreemarker/core/_CoreStringUtils;->toFTLTopLevelIdentifierReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v5, p0, Lfreemarker/core/Macro;->paramDefaults:Ljava/util/Map;

    if-eqz v5, :cond_70

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_70

    const/16 v5, 0x3d

    .line 117
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    iget-object v5, p0, Lfreemarker/core/Macro;->paramDefaults:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/core/Expression;

    .line 119
    iget-boolean v5, p0, Lfreemarker/core/Macro;->function:Z

    if-eqz v5, :cond_6d

    .line 120
    invoke-virtual {v4}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 122
    :cond_6d
    invoke-static {v0, v4}, Lfreemarker/core/_MessageUtil;->appendExpressionAsUntearable(Ljava/lang/StringBuilder;Lfreemarker/core/Expression;)Ljava/lang/StringBuilder;

    :cond_70
    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 126
    :cond_73
    iget-object v3, p0, Lfreemarker/core/Macro;->catchAllParamName:Ljava/lang/String;

    if-eqz v3, :cond_8e

    .line 127
    iget-boolean v3, p0, Lfreemarker/core/Macro;->function:Z

    if-eqz v3, :cond_81

    if-eqz v2, :cond_84

    .line 129
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_84

    .line 132
    :cond_81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    :cond_84
    :goto_84
    iget-object v1, p0, Lfreemarker/core/Macro;->catchAllParamName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_8e
    iget-boolean v1, p0, Lfreemarker/core/Macro;->function:Z

    if-eqz v1, :cond_97

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_97
    if-eqz p1, :cond_b6

    const/16 p1, 0x3e

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p0}, Lfreemarker/core/Macro;->getChildrenCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/core/Macro;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :cond_b6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getArgumentNames()[Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lfreemarker/core/Macro;->paramNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getArgumentNamesInternal()[Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lfreemarker/core/Macro;->paramNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCatchAll()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lfreemarker/core/Macro;->catchAllParamName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lfreemarker/core/Macro;->name:Ljava/lang/String;

    return-object v0
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 148
    iget-boolean v0, p0, Lfreemarker/core/Macro;->function:Z

    if-eqz v0, :cond_7

    const-string v0, "#function"

    goto :goto_9

    :cond_7
    const-string v0, "#macro"

    :goto_9
    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    .line 271
    iget-object v0, p0, Lfreemarker/core/Macro;->paramNames:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 4

    if-nez p1, :cond_5

    .line 300
    sget-object p1, Lfreemarker/core/ParameterRole;->ASSIGNMENT_TARGET:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 302
    :cond_5
    iget-object v0, p0, Lfreemarker/core/Macro;->paramNames:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x1

    if-ge p1, v1, :cond_18

    .line 304
    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_15

    .line 305
    sget-object p1, Lfreemarker/core/ParameterRole;->PARAMETER_NAME:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 307
    :cond_15
    sget-object p1, Lfreemarker/core/ParameterRole;->PARAMETER_DEFAULT:Lfreemarker/core/ParameterRole;

    return-object p1

    :cond_18
    if-ne p1, v1, :cond_1d

    .line 310
    sget-object p1, Lfreemarker/core/ParameterRole;->CATCH_ALL_PARAMETER_NAME:Lfreemarker/core/ParameterRole;

    return-object p1

    :cond_1d
    add-int/lit8 v0, v0, 0x2

    if-ne p1, v0, :cond_24

    .line 312
    sget-object p1, Lfreemarker/core/ParameterRole;->AST_NODE_SUBTYPE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 314
    :cond_24
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 5

    if-nez p1, :cond_5

    .line 277
    iget-object p1, p0, Lfreemarker/core/Macro;->name:Ljava/lang/String;

    return-object p1

    .line 279
    :cond_5
    iget-object v0, p0, Lfreemarker/core/Macro;->paramNames:[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v1, 0x1

    if-ge p1, v2, :cond_20

    add-int/lit8 v1, p1, -0x1

    .line 281
    div-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    .line 282
    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_19

    return-object v0

    .line 285
    :cond_19
    iget-object p1, p0, Lfreemarker/core/Macro;->paramDefaults:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_20
    if-ne p1, v2, :cond_25

    .line 288
    iget-object p1, p0, Lfreemarker/core/Macro;->catchAllParamName:Ljava/lang/String;

    return-object p1

    :cond_25
    add-int/lit8 v1, v1, 0x2

    if-ne p1, v1, :cond_30

    .line 290
    iget-boolean p1, p0, Lfreemarker/core/Macro;->function:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 292
    :cond_30
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method hasArgNamed(Ljava/lang/String;)Z
    .registers 3

    .line 84
    iget-object v0, p0, Lfreemarker/core/Macro;->paramDefaults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFunction()Z
    .registers 2

    .line 152
    iget-boolean v0, p0, Lfreemarker/core/Macro;->function:Z

    return v0
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
