.class public Lfreemarker/core/NonStringOrTemplateOutputException;
.super Lfreemarker/core/UnexpectedTypeException;
.source "NonStringOrTemplateOutputException.java"


# static fields
.field private static final DEFAULT_DESCRIPTION:Ljava/lang/String; = "Expecting string or something automatically convertible to string (number, date or boolean), or \"template output\"  value here"

.field static final STRING_COERCABLE_TYPES_AND_TOM:[Ljava/lang/Class;

.field static final STRING_COERCABLE_TYPES_OR_TOM_DESC:Ljava/lang/String; = "string or something automatically convertible to string (number, date or boolean), or \"template output\" "


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    sget-object v0, Lfreemarker/core/NonStringException;->STRING_COERCABLE_TYPES:[Ljava/lang/Class;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lfreemarker/core/NonStringOrTemplateOutputException;->STRING_COERCABLE_TYPES_AND_TOM:[Ljava/lang/Class;

    const/4 v0, 0x0

    .line 38
    :goto_a
    sget-object v1, Lfreemarker/core/NonStringException;->STRING_COERCABLE_TYPES:[Ljava/lang/Class;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 39
    sget-object v1, Lfreemarker/core/NonStringOrTemplateOutputException;->STRING_COERCABLE_TYPES_AND_TOM:[Ljava/lang/Class;

    sget-object v2, Lfreemarker/core/NonStringException;->STRING_COERCABLE_TYPES:[Ljava/lang/Class;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 41
    :cond_1a
    sget-object v1, Lfreemarker/core/NonStringOrTemplateOutputException;->STRING_COERCABLE_TYPES_AND_TOM:[Ljava/lang/Class;

    const-class v2, Lfreemarker/core/TemplateMarkupOutputModel;

    aput-object v2, v1, v0

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/Environment;)V
    .registers 3

    .line 48
    const-string v0, "Expecting string or something automatically convertible to string (number, date or boolean), or \"template output\"  value here"

    invoke-direct {p0, p1, v0}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lfreemarker/core/Environment;Lfreemarker/core/_ErrorDescriptionBuilder;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Environment;Lfreemarker/core/_ErrorDescriptionBuilder;)V

    return-void
.end method

.method constructor <init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    .line 62
    const-string v3, "string or something automatically convertible to string (number, date or boolean), or \"template output\" "

    sget-object v4, Lfreemarker/core/NonStringOrTemplateOutputException;->STRING_COERCABLE_TYPES_AND_TOM:[Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    return-void
.end method

.method constructor <init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Ljava/lang/String;Lfreemarker/core/Environment;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    .line 69
    const-string v3, "string or something automatically convertible to string (number, date or boolean), or \"template output\" "

    sget-object v4, Lfreemarker/core/NonStringOrTemplateOutputException;->STRING_COERCABLE_TYPES_AND_TOM:[Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lfreemarker/core/Environment;)V

    return-void
.end method

.method constructor <init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;[Ljava/lang/String;Lfreemarker/core/Environment;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    .line 74
    const-string v3, "string or something automatically convertible to string (number, date or boolean), or \"template output\" "

    sget-object v4, Lfreemarker/core/NonStringOrTemplateOutputException;->STRING_COERCABLE_TYPES_AND_TOM:[Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/Environment;)V
    .registers 3

    .line 52
    invoke-direct {p0, p2, p1}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    return-void
.end method
