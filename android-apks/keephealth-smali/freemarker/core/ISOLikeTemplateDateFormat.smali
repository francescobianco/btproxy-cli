.class abstract Lfreemarker/core/ISOLikeTemplateDateFormat;
.super Lfreemarker/core/TemplateDateFormat;
.source "ISOLikeTemplateDateFormat.java"


# static fields
.field private static final XS_LESS_THAN_SECONDS_ACCURACY_ERROR_MESSAGE:Ljava/lang/String; = "Less than seconds accuracy isn\'t allowed by the XML Schema format"


# instance fields
.field protected final accuracy:I

.field protected final dateType:I

.field private final env:Lfreemarker/core/Environment;

.field private final factory:Lfreemarker/core/ISOLikeTemplateDateFormatFactory;

.field protected final forceUTC:Ljava/lang/Boolean;

.field protected final showZoneOffset:Ljava/lang/Boolean;

.field protected final timeZone:Ljava/util/TimeZone;

.field protected final zonelessInput:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZLjava/util/TimeZone;Lfreemarker/core/ISOLikeTemplateDateFormatFactory;Lfreemarker/core/Environment;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidFormatParametersException;,
            Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 57
    invoke-direct/range {p0 .. p0}, Lfreemarker/core/TemplateDateFormat;-><init>()V

    move-object/from16 v3, p6

    .line 58
    iput-object v3, v0, Lfreemarker/core/ISOLikeTemplateDateFormat;->factory:Lfreemarker/core/ISOLikeTemplateDateFormatFactory;

    move-object/from16 v3, p7

    .line 59
    iput-object v3, v0, Lfreemarker/core/ISOLikeTemplateDateFormat;->env:Lfreemarker/core/Environment;

    if-eqz v2, :cond_1a7

    .line 64
    iput v2, v0, Lfreemarker/core/ISOLikeTemplateDateFormat;->dateType:I

    move/from16 v2, p4

    .line 65
    iput-boolean v2, v0, Lfreemarker/core/ISOLikeTemplateDateFormat;->zonelessInput:Z

    .line 67
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 72
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v7, v3

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v3, p2

    :goto_25
    if-ge v3, v2, :cond_19c

    add-int/lit8 v11, v3, 0x1

    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x5f

    if-eq v12, v13, :cond_196

    const/16 v13, 0x20

    if-ne v12, v13, :cond_37

    goto/16 :goto_196

    .line 78
    :cond_37
    const-string v13, ")."

    if-eqz v10, :cond_173

    .line 83
    const-string v10, "Character \""

    const/16 v14, 0x6e

    const/16 v15, 0x75

    const/16 v4, 0x66

    if-eq v12, v4, :cond_e6

    const/16 v6, 0x6d

    const/16 v4, 0x68

    const/16 v5, 0x73

    if-eq v12, v4, :cond_83

    if-eq v12, v5, :cond_83

    if-eq v12, v15, :cond_85

    if-eq v12, v6, :cond_83

    if-ne v12, v14, :cond_58

    const/4 v4, 0x7

    goto/16 :goto_f7

    .line 157
    :cond_58
    new-instance v1, Lfreemarker/core/InvalidFormatParametersException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected character, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Expected the beginning of one of: h, m, s, ms, nz, fz, u (at char pos. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lfreemarker/core/InvalidFormatParametersException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_83
    const/4 v14, 0x7

    goto :goto_8c

    .line 153
    :cond_85
    invoke-direct {v0, v7}, Lfreemarker/core/ISOLikeTemplateDateFormat;->checkForceUTCNotSet(Ljava/lang/Boolean;)V

    const/4 v4, 0x7

    const/4 v7, 0x0

    goto/16 :goto_135

    :goto_8c
    if-ne v8, v14, :cond_c5

    .line 92
    const-string v10, "Less than seconds accuracy isn\'t allowed by the XML Schema format"

    if-eq v12, v4, :cond_b5

    if-eq v12, v6, :cond_99

    if-eq v12, v5, :cond_97

    goto :goto_bc

    :cond_97
    const/4 v8, 0x6

    goto :goto_bc

    :cond_99
    if-ge v11, v2, :cond_a7

    .line 101
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_a7

    add-int/lit8 v3, v3, 0x2

    const/16 v8, 0x8

    move v11, v3

    goto :goto_bc

    .line 105
    :cond_a7
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/ISOLikeTemplateDateFormat;->isXSMode()Z

    move-result v3

    if-nez v3, :cond_af

    const/4 v8, 0x5

    goto :goto_bc

    .line 106
    :cond_af
    new-instance v1, Lfreemarker/core/InvalidFormatParametersException;

    invoke-direct {v1, v10}, Lfreemarker/core/InvalidFormatParametersException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_b5
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/ISOLikeTemplateDateFormat;->isXSMode()Z

    move-result v3

    if-nez v3, :cond_bf

    const/4 v8, 0x4

    :goto_bc
    move v4, v14

    goto/16 :goto_135

    .line 95
    :cond_bf
    new-instance v1, Lfreemarker/core/InvalidFormatParametersException;

    invoke-direct {v1, v10}, Lfreemarker/core/InvalidFormatParametersException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_c5
    new-instance v1, Lfreemarker/core/InvalidFormatParametersException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is unexpected as accuracy was already specified earlier (at char pos. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lfreemarker/core/InvalidFormatParametersException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e6
    const/4 v4, 0x7

    if-ge v11, v2, :cond_f7

    .line 118
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v15, :cond_f7

    .line 119
    invoke-direct {v0, v7}, Lfreemarker/core/ISOLikeTemplateDateFormat;->checkForceUTCNotSet(Ljava/lang/Boolean;)V

    add-int/lit8 v11, v3, 0x2

    .line 121
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_135

    :cond_f7
    :goto_f7
    if-nez v9, :cond_152

    const/16 v5, 0x7a

    const/16 v6, 0x66

    if-eq v12, v6, :cond_128

    if-eq v12, v14, :cond_102

    goto :goto_135

    :cond_102
    if-ge v11, v2, :cond_10f

    .line 133
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_10f

    add-int/lit8 v3, v3, 0x2

    .line 135
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_134

    .line 137
    :cond_10f
    new-instance v1, Lfreemarker/core/InvalidFormatParametersException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\"n\" must be followed by \"z\" (at char pos. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lfreemarker/core/InvalidFormatParametersException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_128
    if-ge v11, v2, :cond_139

    .line 142
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_139

    add-int/lit8 v3, v3, 0x2

    .line 144
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_134
    move v11, v3

    :goto_135
    move v3, v11

    const/4 v10, 0x0

    goto/16 :goto_25

    .line 146
    :cond_139
    new-instance v1, Lfreemarker/core/InvalidFormatParametersException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\"f\" must be followed by \"z\" (at char pos. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lfreemarker/core/InvalidFormatParametersException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_152
    new-instance v1, Lfreemarker/core/InvalidFormatParametersException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is unexpected as zone offset visibility was already specified earlier. (at char pos. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lfreemarker/core/InvalidFormatParametersException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_173
    new-instance v1, Lfreemarker/core/InvalidFormatParametersException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing space or \"_\" before \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (at char pos. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lfreemarker/core/InvalidFormatParametersException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_196
    :goto_196
    const/4 v4, 0x7

    const/4 v3, 0x1

    move v10, v3

    move v3, v11

    goto/16 :goto_25

    .line 166
    :cond_19c
    iput v8, v0, Lfreemarker/core/ISOLikeTemplateDateFormat;->accuracy:I

    .line 167
    iput-object v9, v0, Lfreemarker/core/ISOLikeTemplateDateFormat;->showZoneOffset:Ljava/lang/Boolean;

    .line 168
    iput-object v7, v0, Lfreemarker/core/ISOLikeTemplateDateFormat;->forceUTC:Ljava/lang/Boolean;

    move-object/from16 v1, p5

    .line 169
    iput-object v1, v0, Lfreemarker/core/ISOLikeTemplateDateFormat;->timeZone:Ljava/util/TimeZone;

    return-void

    .line 61
    :cond_1a7
    new-instance v1, Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;

    invoke-direct {v1}, Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;-><init>()V

    throw v1
.end method

.method private checkForceUTCNotSet(Ljava/lang/Boolean;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidFormatParametersException;
        }
    .end annotation

    .line 173
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_5

    return-void

    .line 174
    :cond_5
    new-instance p1, Lfreemarker/core/InvalidFormatParametersException;

    const-string v0, "The UTC usage option was already set earlier."

    invoke-direct {p1, v0}, Lfreemarker/core/InvalidFormatParametersException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected abstract format(Ljava/util/Date;ZZZILjava/util/TimeZone;Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;)Ljava/lang/String;
.end method

.method public final formatToPlainText(Lfreemarker/template/TemplateDateModel;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 181
    invoke-static {p1}, Lfreemarker/core/TemplateFormatUtil;->getNonNullDate(Lfreemarker/template/TemplateDateModel;)Ljava/util/Date;

    move-result-object v1

    .line 182
    iget p1, p0, Lfreemarker/core/ISOLikeTemplateDateFormat;->dateType:I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_c

    move v3, v2

    goto :goto_d

    :cond_c
    move v3, v0

    :goto_d
    const/4 v4, 0x2

    if-eq p1, v4, :cond_12

    move p1, v2

    goto :goto_13

    :cond_12
    move p1, v0

    :goto_13
    iget-object v4, p0, Lfreemarker/core/ISOLikeTemplateDateFormat;->showZoneOffset:Ljava/lang/Boolean;

    if-nez v4, :cond_1d

    iget-boolean v4, p0, Lfreemarker/core/ISOLikeTemplateDateFormat;->zonelessInput:Z

    if-nez v4, :cond_21

    move v4, v2

    goto :goto_22

    .line 188
    :cond_1d
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_21
    move v4, v0

    :goto_22
    iget v5, p0, Lfreemarker/core/ISOLikeTemplateDateFormat;->accuracy:I

    iget-object v0, p0, Lfreemarker/core/ISOLikeTemplateDateFormat;->forceUTC:Ljava/lang/Boolean;

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lfreemarker/core/ISOLikeTemplateDateFormat;->zonelessInput:Z

    if-nez v0, :cond_37

    goto :goto_33

    .line 190
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_37

    :goto_33
    sget-object v0, Lfreemarker/template/utility/DateUtil;->UTC:Ljava/util/TimeZone;

    :goto_35
    move-object v6, v0

    goto :goto_3a

    :cond_37
    iget-object v0, p0, Lfreemarker/core/ISOLikeTemplateDateFormat;->timeZone:Ljava/util/TimeZone;

    goto :goto_35

    :goto_3a
    iget-object v0, p0, Lfreemarker/core/ISOLikeTemplateDateFormat;->factory:Lfreemarker/core/ISOLikeTemplateDateFormatFactory;

    iget-object v2, p0, Lfreemarker/core/ISOLikeTemplateDateFormat;->env:Lfreemarker/core/Environment;

    .line 191
    invoke-virtual {v0, v2}, Lfreemarker/core/ISOLikeTemplateDateFormatFactory;->getISOBuiltInCalendar(Lfreemarker/core/Environment;)Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;

    move-result-object v7

    move-object v0, p0

    move v2, v3

    move v3, p1

    .line 182
    invoke-virtual/range {v0 .. v7}, Lfreemarker/core/ISOLikeTemplateDateFormat;->format(Ljava/util/Date;ZZZILjava/util/TimeZone;Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getDateDescription()Ljava/lang/String;
.end method

.method protected abstract getDateTimeDescription()Ljava/lang/String;
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 3

    .line 238
    iget v0, p0, Lfreemarker/core/ISOLikeTemplateDateFormat;->dateType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    .line 242
    const-string v0, "<error: wrong format dateType>"

    return-object v0

    .line 241
    :cond_e
    invoke-virtual {p0}, Lfreemarker/core/ISOLikeTemplateDateFormat;->getDateTimeDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 239
    :cond_13
    invoke-virtual {p0}, Lfreemarker/core/ISOLikeTemplateDateFormat;->getDateDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 240
    :cond_18
    invoke-virtual {p0}, Lfreemarker/core/ISOLikeTemplateDateFormat;->getTimeDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTimeDescription()Ljava/lang/String;
.end method

.method public final isLocaleBound()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTimeZoneBound()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract isXSMode()Z
.end method

.method public bridge synthetic parse(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplateValueFormatException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/ISOLikeTemplateDateFormat;->parse(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public final parse(Ljava/lang/String;I)Ljava/util/Date;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/UnparsableValueException;
        }
    .end annotation

    const-string v0, "Unexpected date type: "

    .line 204
    iget-object v1, p0, Lfreemarker/core/ISOLikeTemplateDateFormat;->factory:Lfreemarker/core/ISOLikeTemplateDateFormatFactory;

    iget-object v2, p0, Lfreemarker/core/ISOLikeTemplateDateFormat;->env:Lfreemarker/core/Environment;

    invoke-virtual {v1, v2}, Lfreemarker/core/ISOLikeTemplateDateFormatFactory;->getCalendarFieldsToDateCalculator(Lfreemarker/core/Environment;)Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;

    move-result-object v1

    .line 205
    iget-object v2, p0, Lfreemarker/core/ISOLikeTemplateDateFormat;->forceUTC:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_13

    sget-object v2, Lfreemarker/template/utility/DateUtil;->UTC:Ljava/util/TimeZone;

    goto :goto_15

    :cond_13
    iget-object v2, p0, Lfreemarker/core/ISOLikeTemplateDateFormat;->timeZone:Ljava/util/TimeZone;

    :goto_15
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1f

    .line 208
    :try_start_18
    invoke-virtual {p0, p1, v2, v1}, Lfreemarker/core/ISOLikeTemplateDateFormat;->parseDate(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    :catch_1d
    move-exception p1

    goto :goto_42

    :cond_1f
    const/4 v3, 0x1

    if-ne p2, v3, :cond_27

    .line 210
    invoke-virtual {p0, p1, v2, v1}, Lfreemarker/core/ISOLikeTemplateDateFormat;->parseTime(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    :cond_27
    const/4 v3, 0x3

    if-ne p2, v3, :cond_2f

    .line 212
    invoke-virtual {p0, p1, v2, v1}, Lfreemarker/core/ISOLikeTemplateDateFormat;->parseDateTime(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 214
    :cond_2f
    new-instance p1, Lfreemarker/core/BugException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_42
    .catch Lfreemarker/template/utility/DateUtil$DateParseException; {:try_start_18 .. :try_end_42} :catch_1d

    .line 217
    :goto_42
    new-instance p2, Lfreemarker/core/UnparsableValueException;

    invoke-virtual {p1}, Lfreemarker/template/utility/DateUtil$DateParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lfreemarker/core/UnparsableValueException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected abstract parseDate(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$DateParseException;
        }
    .end annotation
.end method

.method protected abstract parseDateTime(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$DateParseException;
        }
    .end annotation
.end method

.method protected abstract parseTime(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$DateParseException;
        }
    .end annotation
.end method
