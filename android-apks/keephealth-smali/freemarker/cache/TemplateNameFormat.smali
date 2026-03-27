.class public abstract Lfreemarker/cache/TemplateNameFormat;
.super Ljava/lang/Object;
.source "TemplateNameFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/cache/TemplateNameFormat$Default020400;,
        Lfreemarker/cache/TemplateNameFormat$Default020300;
    }
.end annotation


# static fields
.field public static final DEFAULT_2_3_0:Lfreemarker/cache/TemplateNameFormat;

.field public static final DEFAULT_2_4_0:Lfreemarker/cache/TemplateNameFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lfreemarker/cache/TemplateNameFormat$Default020300;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfreemarker/cache/TemplateNameFormat$Default020300;-><init>(Lfreemarker/cache/TemplateNameFormat$1;)V

    sput-object v0, Lfreemarker/cache/TemplateNameFormat;->DEFAULT_2_3_0:Lfreemarker/cache/TemplateNameFormat;

    .line 100
    new-instance v0, Lfreemarker/cache/TemplateNameFormat$Default020400;

    invoke-direct {v0, v1}, Lfreemarker/cache/TemplateNameFormat$Default020400;-><init>(Lfreemarker/cache/TemplateNameFormat$1;)V

    sput-object v0, Lfreemarker/cache/TemplateNameFormat;->DEFAULT_2_4_0:Lfreemarker/cache/TemplateNameFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/cache/TemplateNameFormat$1;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Lfreemarker/cache/TemplateNameFormat;-><init>()V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/MalformedTemplateNameException;
        }
    .end annotation

    .line 34
    invoke-static {p0}, Lfreemarker/cache/TemplateNameFormat;->checkNameHasNoNullCharacter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)Lfreemarker/template/MalformedTemplateNameException;
    .registers 1

    .line 34
    invoke-static {p0}, Lfreemarker/cache/TemplateNameFormat;->newRootLeavingException(Ljava/lang/String;)Lfreemarker/template/MalformedTemplateNameException;

    move-result-object p0

    return-object p0
.end method

.method private static checkNameHasNoNullCharacter(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/MalformedTemplateNameException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    return-void

    .line 473
    :cond_9
    new-instance v0, Lfreemarker/template/MalformedTemplateNameException;

    const-string v1, "Null character (\\u0000) in the name; possible attack attempt"

    invoke-direct {v0, p0, v1}, Lfreemarker/template/MalformedTemplateNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static newRootLeavingException(Ljava/lang/String;)Lfreemarker/template/MalformedTemplateNameException;
    .registers 3

    .line 479
    new-instance v0, Lfreemarker/template/MalformedTemplateNameException;

    const-string v1, "Backing out from the root directory is not allowed"

    invoke-direct {v0, p0, v1}, Lfreemarker/template/MalformedTemplateNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method abstract normalizeRootBasedName(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/MalformedTemplateNameException;
        }
    .end annotation
.end method

.method abstract rootBasedNameToAbsoluteName(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/MalformedTemplateNameException;
        }
    .end annotation
.end method

.method abstract toRootBasedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/MalformedTemplateNameException;
        }
    .end annotation
.end method
