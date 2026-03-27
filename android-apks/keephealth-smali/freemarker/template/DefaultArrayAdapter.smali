.class public abstract Lfreemarker/template/DefaultArrayAdapter;
.super Lfreemarker/template/WrappingTemplateModel;
.source "DefaultArrayAdapter.java"

# interfaces
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/ext/util/WrapperTemplateModel;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$BooleanArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$CharArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$DoubleArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$FloatArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$LongArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$IntArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$ShortArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$ByteArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;
    }
.end annotation


# direct methods
.method private constructor <init>(Lfreemarker/template/ObjectWrapper;)V
    .registers 2

    .line 97
    invoke-direct {p0, p1}, Lfreemarker/template/WrappingTemplateModel;-><init>(Lfreemarker/template/ObjectWrapper;)V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1}, Lfreemarker/template/DefaultArrayAdapter;-><init>(Lfreemarker/template/ObjectWrapper;)V

    return-void
.end method

.method public static adapt(Ljava/lang/Object;Lfreemarker/template/ObjectWrapperAndUnwrapper;)Lfreemarker/template/DefaultArrayAdapter;
    .registers 5

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_91

    .line 65
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_87

    .line 66
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1f

    .line 67
    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$IntArrayAdapter;

    check-cast p0, [I

    check-cast p0, [I

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$IntArrayAdapter;-><init>([ILfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V

    return-object v0

    .line 69
    :cond_1f
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2d

    .line 70
    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$DoubleArrayAdapter;

    check-cast p0, [D

    check-cast p0, [D

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$DoubleArrayAdapter;-><init>([DLfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V

    return-object v0

    .line 72
    :cond_2d
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3b

    .line 73
    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$LongArrayAdapter;

    check-cast p0, [J

    check-cast p0, [J

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$LongArrayAdapter;-><init>([JLfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V

    return-object v0

    .line 75
    :cond_3b
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_49

    .line 76
    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$BooleanArrayAdapter;

    check-cast p0, [Z

    check-cast p0, [Z

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$BooleanArrayAdapter;-><init>([ZLfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V

    return-object v0

    .line 78
    :cond_49
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_57

    .line 79
    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$FloatArrayAdapter;

    check-cast p0, [F

    check-cast p0, [F

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$FloatArrayAdapter;-><init>([FLfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V

    return-object v0

    .line 81
    :cond_57
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_65

    .line 82
    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$CharArrayAdapter;

    check-cast p0, [C

    check-cast p0, [C

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$CharArrayAdapter;-><init>([CLfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V

    return-object v0

    .line 84
    :cond_65
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_73

    .line 85
    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$ShortArrayAdapter;

    check-cast p0, [S

    check-cast p0, [S

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$ShortArrayAdapter;-><init>([SLfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V

    return-object v0

    .line 87
    :cond_73
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_81

    .line 88
    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$ByteArrayAdapter;

    check-cast p0, [B

    check-cast p0, [B

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$ByteArrayAdapter;-><init>([BLfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V

    return-object v0

    .line 90
    :cond_81
    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;-><init>(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V

    return-object v0

    .line 92
    :cond_87
    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;-><init>([Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V

    return-object v0

    .line 62
    :cond_91
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not an array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 101
    invoke-virtual {p0}, Lfreemarker/template/DefaultArrayAdapter;->getWrappedObject()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
