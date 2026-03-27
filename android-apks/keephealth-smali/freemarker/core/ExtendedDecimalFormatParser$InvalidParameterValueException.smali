.class Lfreemarker/core/ExtendedDecimalFormatParser$InvalidParameterValueException;
.super Ljava/lang/Exception;
.source "ExtendedDecimalFormatParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/ExtendedDecimalFormatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvalidParameterValueException"
.end annotation


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 523
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 524
    iput-object p1, p0, Lfreemarker/core/ExtendedDecimalFormatParser$InvalidParameterValueException;->message:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Lfreemarker/core/ExtendedDecimalFormatParser$InvalidParameterValueException;)Ljava/lang/String;
    .registers 1

    .line 519
    iget-object p0, p0, Lfreemarker/core/ExtendedDecimalFormatParser$InvalidParameterValueException;->message:Ljava/lang/String;

    return-object p0
.end method
