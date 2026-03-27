.class public Lfreemarker/core/NonSequenceOrCollectionException;
.super Lfreemarker/core/UnexpectedTypeException;
.source "NonSequenceOrCollectionException.java"


# static fields
.field private static final EXPECTED_TYPES:[Ljava/lang/Class;

.field private static final ITERABLE_SUPPORT_HINT:Ljava/lang/String; = "The problematic value is a java.lang.Iterable. Using DefaultObjectWrapper(..., iterableSupport=true) as the object_wrapper setting of the FreeMarker configuration should solve this."


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    .line 36
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lfreemarker/template/TemplateSequenceModel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lfreemarker/template/TemplateCollectionModel;

    aput-object v2, v0, v1

    sput-object v0, Lfreemarker/core/NonSequenceOrCollectionException;->EXPECTED_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/Environment;)V
    .registers 3

    .line 44
    const-string v0, "Expecting sequence or collection value here"

    invoke-direct {p0, p1, v0}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lfreemarker/core/Environment;Lfreemarker/core/_ErrorDescriptionBuilder;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Environment;Lfreemarker/core/_ErrorDescriptionBuilder;)V

    return-void
.end method

.method constructor <init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    .line 58
    sget-object v0, Lfreemarker/template/utility/CollectionUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0, p3}, Lfreemarker/core/NonSequenceOrCollectionException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;[Ljava/lang/Object;Lfreemarker/core/Environment;)V

    return-void
.end method

.method constructor <init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Ljava/lang/String;Lfreemarker/core/Environment;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    .line 65
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lfreemarker/core/NonSequenceOrCollectionException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;[Ljava/lang/Object;Lfreemarker/core/Environment;)V

    return-void
.end method

.method constructor <init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;[Ljava/lang/Object;Lfreemarker/core/Environment;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    .line 70
    sget-object v4, Lfreemarker/core/NonSequenceOrCollectionException;->EXPECTED_TYPES:[Ljava/lang/Class;

    invoke-static {p2, p3}, Lfreemarker/core/NonSequenceOrCollectionException;->extendTipsIfIterable(Lfreemarker/template/TemplateModel;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    const-string v3, "sequence or collection"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/Environment;)V
    .registers 3

    .line 48
    invoke-direct {p0, p2, p1}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    return-void
.end method

.method private static extendTipsIfIterable(Lfreemarker/template/TemplateModel;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5

    .line 74
    invoke-static {p0}, Lfreemarker/core/NonSequenceOrCollectionException;->isWrappedIterable(Lfreemarker/template/TemplateModel;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x0

    if-eqz p1, :cond_b

    .line 75
    array-length v0, p1

    goto :goto_c

    :cond_b
    move v0, p0

    :goto_c
    add-int/lit8 v1, v0, 0x1

    .line 76
    new-array v1, v1, [Ljava/lang/Object;

    :goto_10
    if-ge p0, v0, :cond_19

    .line 78
    aget-object v2, p1, p0

    aput-object v2, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_10

    .line 80
    :cond_19
    const-string p0, "The problematic value is a java.lang.Iterable. Using DefaultObjectWrapper(..., iterableSupport=true) as the object_wrapper setting of the FreeMarker configuration should solve this."

    aput-object p0, v1, v0

    return-object v1

    :cond_1e
    return-object p1
.end method

.method public static isWrappedIterable(Lfreemarker/template/TemplateModel;)Z
    .registers 2

    .line 88
    instance-of v0, p0, Lfreemarker/ext/util/WrapperTemplateModel;

    if-eqz v0, :cond_10

    check-cast p0, Lfreemarker/ext/util/WrapperTemplateModel;

    .line 89
    invoke-interface {p0}, Lfreemarker/ext/util/WrapperTemplateModel;->getWrappedObject()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/Iterable;

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method
