.class Lfreemarker/core/BuiltInsForDates$iso_utc_or_local_BI;
.super Lfreemarker/core/BuiltInsForDates$AbstractISOBI;
.source "BuiltInsForDates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForDates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "iso_utc_or_local_BI"
.end annotation


# instance fields
.field private final useUTC:Z


# direct methods
.method constructor <init>(Ljava/lang/Boolean;IZ)V
    .registers 4

    .line 153
    invoke-direct {p0, p1, p2}, Lfreemarker/core/BuiltInsForDates$AbstractISOBI;-><init>(Ljava/lang/Boolean;I)V

    .line 154
    iput-boolean p3, p0, Lfreemarker/core/BuiltInsForDates$iso_utc_or_local_BI;->useUTC:Z

    return-void
.end method


# virtual methods
.method protected calculateResult(Ljava/util/Date;ILfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p2}, Lfreemarker/core/BuiltInsForDates$iso_utc_or_local_BI;->checkDateTypeNotUnknown(I)V

    .line 162
    new-instance v0, Lfreemarker/template/SimpleScalar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_b

    move v4, v2

    goto :goto_c

    :cond_b
    move v4, v1

    :goto_c
    const/4 v3, 0x2

    if-eq p2, v3, :cond_11

    move v5, v2

    goto :goto_12

    :cond_11
    move v5, v1

    .line 166
    :goto_12
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/BuiltInsForDates$iso_utc_or_local_BI;->shouldShowOffset(Ljava/util/Date;ILfreemarker/core/Environment;)Z

    move-result v6

    iget v7, p0, Lfreemarker/core/BuiltInsForDates$iso_utc_or_local_BI;->accuracy:I

    iget-boolean p2, p0, Lfreemarker/core/BuiltInsForDates$iso_utc_or_local_BI;->useUTC:Z

    if-eqz p2, :cond_20

    sget-object p2, Lfreemarker/template/utility/DateUtil;->UTC:Ljava/util/TimeZone;

    :goto_1e
    move-object v8, p2

    goto :goto_34

    .line 170
    :cond_20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Lfreemarker/core/Environment;->shouldUseSQLDTTZ(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 171
    invoke-virtual {p3}, Lfreemarker/core/Environment;->getSQLDateAndTimeTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    goto :goto_1e

    .line 172
    :cond_2f
    invoke-virtual {p3}, Lfreemarker/core/Environment;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    goto :goto_1e

    .line 173
    :goto_34
    invoke-virtual {p3}, Lfreemarker/core/Environment;->getISOBuiltInCalendarFactory()Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;

    move-result-object v9

    move-object v3, p1

    .line 162
    invoke-static/range {v3 .. v9}, Lfreemarker/template/utility/DateUtil;->dateToISO8601String(Ljava/util/Date;ZZZILjava/util/TimeZone;Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
