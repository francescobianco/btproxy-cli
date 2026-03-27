.class abstract Lfreemarker/core/ISOLikeTemplateDateFormatFactory;
.super Lfreemarker/core/TemplateDateFormatFactory;
.source "ISOLikeTemplateDateFormatFactory.java"


# static fields
.field private static final CAL_TO_DATE_CONVERTER_KEY:Ljava/lang/Object;

.field private static final DATE_TO_CAL_CONVERTER_KEY:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/core/ISOLikeTemplateDateFormatFactory;->DATE_TO_CAL_CONVERTER_KEY:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/core/ISOLikeTemplateDateFormatFactory;->CAL_TO_DATE_CONVERTER_KEY:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lfreemarker/core/TemplateDateFormatFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalendarFieldsToDateCalculator(Lfreemarker/core/Environment;)Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;
    .registers 4

    .line 44
    sget-object v0, Lfreemarker/core/ISOLikeTemplateDateFormatFactory;->CAL_TO_DATE_CONVERTER_KEY:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->getCustomState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;

    if-nez v1, :cond_12

    .line 46
    new-instance v1, Lfreemarker/template/utility/DateUtil$TrivialCalendarFieldsToDateConverter;

    invoke-direct {v1}, Lfreemarker/template/utility/DateUtil$TrivialCalendarFieldsToDateConverter;-><init>()V

    .line 47
    invoke-virtual {p1, v0, v1}, Lfreemarker/core/Environment;->setCustomState(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v1
.end method

.method public getISOBuiltInCalendar(Lfreemarker/core/Environment;)Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;
    .registers 4

    .line 35
    sget-object v0, Lfreemarker/core/ISOLikeTemplateDateFormatFactory;->DATE_TO_CAL_CONVERTER_KEY:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->getCustomState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;

    if-nez v1, :cond_12

    .line 37
    new-instance v1, Lfreemarker/template/utility/DateUtil$TrivialDateToISO8601CalendarFactory;

    invoke-direct {v1}, Lfreemarker/template/utility/DateUtil$TrivialDateToISO8601CalendarFactory;-><init>()V

    .line 38
    invoke-virtual {p1, v0, v1}, Lfreemarker/core/Environment;->setCustomState(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v1
.end method
