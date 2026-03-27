.class final Lfreemarker/core/ExtendedDecimalFormatParser$8;
.super Ljava/lang/Object;
.source "ExtendedDecimalFormatParser.java"

# interfaces
.implements Lfreemarker/core/ExtendedDecimalFormatParser$ParameterHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/ExtendedDecimalFormatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lfreemarker/core/ExtendedDecimalFormatParser;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ExtendedDecimalFormatParser$InvalidParameterValueException;
        }
    .end annotation

    .line 158
    # getter for: Lfreemarker/core/ExtendedDecimalFormatParser;->symbols:Ljava/text/DecimalFormatSymbols;
    invoke-static {p1}, Lfreemarker/core/ExtendedDecimalFormatParser;->access$200(Lfreemarker/core/ExtendedDecimalFormatParser;)Ljava/text/DecimalFormatSymbols;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    return-void
.end method
