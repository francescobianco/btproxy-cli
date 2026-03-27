.class public final Lfreemarker/core/UndefinedOutputFormat;
.super Lfreemarker/core/OutputFormat;
.source "UndefinedOutputFormat.java"


# static fields
.field public static final INSTANCE:Lfreemarker/core/UndefinedOutputFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lfreemarker/core/UndefinedOutputFormat;

    invoke-direct {v0}, Lfreemarker/core/UndefinedOutputFormat;-><init>()V

    sput-object v0, Lfreemarker/core/UndefinedOutputFormat;->INSTANCE:Lfreemarker/core/UndefinedOutputFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lfreemarker/core/OutputFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 49
    const-string v0, "undefined"

    return-object v0
.end method

.method public isOutputFormatMixingAllowed()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
