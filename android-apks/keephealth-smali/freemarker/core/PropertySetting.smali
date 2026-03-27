.class final Lfreemarker/core/PropertySetting;
.super Lfreemarker/core/TemplateElement;
.source "PropertySetting.java"


# static fields
.field static final SETTING_NAMES:[Ljava/lang/String;


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Lfreemarker/core/Expression;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x15

    .line 42
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "booleanFormat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "boolean_format"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "classicCompatible"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "classic_compatible"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dateFormat"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date_format"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "datetimeFormat"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "datetime_format"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "locale"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "numberFormat"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "number_format"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "outputEncoding"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "output_encoding"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sqlDateAndTimeTimeZone"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sql_date_and_time_time_zone"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "timeFormat"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "timeZone"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "time_format"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "time_zone"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "urlEscapingCharset"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "url_escaping_charset"

    aput-object v2, v0, v1

    sput-object v0, Lfreemarker/core/PropertySetting;->SETTING_NAMES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lfreemarker/core/Token;Lfreemarker/core/FMParserTokenManager;Lfreemarker/core/Expression;Lfreemarker/template/Configuration;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 69
    iget-object v0, p1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    .line 70
    sget-object v1, Lfreemarker/core/PropertySetting;->SETTING_NAMES:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_7a

    .line 71
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 72
    invoke-static {p4, v1}, Lfreemarker/template/_TemplateAPI;->getConfigurationSettingNames(Lfreemarker/template/Configuration;Z)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    const/4 v2, 0x0

    .line 73
    invoke-static {p4, v2}, Lfreemarker/template/_TemplateAPI;->getConfigurationSettingNames(Lfreemarker/template/Configuration;Z)Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6a

    .line 77
    const-string p4, "Unknown setting name: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ". The allowed setting names are: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget p2, p2, Lfreemarker/core/FMParserTokenManager;->namingConvention:I

    const/16 p4, 0xa

    const/16 v0, 0xb

    if-eq p2, p4, :cond_43

    goto :goto_44

    :cond_43
    move p2, v0

    :goto_44
    move p4, v2

    .line 89
    :goto_45
    sget-object v3, Lfreemarker/core/PropertySetting;->SETTING_NAMES:[Ljava/lang/String;

    array-length v4, v3

    if-ge p4, v4, :cond_6f

    .line 90
    aget-object v4, v3, p4

    .line 91
    invoke-static {v4}, Lfreemarker/core/_CoreStringUtils;->getIdentifierNamingConvention(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc

    if-ne p2, v5, :cond_57

    if-eq v4, v0, :cond_67

    goto :goto_59

    :cond_57
    if-eq v4, v5, :cond_67

    :goto_59
    if-eqz v1, :cond_5d

    move v1, v2

    goto :goto_62

    .line 98
    :cond_5d
    const-string v4, ", "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :goto_62
    aget-object v3, v3, p4

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_67
    add-int/lit8 p4, p4, 0x1

    goto :goto_45

    .line 74
    :cond_6a
    const-string p2, "The setting name is recognized, but changing this setting from inside a template isn\'t supported."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_6f
    new-instance p2, Lfreemarker/core/ParseException;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw p2

    .line 108
    :cond_7a
    iput-object v0, p0, Lfreemarker/core/PropertySetting;->key:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lfreemarker/core/PropertySetting;->value:Lfreemarker/core/Expression;

    return-void
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lfreemarker/core/PropertySetting;->value:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 116
    instance-of v1, v0, Lfreemarker/template/TemplateScalarModel;

    if-eqz v1, :cond_11

    .line 117
    check-cast v0, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 118
    :cond_11
    instance-of v1, v0, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v1, :cond_23

    .line 119
    check-cast v0, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "true"

    goto :goto_38

    :cond_20
    const-string v0, "false"

    goto :goto_38

    .line 120
    :cond_23
    instance-of v1, v0, Lfreemarker/template/TemplateNumberModel;

    if-eqz v1, :cond_32

    .line 121
    check-cast v0, Lfreemarker/template/TemplateNumberModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 123
    :cond_32
    iget-object v0, p0, Lfreemarker/core/PropertySetting;->value:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->evalAndCoerceToStringOrUnsupportedMarkup(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_38
    iget-object v1, p0, Lfreemarker/core/PropertySetting;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lfreemarker/core/Environment;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 4

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_c

    const/16 v1, 0x3c

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    :cond_c
    invoke-virtual {p0}, Lfreemarker/core/PropertySetting;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Lfreemarker/core/PropertySetting;->key:Ljava/lang/String;

    invoke-static {v1}, Lfreemarker/core/_CoreStringUtils;->toFTLTopLevelTragetIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    iget-object v1, p0, Lfreemarker/core/PropertySetting;->value:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_36

    .line 138
    const-string p1, "/>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 144
    const-string v0, "#setting"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 165
    sget-object p1, Lfreemarker/core/ParameterRole;->ITEM_VALUE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 166
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 164
    :cond_e
    sget-object p1, Lfreemarker/core/ParameterRole;->ITEM_KEY:Lfreemarker/core/ParameterRole;

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 156
    iget-object p1, p0, Lfreemarker/core/PropertySetting;->value:Lfreemarker/core/Expression;

    return-object p1

    .line 157
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 155
    :cond_e
    iget-object p1, p0, Lfreemarker/core/PropertySetting;->key:Ljava/lang/String;

    return-object p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
