.class abstract Lfreemarker/core/BuiltInsForDates$AbstractISOBI;
.super Lfreemarker/core/BuiltInForDate;
.source "BuiltInsForDates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForDates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractISOBI"
.end annotation


# instance fields
.field protected final accuracy:I

.field protected final showOffset:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Ljava/lang/Boolean;I)V
    .registers 3

    .line 185
    invoke-direct {p0}, Lfreemarker/core/BuiltInForDate;-><init>()V

    .line 186
    iput-object p1, p0, Lfreemarker/core/BuiltInsForDates$AbstractISOBI;->showOffset:Ljava/lang/Boolean;

    .line 187
    iput p2, p0, Lfreemarker/core/BuiltInsForDates$AbstractISOBI;->accuracy:I

    return-void
.end method


# virtual methods
.method protected checkDateTypeNotUnknown(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    if-eqz p1, :cond_3

    return-void

    .line 193
    :cond_3
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    new-instance v0, Lfreemarker/core/_ErrorDescriptionBuilder;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForDates$AbstractISOBI;->key:Ljava/lang/String;

    const-string v2, " needs a value where it\'s known if it\'s a date (no time part), time, or date-time value:"

    const-string v3, "The value of the following has unknown date type, but ?"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/core/_ErrorDescriptionBuilder;-><init>([Ljava/lang/Object;)V

    iget-object v1, p0, Lfreemarker/core/BuiltInsForDates$AbstractISOBI;->target:Lfreemarker/core/Expression;

    .line 196
    invoke-virtual {v0, v1}, Lfreemarker/core/_ErrorDescriptionBuilder;->blame(Lfreemarker/core/Expression;)Lfreemarker/core/_ErrorDescriptionBuilder;

    move-result-object v0

    const-string v1, "Use ?date, ?time, or ?datetime to tell FreeMarker the exact type."

    invoke-virtual {v0, v1}, Lfreemarker/core/_ErrorDescriptionBuilder;->tip(Ljava/lang/String;)Lfreemarker/core/_ErrorDescriptionBuilder;

    move-result-object v0

    invoke-direct {p1, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/_ErrorDescriptionBuilder;)V

    throw p1
.end method

.method protected shouldShowOffset(Ljava/util/Date;ILfreemarker/core/Environment;)Z
    .registers 5

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-ne p2, p3, :cond_5

    return v0

    .line 203
    :cond_5
    iget-object p2, p0, Lfreemarker/core/BuiltInsForDates$AbstractISOBI;->showOffset:Ljava/lang/Boolean;

    if-eqz p2, :cond_e

    .line 204
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 207
    :cond_e
    instance-of p1, p1, Ljava/sql/Time;

    if-eqz p1, :cond_1a

    .line 208
    invoke-static {p0}, Lfreemarker/template/_TemplateAPI;->getTemplateLanguageVersionAsInt(Lfreemarker/core/TemplateObject;)I

    move-result p1

    sget p2, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_21:I

    if-ge p1, p2, :cond_1b

    :cond_1a
    const/4 v0, 0x1

    :cond_1b
    return v0
.end method
