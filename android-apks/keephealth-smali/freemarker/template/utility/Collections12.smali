.class public Lfreemarker/template/utility/Collections12;
.super Ljava/lang/Object;
.source "Collections12.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EMPTY_MAP:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lfreemarker/template/EmptyMap;

    invoke-direct {v0}, Lfreemarker/template/EmptyMap;-><init>()V

    sput-object v0, Lfreemarker/template/utility/Collections12;->EMPTY_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static singletonList(Ljava/lang/Object;)Ljava/util/List;
    .registers 1

    .line 45
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 2

    .line 41
    invoke-static {p0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
