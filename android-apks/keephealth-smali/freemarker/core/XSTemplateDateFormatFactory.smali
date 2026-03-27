.class Lfreemarker/core/XSTemplateDateFormatFactory;
.super Lfreemarker/core/ISOLikeTemplateDateFormatFactory;
.source "XSTemplateDateFormatFactory.java"


# static fields
.field static final INSTANCE:Lfreemarker/core/XSTemplateDateFormatFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lfreemarker/core/XSTemplateDateFormatFactory;

    invoke-direct {v0}, Lfreemarker/core/XSTemplateDateFormatFactory;-><init>()V

    sput-object v0, Lfreemarker/core/XSTemplateDateFormatFactory;->INSTANCE:Lfreemarker/core/XSTemplateDateFormatFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lfreemarker/core/ISOLikeTemplateDateFormatFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;ZLfreemarker/core/Environment;)Lfreemarker/core/TemplateDateFormat;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;,
            Lfreemarker/core/InvalidFormatParametersException;
        }
    .end annotation

    .line 37
    new-instance p3, Lfreemarker/core/XSTemplateDateFormat;

    const/4 v2, 0x2

    move-object v0, p3

    move-object v1, p1

    move v3, p2

    move v4, p5

    move-object v5, p4

    move-object v6, p0

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lfreemarker/core/XSTemplateDateFormat;-><init>(Ljava/lang/String;IIZLjava/util/TimeZone;Lfreemarker/core/ISOLikeTemplateDateFormatFactory;Lfreemarker/core/Environment;)V

    return-object p3
.end method
