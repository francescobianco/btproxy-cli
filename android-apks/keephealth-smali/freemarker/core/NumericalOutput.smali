.class final Lfreemarker/core/NumericalOutput;
.super Lfreemarker/core/Interpolation;
.source "NumericalOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/NumericalOutput$FormatHolder;
    }
.end annotation


# instance fields
.field private final autoEscapeOutputFormat:Lfreemarker/core/MarkupOutputFormat;

.field private final expression:Lfreemarker/core/Expression;

.field private volatile formatCache:Lfreemarker/core/NumericalOutput$FormatHolder;

.field private final hasFormat:Z

.field private final maxFracDigits:I

.field private final minFracDigits:I


# direct methods
.method constructor <init>(Lfreemarker/core/Expression;IILfreemarker/core/MarkupOutputFormat;)V
    .registers 5

    .line 56
    invoke-direct {p0}, Lfreemarker/core/Interpolation;-><init>()V

    .line 57
    iput-object p1, p0, Lfreemarker/core/NumericalOutput;->expression:Lfreemarker/core/Expression;

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lfreemarker/core/NumericalOutput;->hasFormat:Z

    .line 59
    iput p2, p0, Lfreemarker/core/NumericalOutput;->minFracDigits:I

    .line 60
    iput p3, p0, Lfreemarker/core/NumericalOutput;->maxFracDigits:I

    .line 61
    iput-object p4, p0, Lfreemarker/core/NumericalOutput;->autoEscapeOutputFormat:Lfreemarker/core/MarkupOutputFormat;

    return-void
.end method

.method constructor <init>(Lfreemarker/core/Expression;Lfreemarker/core/MarkupOutputFormat;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Lfreemarker/core/Interpolation;-><init>()V

    .line 47
    iput-object p1, p0, Lfreemarker/core/NumericalOutput;->expression:Lfreemarker/core/Expression;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lfreemarker/core/NumericalOutput;->hasFormat:Z

    .line 49
    iput p1, p0, Lfreemarker/core/NumericalOutput;->minFracDigits:I

    .line 50
    iput p1, p0, Lfreemarker/core/NumericalOutput;->maxFracDigits:I

    .line 51
    iput-object p2, p0, Lfreemarker/core/NumericalOutput;->autoEscapeOutputFormat:Lfreemarker/core/MarkupOutputFormat;

    return-void
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Lfreemarker/core/NumericalOutput;->calculateInterpolatedStringOrMarkup(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getOut()Ljava/io/Writer;

    move-result-object p1

    .line 68
    iget-object v1, p0, Lfreemarker/core/NumericalOutput;->autoEscapeOutputFormat:Lfreemarker/core/MarkupOutputFormat;

    if-eqz v1, :cond_10

    .line 69
    invoke-virtual {v1, v0, p1}, Lfreemarker/core/MarkupOutputFormat;->output(Ljava/lang/String;Ljava/io/Writer;)V

    goto :goto_13

    .line 71
    :cond_10
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_13
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic calculateInterpolatedStringOrMarkup(Lfreemarker/core/Environment;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lfreemarker/core/NumericalOutput;->calculateInterpolatedStringOrMarkup(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected calculateInterpolatedStringOrMarkup(Lfreemarker/core/Environment;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lfreemarker/core/NumericalOutput;->expression:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->evalToNumber(Lfreemarker/core/Environment;)Ljava/lang/Number;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lfreemarker/core/NumericalOutput;->formatCache:Lfreemarker/core/NumericalOutput$FormatHolder;

    if-eqz v1, :cond_16

    .line 81
    iget-object v2, v1, Lfreemarker/core/NumericalOutput$FormatHolder;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 82
    :cond_16
    monitor-enter p0

    .line 83
    :try_start_17
    iget-object v1, p0, Lfreemarker/core/NumericalOutput;->formatCache:Lfreemarker/core/NumericalOutput$FormatHolder;

    if-eqz v1, :cond_27

    .line 84
    iget-object v2, v1, Lfreemarker/core/NumericalOutput$FormatHolder;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 85
    :cond_27
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    .line 86
    iget-boolean v2, p0, Lfreemarker/core/NumericalOutput;->hasFormat:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3f

    .line 87
    iget v2, p0, Lfreemarker/core/NumericalOutput;->minFracDigits:I

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 88
    iget v2, p0, Lfreemarker/core/NumericalOutput;->maxFracDigits:I

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_47

    .line 90
    :cond_3f
    invoke-virtual {v1, v3}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    const/16 v2, 0x32

    .line 91
    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 93
    :goto_47
    invoke-virtual {v1, v3}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 94
    new-instance v2, Lfreemarker/core/NumericalOutput$FormatHolder;

    invoke-virtual {p1}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lfreemarker/core/NumericalOutput$FormatHolder;-><init>(Ljava/text/NumberFormat;Ljava/util/Locale;)V

    iput-object v2, p0, Lfreemarker/core/NumericalOutput;->formatCache:Lfreemarker/core/NumericalOutput$FormatHolder;

    .line 95
    iget-object p1, p0, Lfreemarker/core/NumericalOutput;->formatCache:Lfreemarker/core/NumericalOutput$FormatHolder;

    move-object v1, p1

    .line 97
    :cond_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_17 .. :try_end_59} :catchall_60

    .line 102
    :cond_59
    iget-object p1, v1, Lfreemarker/core/NumericalOutput$FormatHolder;->format:Ljava/text/NumberFormat;

    invoke-virtual {p1, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_60
    move-exception p1

    .line 97
    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p1
.end method

.method protected dump(ZZ)Ljava/lang/String;
    .registers 4

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "#{"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lfreemarker/core/NumericalOutput;->expression:Lfreemarker/core/Expression;

    invoke-virtual {v0}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_15

    const/16 p2, 0x22

    .line 110
    invoke-static {v0, p2}, Lfreemarker/template/utility/StringUtil;->FTLStringLiteralEnc(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    :cond_15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-boolean p2, p0, Lfreemarker/core/NumericalOutput;->hasFormat:Z

    if-eqz p2, :cond_30

    .line 112
    const-string p2, " ; m"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget p2, p0, Lfreemarker/core/NumericalOutput;->minFracDigits:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string p2, "M"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget p2, p0, Lfreemarker/core/NumericalOutput;->maxFracDigits:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    :cond_30
    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 124
    const-string v0, "#{...}"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 3

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 167
    sget-object p1, Lfreemarker/core/ParameterRole;->MAXIMUM_DECIMALS:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 168
    :cond_b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 166
    :cond_11
    sget-object p1, Lfreemarker/core/ParameterRole;->MINIMUM_DECIMALS:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 165
    :cond_14
    sget-object p1, Lfreemarker/core/ParameterRole;->CONTENT:Lfreemarker/core/ParameterRole;

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 4

    if-eqz p1, :cond_25

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    .line 157
    iget-boolean p1, p0, Lfreemarker/core/NumericalOutput;->hasFormat:Z

    if-eqz p1, :cond_13

    iget p1, p0, Lfreemarker/core/NumericalOutput;->maxFracDigits:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_13
    return-object v1

    .line 158
    :cond_14
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 156
    :cond_1a
    iget-boolean p1, p0, Lfreemarker/core/NumericalOutput;->hasFormat:Z

    if-eqz p1, :cond_24

    iget p1, p0, Lfreemarker/core/NumericalOutput;->minFracDigits:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_24
    return-object v1

    .line 155
    :cond_25
    iget-object p1, p0, Lfreemarker/core/NumericalOutput;->expression:Lfreemarker/core/Expression;

    return-object p1
.end method

.method heedsOpeningWhitespace()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method heedsTrailingWhitespace()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
