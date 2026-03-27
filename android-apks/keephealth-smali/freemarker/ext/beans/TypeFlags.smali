.class Lfreemarker/ext/beans/TypeFlags;
.super Ljava/lang/Object;
.source "TypeFlags.java"


# static fields
.field static final ACCEPTS_ANY_OBJECT:I = 0x7f800

.field static final ACCEPTS_ARRAY:I = 0x40000

.field static final ACCEPTS_BOOLEAN:I = 0x4000

.field static final ACCEPTS_DATE:I = 0x1000

.field static final ACCEPTS_LIST:I = 0x10000

.field static final ACCEPTS_MAP:I = 0x8000

.field static final ACCEPTS_NUMBER:I = 0x800

.field static final ACCEPTS_SET:I = 0x20000

.field static final ACCEPTS_STRING:I = 0x2000

.field static final BIG_DECIMAL:I = 0x200

.field static final BIG_INTEGER:I = 0x100

.field static final BYTE:I = 0x4

.field static final CHARACTER:I = 0x80000

.field static final DOUBLE:I = 0x80

.field static final FLOAT:I = 0x40

.field static final INTEGER:I = 0x10

.field static final LONG:I = 0x20

.field static final MASK_ALL_KNOWN_NUMERICALS:I = 0x3fc

.field static final MASK_ALL_NUMERICALS:I = 0x7fc

.field static final MASK_KNOWN_INTEGERS:I = 0x13c

.field static final MASK_KNOWN_NONINTEGERS:I = 0x2c0

.field static final SHORT:I = 0x8

.field static final UNKNOWN_NUMERICAL_TYPE:I = 0x400

.field static final WIDENED_NUMERICAL_UNWRAPPING_HINT:I = 0x1


# direct methods
.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static classToTypeFlags(Ljava/lang/Class;)I
    .registers 11

    .line 75
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_8

    const p0, 0x7f800

    return p0

    .line 77
    :cond_8
    const-class v0, Ljava/lang/String;

    const/16 v1, 0x2000

    if-ne p0, v0, :cond_f

    return v1

    .line 79
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/high16 v2, 0x80000

    const/16 v3, 0x808

    const/16 v4, 0x804

    const/16 v5, 0x840

    const/16 v6, 0x880

    const/16 v7, 0x820

    const/4 v8, 0x0

    const/16 v9, 0x810

    if-eqz v0, :cond_4f

    .line 80
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_29

    return v9

    .line 81
    :cond_29
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2e

    return v7

    .line 82
    :cond_2e
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_33

    return v6

    .line 83
    :cond_33
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_38

    return v5

    .line 84
    :cond_38
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3d

    return v4

    .line 85
    :cond_3d
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_42

    return v3

    .line 86
    :cond_42
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_47

    return v2

    .line 87
    :cond_47
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4e

    const/16 p0, 0x4000

    return p0

    :cond_4e
    return v8

    .line 89
    :cond_4f
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 90
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_5c

    return v9

    .line 91
    :cond_5c
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_61

    return v7

    .line 92
    :cond_61
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_66

    return v6

    .line 93
    :cond_66
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_6b

    return v5

    .line 94
    :cond_6b
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_70

    return v4

    .line 95
    :cond_70
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_75

    return v3

    .line 96
    :cond_75
    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_80

    const/16 p0, 0xa00

    return p0

    .line 97
    :cond_80
    const-class v0, Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_8b

    const/16 p0, 0x900

    return p0

    :cond_8b
    const/16 p0, 0xc00

    return p0

    .line 99
    :cond_8e
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_97

    const/high16 p0, 0x40000

    return p0

    .line 103
    :cond_97
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a0

    goto :goto_a1

    :cond_a0
    move v1, v8

    .line 106
    :goto_a1
    const-class v0, Ljava/util/Date;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_ab

    or-int/lit16 v1, v1, 0x1000

    .line 109
    :cond_ab
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b5

    or-int/lit16 v1, v1, 0x4000

    .line 112
    :cond_b5
    const-class v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c1

    const v0, 0x8000

    or-int/2addr v1, v0

    .line 115
    :cond_c1
    const-class v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_cc

    const/high16 v0, 0x10000

    or-int/2addr v1, v0

    .line 118
    :cond_cc
    const-class v0, Ljava/util/Set;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d7

    const/high16 v0, 0x20000

    or-int/2addr v1, v0

    .line 122
    :cond_d7
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_dc

    or-int/2addr v1, v2

    :cond_dc
    return v1
.end method
