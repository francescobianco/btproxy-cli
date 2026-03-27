.class public Lfreemarker/core/Configurable;
.super Ljava/lang/Object;
.source "Configurable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/Configurable$SettingStringParser;,
        Lfreemarker/core/Configurable$KeyValuePair;,
        Lfreemarker/core/Configurable$SettingValueAssignmentException;,
        Lfreemarker/core/Configurable$UnknownSettingException;
    }
.end annotation


# static fields
.field private static final ALLOWED_CLASSES_CAMEL_CASE:Ljava/lang/String; = "allowedClasses"

.field private static final ALLOWED_CLASSES_SNAKE_CASE:Ljava/lang/String; = "allowed_classes"

.field public static final API_BUILTIN_ENABLED_KEY:Ljava/lang/String; = "api_builtin_enabled"

.field public static final API_BUILTIN_ENABLED_KEY_CAMEL_CASE:Ljava/lang/String; = "apiBuiltinEnabled"

.field public static final API_BUILTIN_ENABLED_KEY_SNAKE_CASE:Ljava/lang/String; = "api_builtin_enabled"

.field public static final ARITHMETIC_ENGINE_KEY:Ljava/lang/String; = "arithmetic_engine"

.field public static final ARITHMETIC_ENGINE_KEY_CAMEL_CASE:Ljava/lang/String; = "arithmeticEngine"

.field public static final ARITHMETIC_ENGINE_KEY_SNAKE_CASE:Ljava/lang/String; = "arithmetic_engine"

.field public static final ATTEMPT_EXCEPTION_REPORTER_KEY:Ljava/lang/String; = "attempt_exception_reporter"

.field public static final ATTEMPT_EXCEPTION_REPORTER_KEY_CAMEL_CASE:Ljava/lang/String; = "attemptExceptionReporter"

.field public static final ATTEMPT_EXCEPTION_REPORTER_KEY_SNAKE_CASE:Ljava/lang/String; = "attempt_exception_reporter"

.field public static final AUTO_FLUSH_KEY:Ljava/lang/String; = "auto_flush"

.field public static final AUTO_FLUSH_KEY_CAMEL_CASE:Ljava/lang/String; = "autoFlush"

.field public static final AUTO_FLUSH_KEY_SNAKE_CASE:Ljava/lang/String; = "auto_flush"

.field public static final AUTO_IMPORT_KEY:Ljava/lang/String; = "auto_import"

.field public static final AUTO_IMPORT_KEY_CAMEL_CASE:Ljava/lang/String; = "autoImport"

.field public static final AUTO_IMPORT_KEY_SNAKE_CASE:Ljava/lang/String; = "auto_import"

.field public static final AUTO_INCLUDE_KEY:Ljava/lang/String; = "auto_include"

.field public static final AUTO_INCLUDE_KEY_CAMEL_CASE:Ljava/lang/String; = "autoInclude"

.field public static final AUTO_INCLUDE_KEY_SNAKE_CASE:Ljava/lang/String; = "auto_include"

.field public static final BOOLEAN_FORMAT_KEY:Ljava/lang/String; = "boolean_format"

.field public static final BOOLEAN_FORMAT_KEY_CAMEL_CASE:Ljava/lang/String; = "booleanFormat"

.field public static final BOOLEAN_FORMAT_KEY_SNAKE_CASE:Ljava/lang/String; = "boolean_format"

.field public static final CLASSIC_COMPATIBLE_KEY:Ljava/lang/String; = "classic_compatible"

.field public static final CLASSIC_COMPATIBLE_KEY_CAMEL_CASE:Ljava/lang/String; = "classicCompatible"

.field public static final CLASSIC_COMPATIBLE_KEY_SNAKE_CASE:Ljava/lang/String; = "classic_compatible"

.field public static final CUSTOM_DATE_FORMATS_KEY:Ljava/lang/String; = "custom_date_formats"

.field public static final CUSTOM_DATE_FORMATS_KEY_CAMEL_CASE:Ljava/lang/String; = "customDateFormats"

.field public static final CUSTOM_DATE_FORMATS_KEY_SNAKE_CASE:Ljava/lang/String; = "custom_date_formats"

.field public static final CUSTOM_NUMBER_FORMATS_KEY:Ljava/lang/String; = "custom_number_formats"

.field public static final CUSTOM_NUMBER_FORMATS_KEY_CAMEL_CASE:Ljava/lang/String; = "customNumberFormats"

.field public static final CUSTOM_NUMBER_FORMATS_KEY_SNAKE_CASE:Ljava/lang/String; = "custom_number_formats"

.field static final C_FORMAT_STRING:Ljava/lang/String; = "c"

.field static final C_TRUE_FALSE:Ljava/lang/String; = "true,false"

.field public static final DATETIME_FORMAT_KEY:Ljava/lang/String; = "datetime_format"

.field public static final DATETIME_FORMAT_KEY_CAMEL_CASE:Ljava/lang/String; = "datetimeFormat"

.field public static final DATETIME_FORMAT_KEY_SNAKE_CASE:Ljava/lang/String; = "datetime_format"

.field public static final DATE_FORMAT_KEY:Ljava/lang/String; = "date_format"

.field public static final DATE_FORMAT_KEY_CAMEL_CASE:Ljava/lang/String; = "dateFormat"

.field public static final DATE_FORMAT_KEY_SNAKE_CASE:Ljava/lang/String; = "date_format"

.field private static final DEFAULT:Ljava/lang/String; = "default"

.field private static final DEFAULT_2_3_0:Ljava/lang/String; = "default_2_3_0"

.field private static final JVM_DEFAULT:Ljava/lang/String; = "JVM default"

.field public static final LAZY_AUTO_IMPORTS_KEY:Ljava/lang/String; = "lazy_auto_imports"

.field public static final LAZY_AUTO_IMPORTS_KEY_CAMEL_CASE:Ljava/lang/String; = "lazyAutoImports"

.field public static final LAZY_AUTO_IMPORTS_KEY_SNAKE_CASE:Ljava/lang/String; = "lazy_auto_imports"

.field public static final LAZY_IMPORTS_KEY:Ljava/lang/String; = "lazy_imports"

.field public static final LAZY_IMPORTS_KEY_CAMEL_CASE:Ljava/lang/String; = "lazyImports"

.field public static final LAZY_IMPORTS_KEY_SNAKE_CASE:Ljava/lang/String; = "lazy_imports"

.field public static final LOCALE_KEY:Ljava/lang/String; = "locale"

.field public static final LOCALE_KEY_CAMEL_CASE:Ljava/lang/String; = "locale"

.field public static final LOCALE_KEY_SNAKE_CASE:Ljava/lang/String; = "locale"

.field public static final LOG_TEMPLATE_EXCEPTIONS_KEY:Ljava/lang/String; = "log_template_exceptions"

.field public static final LOG_TEMPLATE_EXCEPTIONS_KEY_CAMEL_CASE:Ljava/lang/String; = "logTemplateExceptions"

.field public static final LOG_TEMPLATE_EXCEPTIONS_KEY_SNAKE_CASE:Ljava/lang/String; = "log_template_exceptions"

.field public static final NEW_BUILTIN_CLASS_RESOLVER_KEY:Ljava/lang/String; = "new_builtin_class_resolver"

.field public static final NEW_BUILTIN_CLASS_RESOLVER_KEY_CAMEL_CASE:Ljava/lang/String; = "newBuiltinClassResolver"

.field public static final NEW_BUILTIN_CLASS_RESOLVER_KEY_SNAKE_CASE:Ljava/lang/String; = "new_builtin_class_resolver"

.field private static final NULL:Ljava/lang/String; = "null"

.field public static final NUMBER_FORMAT_KEY:Ljava/lang/String; = "number_format"

.field public static final NUMBER_FORMAT_KEY_CAMEL_CASE:Ljava/lang/String; = "numberFormat"

.field public static final NUMBER_FORMAT_KEY_SNAKE_CASE:Ljava/lang/String; = "number_format"

.field public static final OBJECT_WRAPPER_KEY:Ljava/lang/String; = "object_wrapper"

.field public static final OBJECT_WRAPPER_KEY_CAMEL_CASE:Ljava/lang/String; = "objectWrapper"

.field public static final OBJECT_WRAPPER_KEY_SNAKE_CASE:Ljava/lang/String; = "object_wrapper"

.field public static final OUTPUT_ENCODING_KEY:Ljava/lang/String; = "output_encoding"

.field public static final OUTPUT_ENCODING_KEY_CAMEL_CASE:Ljava/lang/String; = "outputEncoding"

.field public static final OUTPUT_ENCODING_KEY_SNAKE_CASE:Ljava/lang/String; = "output_encoding"

.field private static final SETTING_NAMES_CAMEL_CASE:[Ljava/lang/String;

.field private static final SETTING_NAMES_SNAKE_CASE:[Ljava/lang/String;

.field public static final SHOW_ERROR_TIPS_KEY:Ljava/lang/String; = "show_error_tips"

.field public static final SHOW_ERROR_TIPS_KEY_CAMEL_CASE:Ljava/lang/String; = "showErrorTips"

.field public static final SHOW_ERROR_TIPS_KEY_SNAKE_CASE:Ljava/lang/String; = "show_error_tips"

.field public static final SQL_DATE_AND_TIME_TIME_ZONE_KEY:Ljava/lang/String; = "sql_date_and_time_time_zone"

.field public static final SQL_DATE_AND_TIME_TIME_ZONE_KEY_CAMEL_CASE:Ljava/lang/String; = "sqlDateAndTimeTimeZone"

.field public static final SQL_DATE_AND_TIME_TIME_ZONE_KEY_SNAKE_CASE:Ljava/lang/String; = "sql_date_and_time_time_zone"

.field public static final STRICT_BEAN_MODELS:Ljava/lang/String; = "strict_bean_models"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRICT_BEAN_MODELS_KEY:Ljava/lang/String; = "strict_bean_models"

.field public static final STRICT_BEAN_MODELS_KEY_CAMEL_CASE:Ljava/lang/String; = "strictBeanModels"

.field public static final STRICT_BEAN_MODELS_KEY_SNAKE_CASE:Ljava/lang/String; = "strict_bean_models"

.field public static final TEMPLATE_EXCEPTION_HANDLER_KEY:Ljava/lang/String; = "template_exception_handler"

.field public static final TEMPLATE_EXCEPTION_HANDLER_KEY_CAMEL_CASE:Ljava/lang/String; = "templateExceptionHandler"

.field public static final TEMPLATE_EXCEPTION_HANDLER_KEY_SNAKE_CASE:Ljava/lang/String; = "template_exception_handler"

.field public static final TIME_FORMAT_KEY:Ljava/lang/String; = "time_format"

.field public static final TIME_FORMAT_KEY_CAMEL_CASE:Ljava/lang/String; = "timeFormat"

.field public static final TIME_FORMAT_KEY_SNAKE_CASE:Ljava/lang/String; = "time_format"

.field public static final TIME_ZONE_KEY:Ljava/lang/String; = "time_zone"

.field public static final TIME_ZONE_KEY_CAMEL_CASE:Ljava/lang/String; = "timeZone"

.field public static final TIME_ZONE_KEY_SNAKE_CASE:Ljava/lang/String; = "time_zone"

.field public static final TRUNCATE_BUILTIN_ALGORITHM_KEY:Ljava/lang/String; = "truncate_builtin_algorithm"

.field public static final TRUNCATE_BUILTIN_ALGORITHM_KEY_CAMEL_CASE:Ljava/lang/String; = "truncateBuiltinAlgorithm"

.field public static final TRUNCATE_BUILTIN_ALGORITHM_KEY_SNAKE_CASE:Ljava/lang/String; = "truncate_builtin_algorithm"

.field private static final TRUSTED_TEMPLATES_CAMEL_CASE:Ljava/lang/String; = "trustedTemplates"

.field private static final TRUSTED_TEMPLATES_SNAKE_CASE:Ljava/lang/String; = "trusted_templates"

.field public static final URL_ESCAPING_CHARSET_KEY:Ljava/lang/String; = "url_escaping_charset"

.field public static final URL_ESCAPING_CHARSET_KEY_CAMEL_CASE:Ljava/lang/String; = "urlEscapingCharset"

.field public static final URL_ESCAPING_CHARSET_KEY_SNAKE_CASE:Ljava/lang/String; = "url_escaping_charset"

.field public static final WRAP_UNCHECKED_EXCEPTIONS_KEY:Ljava/lang/String; = "wrap_unchecked_exceptions"

.field public static final WRAP_UNCHECKED_EXCEPTIONS_KEY_CAMEL_CASE:Ljava/lang/String; = "wrapUncheckedExceptions"

.field public static final WRAP_UNCHECKED_EXCEPTIONS_KEY_SNAKE_CASE:Ljava/lang/String; = "wrap_unchecked_exceptions"


# instance fields
.field private apiBuiltinEnabled:Ljava/lang/Boolean;

.field private arithmeticEngine:Lfreemarker/core/ArithmeticEngine;

.field private attemptExceptionReporter:Lfreemarker/template/AttemptExceptionReporter;

.field private autoFlush:Ljava/lang/Boolean;

.field private autoImports:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private autoIncludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private booleanFormat:Ljava/lang/String;

.field private classicCompatible:Ljava/lang/Integer;

.field private customAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private customDateFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lfreemarker/core/TemplateDateFormatFactory;",
            ">;"
        }
    .end annotation
.end field

.field private customNumberFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lfreemarker/core/TemplateNumberFormatFactory;",
            ">;"
        }
    .end annotation
.end field

.field private dateFormat:Ljava/lang/String;

.field private dateTimeFormat:Ljava/lang/String;

.field private falseStringValue:Ljava/lang/String;

.field private lazyAutoImports:Ljava/lang/Boolean;

.field private lazyAutoImportsSet:Z

.field private lazyImports:Ljava/lang/Boolean;

.field private locale:Ljava/util/Locale;

.field private logTemplateExceptions:Ljava/lang/Boolean;

.field private newBuiltinClassResolver:Lfreemarker/core/TemplateClassResolver;

.field private numberFormat:Ljava/lang/String;

.field private objectWrapper:Lfreemarker/template/ObjectWrapper;

.field private outputEncoding:Ljava/lang/String;

.field private outputEncodingSet:Z

.field private parent:Lfreemarker/core/Configurable;

.field private properties:Ljava/util/Properties;

.field private showErrorTips:Ljava/lang/Boolean;

.field private sqlDataAndTimeTimeZone:Ljava/util/TimeZone;

.field private sqlDataAndTimeTimeZoneSet:Z

.field private templateExceptionHandler:Lfreemarker/template/TemplateExceptionHandler;

.field private timeFormat:Ljava/lang/String;

.field private timeZone:Ljava/util/TimeZone;

.field private trueStringValue:Ljava/lang/String;

.field private truncateBuiltinAlgorithm:Lfreemarker/core/TruncateBuiltinAlgorithm;

.field private urlEscapingCharset:Ljava/lang/String;

.field private urlEscapingCharsetSet:Z

.field private wrapUncheckedExceptions:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 25

    const/16 v0, 0x1d

    .line 298
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "api_builtin_enabled"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "arithmetic_engine"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "attempt_exception_reporter"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "auto_flush"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "auto_import"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "auto_include"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "boolean_format"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "classic_compatible"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "custom_date_formats"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "custom_number_formats"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "date_format"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "datetime_format"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "lazy_auto_imports"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "lazy_imports"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const/16 v2, 0xe

    const-string v17, "locale"

    aput-object v17, v1, v2

    const-string v18, "log_template_exceptions"

    const/16 v19, 0xf

    aput-object v18, v1, v19

    const-string v18, "new_builtin_class_resolver"

    const/16 v20, 0x10

    aput-object v18, v1, v20

    const-string v18, "number_format"

    const/16 v21, 0x11

    aput-object v18, v1, v21

    const-string v18, "object_wrapper"

    const/16 v22, 0x12

    aput-object v18, v1, v22

    const-string v18, "output_encoding"

    const/16 v23, 0x13

    aput-object v18, v1, v23

    const/16 v18, 0x14

    const-string v24, "show_error_tips"

    aput-object v24, v1, v18

    const/16 v18, 0x15

    const-string v24, "sql_date_and_time_time_zone"

    aput-object v24, v1, v18

    const/16 v18, 0x16

    const-string v24, "strict_bean_models"

    aput-object v24, v1, v18

    const/16 v18, 0x17

    const-string v24, "template_exception_handler"

    aput-object v24, v1, v18

    const/16 v18, 0x18

    const-string v24, "time_format"

    aput-object v24, v1, v18

    const/16 v18, 0x19

    const-string v24, "time_zone"

    aput-object v24, v1, v18

    const/16 v18, 0x1a

    const-string v24, "truncate_builtin_algorithm"

    aput-object v24, v1, v18

    const/16 v18, 0x1b

    const-string v24, "url_escaping_charset"

    aput-object v24, v1, v18

    const/16 v18, 0x1c

    const-string v24, "wrap_unchecked_exceptions"

    aput-object v24, v1, v18

    sput-object v1, Lfreemarker/core/Configurable;->SETTING_NAMES_SNAKE_CASE:[Ljava/lang/String;

    .line 331
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "apiBuiltinEnabled"

    aput-object v1, v0, v3

    const-string v1, "arithmeticEngine"

    aput-object v1, v0, v4

    const-string v1, "attemptExceptionReporter"

    aput-object v1, v0, v5

    const-string v1, "autoFlush"

    aput-object v1, v0, v6

    const-string v1, "autoImport"

    aput-object v1, v0, v7

    const-string v1, "autoInclude"

    aput-object v1, v0, v8

    const-string v1, "booleanFormat"

    aput-object v1, v0, v9

    const-string v1, "classicCompatible"

    aput-object v1, v0, v10

    const-string v1, "customDateFormats"

    aput-object v1, v0, v11

    const-string v1, "customNumberFormats"

    aput-object v1, v0, v12

    const-string v1, "dateFormat"

    aput-object v1, v0, v13

    const-string v1, "datetimeFormat"

    aput-object v1, v0, v14

    const-string v1, "lazyAutoImports"

    aput-object v1, v0, v15

    const-string v1, "lazyImports"

    aput-object v1, v0, v16

    aput-object v17, v0, v2

    const-string v1, "logTemplateExceptions"

    aput-object v1, v0, v19

    const-string v1, "newBuiltinClassResolver"

    aput-object v1, v0, v20

    const-string v1, "numberFormat"

    aput-object v1, v0, v21

    const-string v1, "objectWrapper"

    aput-object v1, v0, v22

    const-string v1, "outputEncoding"

    aput-object v1, v0, v23

    const/16 v1, 0x14

    const-string v2, "showErrorTips"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sqlDateAndTimeTimeZone"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "strictBeanModels"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "templateExceptionHandler"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "timeFormat"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "timeZone"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "truncateBuiltinAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "urlEscapingCharset"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "wrapUncheckedExceptions"

    aput-object v2, v0, v1

    sput-object v0, Lfreemarker/core/Configurable;->SETTING_NAMES_CAMEL_CASE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 410
    sget-object v0, Lfreemarker/template/Configuration;->DEFAULT_INCOMPATIBLE_IMPROVEMENTS:Lfreemarker/template/Version;

    invoke-direct {p0, v0}, Lfreemarker/core/Configurable;-><init>(Lfreemarker/template/Version;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/Configurable;)V
    .registers 3

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iput-object p1, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    .line 502
    new-instance v0, Ljava/util/Properties;

    iget-object p1, p1, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    invoke-direct {v0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    .line 503
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Lfreemarker/template/Version;)V
    .registers 6

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    invoke-static {p1}, Lfreemarker/template/_TemplateAPI;->checkVersionNotNullAndSupported(Lfreemarker/template/Version;)V

    const/4 v0, 0x0

    .line 421
    iput-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    .line 422
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    .line 424
    invoke-static {}, Lfreemarker/template/_TemplateAPI;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/core/Configurable;->locale:Ljava/util/Locale;

    .line 425
    iget-object v2, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v3, "locale"

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 427
    invoke-static {}, Lfreemarker/template/_TemplateAPI;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/core/Configurable;->timeZone:Ljava/util/TimeZone;

    .line 428
    iget-object v2, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v3, "time_zone"

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 430
    iput-object v0, p0, Lfreemarker/core/Configurable;->sqlDataAndTimeTimeZone:Ljava/util/TimeZone;

    .line 431
    iget-object v1, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v2, "sql_date_and_time_time_zone"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 433
    const-string v0, "number"

    iput-object v0, p0, Lfreemarker/core/Configurable;->numberFormat:Ljava/lang/String;

    .line 434
    iget-object v1, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v2, "number_format"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 436
    const-string v0, ""

    iput-object v0, p0, Lfreemarker/core/Configurable;->timeFormat:Ljava/lang/String;

    .line 437
    iget-object v1, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v2, "time_format"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 439
    iput-object v0, p0, Lfreemarker/core/Configurable;->dateFormat:Ljava/lang/String;

    .line 440
    iget-object v1, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v2, "date_format"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 442
    iput-object v0, p0, Lfreemarker/core/Configurable;->dateTimeFormat:Ljava/lang/String;

    .line 443
    iget-object v1, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v2, "datetime_format"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 445
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/core/Configurable;->classicCompatible:Ljava/lang/Integer;

    .line 446
    iget-object v2, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v3, "classic_compatible"

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    invoke-static {p1}, Lfreemarker/template/_TemplateAPI;->getDefaultTemplateExceptionHandler(Lfreemarker/template/Version;)Lfreemarker/template/TemplateExceptionHandler;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/core/Configurable;->templateExceptionHandler:Lfreemarker/template/TemplateExceptionHandler;

    .line 449
    iget-object v2, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "template_exception_handler"

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 451
    invoke-static {p1}, Lfreemarker/template/_TemplateAPI;->getDefaultWrapUncheckedExceptions(Lfreemarker/template/Version;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/core/Configurable;->wrapUncheckedExceptions:Ljava/lang/Boolean;

    .line 453
    invoke-static {p1}, Lfreemarker/template/_TemplateAPI;->getDefaultAttemptExceptionReporter(Lfreemarker/template/Version;)Lfreemarker/template/AttemptExceptionReporter;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/core/Configurable;->attemptExceptionReporter:Lfreemarker/template/AttemptExceptionReporter;

    .line 455
    sget-object v1, Lfreemarker/core/ArithmeticEngine;->BIGDECIMAL_ENGINE:Lfreemarker/core/ArithmeticEngine$BigDecimalEngine;

    iput-object v1, p0, Lfreemarker/core/Configurable;->arithmeticEngine:Lfreemarker/core/ArithmeticEngine;

    .line 456
    iget-object v2, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "arithmetic_engine"

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 458
    invoke-static {p1}, Lfreemarker/template/Configuration;->getDefaultObjectWrapper(Lfreemarker/template/Version;)Lfreemarker/template/ObjectWrapper;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/core/Configurable;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    .line 461
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lfreemarker/core/Configurable;->autoFlush:Ljava/lang/Boolean;

    .line 462
    iget-object v2, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v3, "auto_flush"

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 464
    sget-object v1, Lfreemarker/core/TemplateClassResolver;->UNRESTRICTED_RESOLVER:Lfreemarker/core/TemplateClassResolver;

    iput-object v1, p0, Lfreemarker/core/Configurable;->newBuiltinClassResolver:Lfreemarker/core/TemplateClassResolver;

    .line 465
    iget-object v2, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "new_builtin_class_resolver"

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 467
    sget-object v1, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->ASCII_INSTANCE:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;

    iput-object v1, p0, Lfreemarker/core/Configurable;->truncateBuiltinAlgorithm:Lfreemarker/core/TruncateBuiltinAlgorithm;

    .line 469
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lfreemarker/core/Configurable;->showErrorTips:Ljava/lang/Boolean;

    .line 470
    iget-object v2, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v3, "show_error_tips"

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 472
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lfreemarker/core/Configurable;->apiBuiltinEnabled:Ljava/lang/Boolean;

    .line 473
    iget-object v2, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v3, "api_builtin_enabled"

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 476
    invoke-static {p1}, Lfreemarker/template/_TemplateAPI;->getDefaultLogTemplateExceptions(Lfreemarker/template/Version;)Z

    move-result p1

    .line 475
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Configurable;->logTemplateExceptions:Ljava/lang/Boolean;

    .line 477
    iget-object v1, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v2, "log_template_exceptions"

    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 482
    const-string p1, "true,false"

    invoke-virtual {p0, p1}, Lfreemarker/core/Configurable;->setBooleanFormat(Ljava/lang/String;)V

    .line 484
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    .line 486
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Configurable;->customDateFormats:Ljava/util/Map;

    .line 487
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Configurable;->customNumberFormats:Ljava/util/Map;

    .line 489
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Configurable;->lazyImports:Ljava/lang/Boolean;

    const/4 p1, 0x1

    .line 490
    iput-boolean p1, p0, Lfreemarker/core/Configurable;->lazyAutoImportsSet:Z

    .line 492
    invoke-direct {p0}, Lfreemarker/core/Configurable;->initAutoImportsMap()V

    .line 493
    invoke-direct {p0}, Lfreemarker/core/Configurable;->initAutoIncludesList()V

    return-void
.end method

.method private addAutoInclude(Ljava/lang/String;Z)V
    .registers 4

    .line 2059
    monitor-enter p0

    .line 2060
    :try_start_1
    iget-object v0, p0, Lfreemarker/core/Configurable;->autoIncludes:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 2061
    invoke-direct {p0}, Lfreemarker/core/Configurable;->initAutoIncludesList()V

    goto :goto_e

    :cond_9
    if-nez p2, :cond_e

    .line 2064
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2067
    :cond_e
    :goto_e
    iget-object p2, p0, Lfreemarker/core/Configurable;->autoIncludes:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2068
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw p1
.end method

.method private classicCompatibilityIntToString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 583
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_d

    const-string p1, "false"

    return-object p1

    .line 584
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    const-string p1, "true"

    return-object p1

    .line 585
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getNullBooleanFormatErrorDescription()Lfreemarker/core/_ErrorDescriptionBuilder;
    .registers 7

    .line 1052
    new-instance v0, Lfreemarker/core/_ErrorDescriptionBuilder;

    new-instance v1, Lfreemarker/core/_DelayedJQuote;

    .line 1054
    invoke-virtual {p0}, Lfreemarker/core/Configurable;->getBooleanFormat()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    .line 1055
    invoke-virtual {p0}, Lfreemarker/core/Configurable;->getBooleanFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true,false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, ", which is the legacy deprecated default, and we treat it as if no format was set. This is the default configuration; you should provide the format explicitly for each place where you print a boolean."

    goto :goto_1c

    :cond_1a
    const-string v2, "."

    :goto_1c
    const-string v3, "Can\'t convert boolean to string automatically, because the \""

    const-string v4, "boolean_format"

    const-string v5, "\" setting was "

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/core/_ErrorDescriptionBuilder;-><init>([Ljava/lang/Object;)V

    const-string v1, "If you want \"true\"/\"false\" result as you are generating computer-language output (not for direct human consumption), then use \"?c\", like ${myBool?c}. (If you always generate computer-language output, then it\'s might be reasonable to set the \""

    const-string v2, "\" setting to \"c\" instead.)"

    filled-new-array {v1, v4, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "If you need the same two values on most places, the programmers can set the \""

    const-string v3, "\" setting to something like \"yes,no\". However, then it will be easy to unwillingly format booleans like that."

    filled-new-array {v2, v4, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Write something like myBool?string(\'yes\', \'no\') to specify boolean formatting in place."

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1060
    invoke-virtual {v0, v1}, Lfreemarker/core/_ErrorDescriptionBuilder;->tips([Ljava/lang/Object;)Lfreemarker/core/_ErrorDescriptionBuilder;

    move-result-object v0

    return-object v0
.end method

.method private initAutoImportsMap()V
    .registers 3

    .line 1932
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lfreemarker/core/Configurable;->autoImports:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private initAutoIncludesList()V
    .registers 3

    .line 2072
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfreemarker/core/Configurable;->autoIncludes:Ljava/util/ArrayList;

    return-void
.end method

.method private parseTimeZoneSettingValue(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 3

    .line 2863
    const-string v0, "JVM default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2864
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    goto :goto_11

    .line 2866
    :cond_d
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    :goto_11
    return-object p1
.end method

.method private validateFormatNames(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 908
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 909
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_78

    const/4 v1, 0x0

    .line 912
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_63

    .line 918
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x1

    .line 921
    :goto_26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 923
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_39

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 924
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Format name can only contain letters and digits: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 919
    :cond_4e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Format name must start with letter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 914
    :cond_63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Format names can\'t start with \'@\'. \'@\' is only used when referring to them from format strings. In: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 910
    :cond_78
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Format names can\'t be 0 length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_80
    return-void
.end method


# virtual methods
.method public addAutoImport(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1920
    monitor-enter p0

    .line 1921
    :try_start_1
    iget-object v0, p0, Lfreemarker/core/Configurable;->autoImports:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_9

    .line 1922
    invoke-direct {p0}, Lfreemarker/core/Configurable;->initAutoImportsMap()V

    goto :goto_c

    .line 1925
    :cond_9
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    :goto_c
    iget-object v0, p0, Lfreemarker/core/Configurable;->autoImports:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1928
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public addAutoInclude(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 2049
    invoke-direct {p0, p1, v0}, Lfreemarker/core/Configurable;->addAutoInclude(Ljava/lang/String;Z)V

    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 508
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/Configurable;

    .line 509
    iget-object v1, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    if-eqz v1, :cond_13

    .line 510
    new-instance v1, Ljava/util/Properties;

    iget-object v2, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    invoke-direct {v1, v2}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v1, v0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    .line 512
    :cond_13
    iget-object v1, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    if-eqz v1, :cond_1f

    .line 513
    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    .line 515
    :cond_1f
    iget-object v1, p0, Lfreemarker/core/Configurable;->autoImports:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_2b

    .line 516
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    iput-object v1, v0, Lfreemarker/core/Configurable;->autoImports:Ljava/util/LinkedHashMap;

    .line 518
    :cond_2b
    iget-object v1, p0, Lfreemarker/core/Configurable;->autoIncludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_37

    .line 519
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lfreemarker/core/Configurable;->autoIncludes:Ljava/util/ArrayList;

    :cond_37
    return-object v0
.end method

.method copyDirectCustomAttributes(Lfreemarker/core/Configurable;Z)V
    .registers 8

    .line 3052
    iget-object v0, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    monitor-enter v0

    .line 3053
    :try_start_3
    iget-object v1, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3054
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez p2, :cond_25

    .line 3055
    invoke-virtual {p1, v3}, Lfreemarker/core/Configurable;->isCustomAttributeSet(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 3056
    :cond_25
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_33

    .line 3057
    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lfreemarker/core/Configurable;->setCustomAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    .line 3059
    :cond_33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lfreemarker/core/Configurable;->setCustomAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    .line 3063
    :cond_3b
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method protected doAutoImportsAndIncludes(Lfreemarker/core/Environment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3149
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lfreemarker/core/Configurable;->doAutoImportsAndIncludes(Lfreemarker/core/Environment;)V

    :cond_7
    return-void
.end method

.method formatBoolean(ZZ)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    if-eqz p1, :cond_18

    .line 1027
    invoke-virtual {p0}, Lfreemarker/core/Configurable;->getTrueStringValue()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_17

    if-eqz p2, :cond_d

    .line 1030
    const-string p1, "true"

    return-object p1

    .line 1032
    :cond_d
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    invoke-direct {p0}, Lfreemarker/core/Configurable;->getNullBooleanFormatErrorDescription()Lfreemarker/core/_ErrorDescriptionBuilder;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/_ErrorDescriptionBuilder;)V

    throw p1

    :cond_17
    return-object p1

    .line 1038
    :cond_18
    invoke-virtual {p0}, Lfreemarker/core/Configurable;->getFalseStringValue()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2d

    if-eqz p2, :cond_23

    .line 1041
    const-string p1, "false"

    return-object p1

    .line 1043
    :cond_23
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    invoke-direct {p0}, Lfreemarker/core/Configurable;->getNullBooleanFormatErrorDescription()Lfreemarker/core/_ErrorDescriptionBuilder;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/_ErrorDescriptionBuilder;)V

    throw p1

    :cond_2d
    return-object p1
.end method

.method public getArithmeticEngine()Lfreemarker/core/ArithmeticEngine;
    .registers 2

    .line 1449
    iget-object v0, p0, Lfreemarker/core/Configurable;->arithmeticEngine:Lfreemarker/core/ArithmeticEngine;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    .line 1450
    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getArithmeticEngine()Lfreemarker/core/ArithmeticEngine;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getAttemptExceptionReporter()Lfreemarker/template/AttemptExceptionReporter;
    .registers 2

    .line 1422
    iget-object v0, p0, Lfreemarker/core/Configurable;->attemptExceptionReporter:Lfreemarker/template/AttemptExceptionReporter;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    .line 1423
    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getAttemptExceptionReporter()Lfreemarker/template/AttemptExceptionReporter;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getAutoFlush()Z
    .registers 2

    .line 1625
    iget-object v0, p0, Lfreemarker/core/Configurable;->autoFlush:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 1626
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_13

    :cond_9
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    if-eqz v0, :cond_12

    .line 1627
    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getAutoFlush()Z

    move-result v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method public getAutoImports()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2001
    iget-object v0, p0, Lfreemarker/core/Configurable;->autoImports:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getAutoImports()Ljava/util/Map;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getAutoImportsWithoutFallback()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2020
    iget-object v0, p0, Lfreemarker/core/Configurable;->autoImports:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getAutoIncludes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2117
    iget-object v0, p0, Lfreemarker/core/Configurable;->autoIncludes:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getAutoIncludes()Ljava/util/List;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getAutoIncludesWithoutFallback()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2136
    iget-object v0, p0, Lfreemarker/core/Configurable;->autoIncludes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBooleanFormat()Ljava/lang/String;
    .registers 2

    .line 1013
    iget-object v0, p0, Lfreemarker/core/Configurable;->booleanFormat:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getBooleanFormat()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getClassicCompatibleAsInt()I
    .registers 2

    .line 643
    iget-object v0, p0, Lfreemarker/core/Configurable;->classicCompatible:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getClassicCompatibleAsInt()I

    move-result v0

    :goto_f
    return v0
.end method

.method protected getCorrectedNameForUnknownSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method getCustomAttribute(Ljava/lang/Object;Lfreemarker/core/CustomAttribute;)Ljava/lang/Object;
    .registers 6

    .line 3029
    iget-object v0, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    monitor-enter v0

    .line 3030
    :try_start_3
    iget-object v1, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 3031
    iget-object v2, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 3032
    invoke-virtual {p2}, Lfreemarker/core/CustomAttribute;->create()Ljava/lang/Object;

    move-result-object v1

    .line 3033
    iget-object p2, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3035
    :cond_1c
    monitor-exit v0

    return-object v1

    :catchall_1e
    move-exception p1

    .line 3036
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public getCustomAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 3131
    iget-object v0, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    monitor-enter v0

    .line 3132
    :try_start_3
    iget-object v1, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    .line 3133
    iget-object v2, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3134
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 3136
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_23

    if-nez v1, :cond_22

    .line 3137
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    if-eqz v0, :cond_22

    .line 3138
    invoke-virtual {v0, p1}, Lfreemarker/core/Configurable;->getCustomAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_22
    return-object v1

    :catchall_23
    move-exception p1

    .line 3136
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public getCustomAttributeNames()[Ljava/lang/String;
    .registers 5

    .line 3090
    iget-object v0, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    monitor-enter v0

    .line 3091
    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 3092
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 3093
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-nez v3, :cond_12

    .line 3094
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 3097
    :cond_24
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_34
    move-exception v1

    .line 3098
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public getCustomDateFormat(Ljava/lang/String;)Lfreemarker/core/TemplateDateFormatFactory;
    .registers 3

    .line 1338
    iget-object v0, p0, Lfreemarker/core/Configurable;->customDateFormats:Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 1339
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/TemplateDateFormatFactory;

    if-eqz v0, :cond_d

    return-object v0

    .line 1344
    :cond_d
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Lfreemarker/core/Configurable;->getCustomDateFormat(Ljava/lang/String;)Lfreemarker/core/TemplateDateFormatFactory;

    move-result-object p1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return-object p1
.end method

.method public getCustomDateFormats()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lfreemarker/core/TemplateDateFormatFactory;",
            ">;"
        }
    .end annotation

    .line 1288
    iget-object v0, p0, Lfreemarker/core/Configurable;->customDateFormats:Ljava/util/Map;

    if-nez v0, :cond_a

    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getCustomDateFormats()Ljava/util/Map;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public getCustomDateFormatsWithoutFallback()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lfreemarker/core/TemplateDateFormatFactory;",
            ">;"
        }
    .end annotation

    .line 1298
    iget-object v0, p0, Lfreemarker/core/Configurable;->customDateFormats:Ljava/util/Map;

    return-object v0
.end method

.method public getCustomNumberFormat(Ljava/lang/String;)Lfreemarker/core/TemplateNumberFormatFactory;
    .registers 3

    .line 946
    iget-object v0, p0, Lfreemarker/core/Configurable;->customNumberFormats:Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 947
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/TemplateNumberFormatFactory;

    if-eqz v0, :cond_d

    return-object v0

    .line 952
    :cond_d
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Lfreemarker/core/Configurable;->getCustomNumberFormat(Ljava/lang/String;)Lfreemarker/core/TemplateNumberFormatFactory;

    move-result-object p1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return-object p1
.end method

.method public getCustomNumberFormats()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lfreemarker/core/TemplateNumberFormatFactory;",
            ">;"
        }
    .end annotation

    .line 875
    iget-object v0, p0, Lfreemarker/core/Configurable;->customNumberFormats:Ljava/util/Map;

    if-nez v0, :cond_a

    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getCustomNumberFormats()Ljava/util/Map;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public getCustomNumberFormatsWithoutFallback()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lfreemarker/core/TemplateNumberFormatFactory;",
            ">;"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lfreemarker/core/Configurable;->customNumberFormats:Ljava/util/Map;

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .registers 2

    .line 1150
    iget-object v0, p0, Lfreemarker/core/Configurable;->dateFormat:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getDateTimeFormat()Ljava/lang/String;
    .registers 2

    .line 1258
    iget-object v0, p0, Lfreemarker/core/Configurable;->dateTimeFormat:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getDateTimeFormat()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method protected getEnvironment()Lfreemarker/core/Environment;
    .registers 2

    .line 2914
    instance-of v0, p0, Lfreemarker/core/Environment;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lfreemarker/core/Environment;

    goto :goto_c

    .line 2916
    :cond_8
    invoke-static {}, Lfreemarker/core/Environment;->getCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method getFalseStringValue()Ljava/lang/String;
    .registers 2

    .line 1099
    iget-object v0, p0, Lfreemarker/core/Configurable;->booleanFormat:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfreemarker/core/Configurable;->falseStringValue:Ljava/lang/String;

    goto :goto_11

    :cond_7
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getFalseStringValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method

.method public getLazyAutoImports()Ljava/lang/Boolean;
    .registers 2

    .line 1864
    iget-boolean v0, p0, Lfreemarker/core/Configurable;->lazyAutoImportsSet:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfreemarker/core/Configurable;->lazyAutoImports:Ljava/lang/Boolean;

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getLazyAutoImports()Ljava/lang/Boolean;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getLazyImports()Z
    .registers 2

    .line 1816
    iget-object v0, p0, Lfreemarker/core/Configurable;->lazyImports:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getLazyImports()Z

    move-result v0

    :goto_f
    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .line 673
    iget-object v0, p0, Lfreemarker/core/Configurable;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getLocale()Ljava/util/Locale;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getLogTemplateExceptions()Z
    .registers 2

    .line 1758
    iget-object v0, p0, Lfreemarker/core/Configurable;->logTemplateExceptions:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 1759
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_13

    :cond_9
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    if-eqz v0, :cond_12

    .line 1760
    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getLogTemplateExceptions()Z

    move-result v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method public getNewBuiltinClassResolver()Lfreemarker/core/TemplateClassResolver;
    .registers 2

    .line 1585
    iget-object v0, p0, Lfreemarker/core/Configurable;->newBuiltinClassResolver:Lfreemarker/core/TemplateClassResolver;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    .line 1586
    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getNewBuiltinClassResolver()Lfreemarker/core/TemplateClassResolver;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getNumberFormat()Ljava/lang/String;
    .registers 2

    .line 845
    iget-object v0, p0, Lfreemarker/core/Configurable;->numberFormat:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getNumberFormat()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getObjectWrapper()Lfreemarker/template/ObjectWrapper;
    .registers 2

    .line 1476
    iget-object v0, p0, Lfreemarker/core/Configurable;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    .line 1477
    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getOutputEncoding()Ljava/lang/String;
    .registers 2

    .line 1512
    iget-boolean v0, p0, Lfreemarker/core/Configurable;->outputEncodingSet:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfreemarker/core/Configurable;->outputEncoding:Ljava/lang/String;

    goto :goto_11

    :cond_7
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    if-eqz v0, :cond_10

    .line 1514
    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getOutputEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method

.method public final getParent()Lfreemarker/core/Configurable;
    .registers 2

    .line 543
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    return-object v0
.end method

.method public getSQLDateAndTimeTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 796
    iget-boolean v0, p0, Lfreemarker/core/Configurable;->sqlDataAndTimeTimeZoneSet:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfreemarker/core/Configurable;->sqlDataAndTimeTimeZone:Ljava/util/TimeZone;

    goto :goto_11

    :cond_7
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    if-eqz v0, :cond_10

    .line 798
    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getSQLDateAndTimeTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method

.method public getSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2894
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSettingNames(Z)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2858
    new-instance v0, Lfreemarker/core/_SortedArraySet;

    if-eqz p1, :cond_7

    sget-object p1, Lfreemarker/core/Configurable;->SETTING_NAMES_CAMEL_CASE:[Ljava/lang/String;

    goto :goto_9

    :cond_7
    sget-object p1, Lfreemarker/core/Configurable;->SETTING_NAMES_SNAKE_CASE:[Ljava/lang/String;

    :goto_9
    invoke-direct {v0, p1}, Lfreemarker/core/_SortedArraySet;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSettings()Ljava/util/Map;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2910
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getShowErrorTips()Z
    .registers 2

    .line 1656
    iget-object v0, p0, Lfreemarker/core/Configurable;->showErrorTips:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 1657
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_13

    :cond_9
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    if-eqz v0, :cond_12

    .line 1658
    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getShowErrorTips()Z

    move-result v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method public getTemplateExceptionHandler()Lfreemarker/template/TemplateExceptionHandler;
    .registers 2

    .line 1382
    iget-object v0, p0, Lfreemarker/core/Configurable;->templateExceptionHandler:Lfreemarker/template/TemplateExceptionHandler;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    .line 1383
    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getTemplateExceptionHandler()Lfreemarker/template/TemplateExceptionHandler;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getTimeFormat()Ljava/lang/String;
    .registers 2

    .line 1120
    iget-object v0, p0, Lfreemarker/core/Configurable;->timeFormat:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getTimeFormat()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 706
    iget-object v0, p0, Lfreemarker/core/Configurable;->timeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method getTrueStringValue()Ljava/lang/String;
    .registers 2

    .line 1090
    iget-object v0, p0, Lfreemarker/core/Configurable;->booleanFormat:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfreemarker/core/Configurable;->trueStringValue:Ljava/lang/String;

    goto :goto_11

    :cond_7
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getTrueStringValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method

.method public getTruncateBuiltinAlgorithm()Lfreemarker/core/TruncateBuiltinAlgorithm;
    .registers 2

    .line 1723
    iget-object v0, p0, Lfreemarker/core/Configurable;->truncateBuiltinAlgorithm:Lfreemarker/core/TruncateBuiltinAlgorithm;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getTruncateBuiltinAlgorithm()Lfreemarker/core/TruncateBuiltinAlgorithm;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getURLEscapingCharset()Ljava/lang/String;
    .registers 2

    .line 1544
    iget-boolean v0, p0, Lfreemarker/core/Configurable;->urlEscapingCharsetSet:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfreemarker/core/Configurable;->urlEscapingCharset:Ljava/lang/String;

    goto :goto_11

    :cond_7
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    if-eqz v0, :cond_10

    .line 1546
    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getURLEscapingCharset()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method

.method public getWrapUncheckedExceptions()Z
    .registers 2

    .line 1799
    iget-object v0, p0, Lfreemarker/core/Configurable;->wrapUncheckedExceptions:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_13

    :cond_9
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    if-eqz v0, :cond_12

    .line 1800
    invoke-virtual {v0}, Lfreemarker/core/Configurable;->getWrapUncheckedExceptions()Z

    move-result v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public hasCustomFormats()Z
    .registers 2

    .line 961
    iget-object v0, p0, Lfreemarker/core/Configurable;->customNumberFormats:Ljava/util/Map;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_a
    iget-object v0, p0, Lfreemarker/core/Configurable;->customDateFormats:Ljava/util/Map;

    if-eqz v0, :cond_14

    .line 962
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 963
    :cond_14
    invoke-virtual {p0}, Lfreemarker/core/Configurable;->getParent()Lfreemarker/core/Configurable;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->getParent()Lfreemarker/core/Configurable;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->hasCustomFormats()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method protected invalidSettingValueException(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;
    .registers 7

    .line 2944
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->getEnvironment()Lfreemarker/core/Environment;

    move-result-object v1

    new-instance v2, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {v2, p1}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {p1, p2}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string p2, "Invalid value for setting "

    const-string v3, ": "

    filled-new-array {p2, v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public isAPIBuiltinEnabled()Z
    .registers 2

    .line 1687
    iget-object v0, p0, Lfreemarker/core/Configurable;->apiBuiltinEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 1688
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_13

    :cond_9
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    if-eqz v0, :cond_12

    .line 1689
    invoke-virtual {v0}, Lfreemarker/core/Configurable;->isAPIBuiltinEnabled()Z

    move-result v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isAPIBuiltinEnabledSet()Z
    .registers 2

    .line 1698
    iget-object v0, p0, Lfreemarker/core/Configurable;->apiBuiltinEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isArithmeticEngineSet()Z
    .registers 2

    .line 1459
    iget-object v0, p0, Lfreemarker/core/Configurable;->arithmeticEngine:Lfreemarker/core/ArithmeticEngine;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isAttemptExceptionReporterSet()Z
    .registers 2

    .line 1432
    iget-object v0, p0, Lfreemarker/core/Configurable;->attemptExceptionReporter:Lfreemarker/template/AttemptExceptionReporter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isAutoFlushSet()Z
    .registers 2

    .line 1636
    iget-object v0, p0, Lfreemarker/core/Configurable;->autoFlush:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isAutoImportsSet()Z
    .registers 2

    .line 2010
    iget-object v0, p0, Lfreemarker/core/Configurable;->autoImports:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isAutoIncludesSet()Z
    .registers 2

    .line 2126
    iget-object v0, p0, Lfreemarker/core/Configurable;->autoIncludes:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isBooleanFormatSet()Z
    .registers 2

    .line 1022
    iget-object v0, p0, Lfreemarker/core/Configurable;->booleanFormat:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isClassicCompatible()Z
    .registers 2

    .line 639
    iget-object v0, p0, Lfreemarker/core/Configurable;->classicCompatible:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_14

    :cond_c
    const/4 v0, 0x0

    goto :goto_14

    :cond_e
    iget-object v0, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->isClassicCompatible()Z

    move-result v0

    :goto_14
    return v0
.end method

.method public isClassicCompatibleSet()Z
    .registers 2

    .line 652
    iget-object v0, p0, Lfreemarker/core/Configurable;->classicCompatible:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isCustomAttributeSet(Ljava/lang/Object;)Z
    .registers 3

    .line 3040
    iget-object v0, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isCustomDateFormatsSet()Z
    .registers 2

    .line 1328
    iget-object v0, p0, Lfreemarker/core/Configurable;->customDateFormats:Ljava/util/Map;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isCustomNumberFormatsSet()Z
    .registers 2

    .line 936
    iget-object v0, p0, Lfreemarker/core/Configurable;->customNumberFormats:Ljava/util/Map;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isDateFormatSet()Z
    .registers 2

    .line 1159
    iget-object v0, p0, Lfreemarker/core/Configurable;->dateFormat:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isDateTimeFormatSet()Z
    .registers 2

    .line 1267
    iget-object v0, p0, Lfreemarker/core/Configurable;->dateTimeFormat:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isLazyAutoImportsSet()Z
    .registers 2

    .line 1886
    iget-boolean v0, p0, Lfreemarker/core/Configurable;->lazyAutoImportsSet:Z

    return v0
.end method

.method public isLazyImportsSet()Z
    .registers 2

    .line 1855
    iget-object v0, p0, Lfreemarker/core/Configurable;->lazyImports:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isLocaleSet()Z
    .registers 2

    .line 682
    iget-object v0, p0, Lfreemarker/core/Configurable;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isLogTemplateExceptionsSet()Z
    .registers 2

    .line 1769
    iget-object v0, p0, Lfreemarker/core/Configurable;->logTemplateExceptions:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isNewBuiltinClassResolverSet()Z
    .registers 2

    .line 1595
    iget-object v0, p0, Lfreemarker/core/Configurable;->newBuiltinClassResolver:Lfreemarker/core/TemplateClassResolver;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isNumberFormatSet()Z
    .registers 2

    .line 854
    iget-object v0, p0, Lfreemarker/core/Configurable;->numberFormat:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isObjectWrapperSet()Z
    .registers 2

    .line 1486
    iget-object v0, p0, Lfreemarker/core/Configurable;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isOutputEncodingSet()Z
    .registers 2

    .line 1523
    iget-boolean v0, p0, Lfreemarker/core/Configurable;->outputEncodingSet:Z

    return v0
.end method

.method public isSQLDateAndTimeTimeZoneSet()Z
    .registers 2

    .line 807
    iget-boolean v0, p0, Lfreemarker/core/Configurable;->sqlDataAndTimeTimeZoneSet:Z

    return v0
.end method

.method public isShowErrorTipsSet()Z
    .registers 2

    .line 1667
    iget-object v0, p0, Lfreemarker/core/Configurable;->showErrorTips:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isTemplateExceptionHandlerSet()Z
    .registers 2

    .line 1392
    iget-object v0, p0, Lfreemarker/core/Configurable;->templateExceptionHandler:Lfreemarker/template/TemplateExceptionHandler;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isTimeFormatSet()Z
    .registers 2

    .line 1129
    iget-object v0, p0, Lfreemarker/core/Configurable;->timeFormat:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isTimeZoneSet()Z
    .registers 2

    .line 715
    iget-object v0, p0, Lfreemarker/core/Configurable;->timeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isTruncateBuiltinAlgorithmSet()Z
    .registers 2

    .line 1732
    iget-object v0, p0, Lfreemarker/core/Configurable;->truncateBuiltinAlgorithm:Lfreemarker/core/TruncateBuiltinAlgorithm;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isURLEscapingCharsetSet()Z
    .registers 2

    .line 1555
    iget-boolean v0, p0, Lfreemarker/core/Configurable;->urlEscapingCharsetSet:Z

    return v0
.end method

.method public isWrapUncheckedExceptionsSet()Z
    .registers 2

    .line 1807
    iget-object v0, p0, Lfreemarker/core/Configurable;->wrapUncheckedExceptions:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected parseAsImportList(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3162
    new-instance v0, Lfreemarker/core/Configurable$SettingStringParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lfreemarker/core/Configurable$SettingStringParser;-><init>(Ljava/lang/String;Lfreemarker/core/Configurable$1;)V

    invoke-virtual {v0}, Lfreemarker/core/Configurable$SettingStringParser;->parseAsImportList()Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method protected parseAsList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3153
    new-instance v0, Lfreemarker/core/Configurable$SettingStringParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lfreemarker/core/Configurable$SettingStringParser;-><init>(Ljava/lang/String;Lfreemarker/core/Configurable$1;)V

    invoke-virtual {v0}, Lfreemarker/core/Configurable$SettingStringParser;->parseAsList()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected parseAsSegmentedList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3158
    new-instance v0, Lfreemarker/core/Configurable$SettingStringParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lfreemarker/core/Configurable$SettingStringParser;-><init>(Ljava/lang/String;Lfreemarker/core/Configurable$1;)V

    invoke-virtual {v0}, Lfreemarker/core/Configurable$SettingStringParser;->parseAsSegmentedList()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public removeAutoImport(Ljava/lang/String;)V
    .registers 3

    .line 1941
    monitor-enter p0

    .line 1942
    :try_start_1
    iget-object v0, p0, Lfreemarker/core/Configurable;->autoImports:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_8

    .line 1943
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public removeAutoInclude(Ljava/lang/String;)V
    .registers 3

    .line 2145
    monitor-enter p0

    .line 2146
    :try_start_1
    iget-object v0, p0, Lfreemarker/core/Configurable;->autoIncludes:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 2147
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2149
    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public removeCustomAttribute(Ljava/lang/String;)V
    .registers 4

    .line 3112
    iget-object v0, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    monitor-enter v0

    .line 3113
    :try_start_3
    iget-object v1, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3114
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public setAPIBuiltinEnabled(Z)V
    .registers 4

    .line 1677
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Configurable;->apiBuiltinEnabled:Ljava/lang/Boolean;

    .line 1678
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v1, "api_builtin_enabled"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setArithmeticEngine(Lfreemarker/core/ArithmeticEngine;)V
    .registers 4

    .line 1440
    const-string v0, "arithmeticEngine"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1441
    iput-object p1, p0, Lfreemarker/core/Configurable;->arithmeticEngine:Lfreemarker/core/ArithmeticEngine;

    .line 1442
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "arithmetic_engine"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setAttemptExceptionReporter(Lfreemarker/template/AttemptExceptionReporter;)V
    .registers 3

    .line 1412
    const-string v0, "attemptExceptionReporter"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1413
    iput-object p1, p0, Lfreemarker/core/Configurable;->attemptExceptionReporter:Lfreemarker/template/AttemptExceptionReporter;

    return-void
.end method

.method public setAutoFlush(Z)V
    .registers 4

    .line 1615
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Configurable;->autoFlush:Ljava/lang/Boolean;

    .line 1616
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v1, "auto_flush"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setAutoImports(Ljava/util/Map;)V
    .registers 5

    .line 1957
    const-string v0, "map"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1960
    monitor-enter p0

    .line 1961
    :try_start_6
    iget-object v0, p0, Lfreemarker/core/Configurable;->autoImports:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_d

    .line 1962
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1964
    :cond_d
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1965
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1966
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_60

    .line 1971
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1972
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_39

    .line 1977
    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lfreemarker/core/Configurable;->addAutoImport(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 1973
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value in Map wasn\'t a String, but a(n) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1974
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1967
    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key in Map wasn\'t a String, but a(n) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1968
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1979
    :cond_87
    monitor-exit p0

    return-void

    :catchall_89
    move-exception p1

    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_6 .. :try_end_8b} :catchall_89

    throw p1
.end method

.method public setAutoIncludes(Ljava/util/List;)V
    .registers 5

    .line 2082
    const-string v0, "templateNames"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2084
    monitor-enter p0

    .line 2085
    :try_start_6
    iget-object v0, p0, Lfreemarker/core/Configurable;->autoIncludes:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 2086
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2088
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2089
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3b

    .line 2092
    check-cast v0, Ljava/lang/String;

    instance-of v1, p0, Lfreemarker/template/Configuration;

    if-eqz v1, :cond_36

    move-object v1, p0

    check-cast v1, Lfreemarker/template/Configuration;

    .line 2093
    invoke-virtual {v1}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/Version;->intValue()I

    move-result v1

    sget v2, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_25:I

    if-ge v1, v2, :cond_36

    const/4 v1, 0x1

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    .line 2092
    :goto_37
    invoke-direct {p0, v0, v1}, Lfreemarker/core/Configurable;->addAutoInclude(Ljava/lang/String;Z)V

    goto :goto_11

    .line 2090
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "List items must be String-s."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2095
    :cond_43
    monitor-exit p0

    return-void

    :catchall_45
    move-exception p1

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_6 .. :try_end_47} :catchall_45

    throw p1
.end method

.method public setBooleanFormat(Ljava/lang/String;)V
    .registers 5

    .line 983
    const-string v0, "booleanFormat"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 985
    const-string v0, "true,false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 988
    iput-object v0, p0, Lfreemarker/core/Configurable;->trueStringValue:Ljava/lang/String;

    .line 989
    iput-object v0, p0, Lfreemarker/core/Configurable;->falseStringValue:Ljava/lang/String;

    goto :goto_3c

    .line 990
    :cond_13
    const-string v0, "c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 991
    const-string v0, "true"

    iput-object v0, p0, Lfreemarker/core/Configurable;->trueStringValue:Ljava/lang/String;

    .line 992
    const-string v0, "false"

    iput-object v0, p0, Lfreemarker/core/Configurable;->falseStringValue:Ljava/lang/String;

    goto :goto_3c

    :cond_24
    const/16 v0, 0x2c

    .line 994
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_46

    const/4 v1, 0x0

    .line 1001
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/core/Configurable;->trueStringValue:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 1002
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Configurable;->falseStringValue:Ljava/lang/String;

    .line 1005
    :goto_3c
    iput-object p1, p0, Lfreemarker/core/Configurable;->booleanFormat:Ljava/lang/String;

    .line 1006
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v1, "boolean_format"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 996
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting value must be a string that contains two comma-separated values for true and false, or it must be \"c\", but it was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 999
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClassicCompatible(Z)V
    .registers 4

    .line 560
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Configurable;->classicCompatible:Ljava/lang/Integer;

    .line 561
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v1, "classic_compatible"

    invoke-direct {p0, p1}, Lfreemarker/core/Configurable;->classicCompatibilityIntToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setClassicCompatibleAsInt(I)V
    .registers 5

    if-ltz p1, :cond_c

    const/4 v0, 0x2

    if-gt p1, v0, :cond_c

    .line 578
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Configurable;->classicCompatible:Ljava/lang/Integer;

    return-void

    .line 576
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported \"classicCompatibility\": "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCustomAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 3018
    iget-object v0, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    monitor-enter v0

    .line 3019
    :try_start_3
    iget-object v1, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3020
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public setCustomAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 3076
    iget-object v0, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    monitor-enter v0

    .line 3077
    :try_start_3
    iget-object v1, p0, Lfreemarker/core/Configurable;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3078
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public setCustomDateFormats(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lfreemarker/core/TemplateDateFormatFactory;",
            ">;)V"
        }
    .end annotation

    .line 1317
    const-string v0, "customDateFormats"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1318
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/Configurable;->validateFormatNames(Ljava/util/Set;)V

    .line 1319
    iput-object p1, p0, Lfreemarker/core/Configurable;->customDateFormats:Ljava/util/Map;

    return-void
.end method

.method public setCustomNumberFormats(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lfreemarker/core/TemplateNumberFormatFactory;",
            ">;)V"
        }
    .end annotation

    .line 902
    const-string v0, "customNumberFormats"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 903
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/Configurable;->validateFormatNames(Ljava/util/Set;)V

    .line 904
    iput-object p1, p0, Lfreemarker/core/Configurable;->customNumberFormats:Ljava/util/Map;

    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .registers 4

    .line 1141
    const-string v0, "dateFormat"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1142
    iput-object p1, p0, Lfreemarker/core/Configurable;->dateFormat:Ljava/lang/String;

    .line 1143
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v1, "date_format"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setDateTimeFormat(Ljava/lang/String;)V
    .registers 4

    .line 1249
    const-string v0, "dateTimeFormat"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1250
    iput-object p1, p0, Lfreemarker/core/Configurable;->dateTimeFormat:Ljava/lang/String;

    .line 1251
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v1, "datetime_format"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setLazyAutoImports(Ljava/lang/Boolean;)V
    .registers 2

    .line 1876
    iput-object p1, p0, Lfreemarker/core/Configurable;->lazyAutoImports:Ljava/lang/Boolean;

    const/4 p1, 0x1

    .line 1877
    iput-boolean p1, p0, Lfreemarker/core/Configurable;->lazyAutoImportsSet:Z

    return-void
.end method

.method public setLazyImports(Z)V
    .registers 2

    .line 1846
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Configurable;->lazyImports:Ljava/lang/Boolean;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 4

    .line 664
    const-string v0, "locale"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 665
    iput-object p1, p0, Lfreemarker/core/Configurable;->locale:Ljava/util/Locale;

    .line 666
    iget-object v1, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setLogTemplateExceptions(Z)V
    .registers 4

    .line 1748
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Configurable;->logTemplateExceptions:Ljava/lang/Boolean;

    .line 1749
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v1, "log_template_exceptions"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setNewBuiltinClassResolver(Lfreemarker/core/TemplateClassResolver;)V
    .registers 4

    .line 1572
    const-string v0, "newBuiltinClassResolver"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1573
    iput-object p1, p0, Lfreemarker/core/Configurable;->newBuiltinClassResolver:Lfreemarker/core/TemplateClassResolver;

    .line 1574
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    .line 1575
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1574
    const-string v1, "new_builtin_class_resolver"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setNumberFormat(Ljava/lang/String;)V
    .registers 4

    .line 836
    const-string v0, "numberFormat"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 837
    iput-object p1, p0, Lfreemarker/core/Configurable;->numberFormat:Ljava/lang/String;

    .line 838
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v1, "number_format"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V
    .registers 4

    .line 1467
    const-string v0, "objectWrapper"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1468
    iput-object p1, p0, Lfreemarker/core/Configurable;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    .line 1469
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "object_wrapper"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setOutputEncoding(Ljava/lang/String;)V
    .registers 4

    .line 1498
    iput-object p1, p0, Lfreemarker/core/Configurable;->outputEncoding:Ljava/lang/String;

    .line 1500
    const-string v0, "output_encoding"

    if-eqz p1, :cond_c

    .line 1501
    iget-object v1, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    invoke-virtual {v1, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_11

    .line 1503
    :cond_c
    iget-object p1, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
    const/4 p1, 0x1

    .line 1505
    iput-boolean p1, p0, Lfreemarker/core/Configurable;->outputEncodingSet:Z

    return-void
.end method

.method setParent(Lfreemarker/core/Configurable;)V
    .registers 2

    .line 552
    iput-object p1, p0, Lfreemarker/core/Configurable;->parent:Lfreemarker/core/Configurable;

    return-void
.end method

.method public setSQLDateAndTimeTimeZone(Ljava/util/TimeZone;)V
    .registers 4

    .line 781
    iput-object p1, p0, Lfreemarker/core/Configurable;->sqlDataAndTimeTimeZone:Ljava/util/TimeZone;

    const/4 v0, 0x1

    .line 782
    iput-boolean v0, p0, Lfreemarker/core/Configurable;->sqlDataAndTimeTimeZoneSet:Z

    .line 783
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    goto :goto_10

    :cond_e
    const-string p1, "null"

    :goto_10
    const-string v1, "sql_date_and_time_time_zone"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 2619
    const-string v0, "trustedTemplates"

    const-string v1, "trusted_templates"

    const-string v2, "allowedClasses"

    const-string v3, "allowed_classes"

    const-string v4, "\", \""

    .line 2621
    :try_start_a
    const-string v5, "locale"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 2622
    const-string v0, "JVM default"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2623
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setLocale(Ljava/util/Locale;)V

    goto/16 :goto_605

    .line 2625
    :cond_23
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->deduceLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setLocale(Ljava/util/Locale;)V

    goto/16 :goto_605

    .line 2627
    :cond_2c
    const-string v5, "number_format"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_602

    const-string v5, "numberFormat"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    goto/16 :goto_602

    .line 2629
    :cond_3e
    const-string v5, "custom_number_formats"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_44} :catch_606

    const-string v6, "Map values"

    const-string v7, "Map keys"

    const/4 v8, 0x0

    if-nez v5, :cond_5e0

    :try_start_4b
    const-string v5, "customNumberFormats"

    .line 2630
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    goto/16 :goto_5e0

    .line 2636
    :cond_55
    const-string v5, "time_format"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5dc

    const-string v5, "timeFormat"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    goto/16 :goto_5dc

    .line 2638
    :cond_67
    const-string v5, "date_format"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d8

    const-string v5, "dateFormat"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    goto/16 :goto_5d8

    .line 2640
    :cond_79
    const-string v5, "datetime_format"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d4

    const-string v5, "datetimeFormat"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    goto/16 :goto_5d4

    .line 2642
    :cond_8b
    const-string v5, "custom_date_formats"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b2

    const-string v5, "customDateFormats"

    .line 2643
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    goto/16 :goto_5b2

    .line 2649
    :cond_9d
    const-string v5, "time_zone"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5aa

    const-string v5, "timeZone"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    goto/16 :goto_5aa

    .line 2651
    :cond_af
    const-string v5, "sql_date_and_time_time_zone"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_b5} :catch_606

    const-string v6, "null"

    const/4 v7, 0x0

    if-nez v5, :cond_59b

    :try_start_ba
    const-string v5, "sqlDateAndTimeTimeZone"

    .line 2652
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c4

    goto/16 :goto_59b

    .line 2654
    :cond_c4
    const-string v5, "classic_compatible"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56b

    const-string v5, "classicCompatible"

    .line 2655
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d6

    goto/16 :goto_56b

    .line 2667
    :cond_d6
    const-string v5, "template_exception_handler"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_dc} :catch_606

    const-string v9, "default"

    const/16 v10, 0x2e

    const/4 v11, -0x1

    if-nez v5, :cond_4f8

    :try_start_e3
    const-string v5, "templateExceptionHandler"

    .line 2668
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ed

    goto/16 :goto_4f8

    .line 2691
    :cond_ed
    const-string v5, "attempt_exception_reporter"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49a

    const-string v5, "attemptExceptionReporter"

    .line 2692
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ff

    goto/16 :goto_49a

    .line 2709
    :cond_ff
    const-string v5, "arithmetic_engine"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_460

    const-string v5, "arithmeticEngine"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_111

    goto/16 :goto_460

    .line 2722
    :cond_111
    const-string v5, "object_wrapper"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e2

    const-string v5, "objectWrapper"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_123

    goto/16 :goto_3e2

    .line 2744
    :cond_123
    const-string v5, "boolean_format"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3dd

    const-string v5, "booleanFormat"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_135

    goto/16 :goto_3dd

    .line 2746
    :cond_135
    const-string v5, "output_encoding"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d8

    const-string v5, "outputEncoding"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_147

    goto/16 :goto_3d8

    .line 2748
    :cond_147
    const-string v5, "url_escaping_charset"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d3

    const-string v5, "urlEscapingCharset"

    .line 2749
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_159

    goto/16 :goto_3d3

    .line 2751
    :cond_159
    const-string v5, "strict_bean_models"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3ca

    const-string v5, "strictBeanModels"

    .line 2752
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16b

    goto/16 :goto_3ca

    .line 2754
    :cond_16b
    const-string v5, "auto_flush"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c1

    const-string v5, "autoFlush"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17d

    goto/16 :goto_3c1

    .line 2756
    :cond_17d
    const-string v5, "show_error_tips"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b8

    const-string v5, "showErrorTips"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18f

    goto/16 :goto_3b8

    .line 2758
    :cond_18f
    const-string v5, "api_builtin_enabled"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3af

    const-string v5, "apiBuiltinEnabled"

    .line 2759
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a1

    goto/16 :goto_3af

    .line 2761
    :cond_1a1
    const-string v5, "truncate_builtin_algorithm"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_380

    const-string v5, "truncateBuiltinAlgorithm"

    .line 2762
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b3

    goto/16 :goto_380

    .line 2772
    :cond_1b3
    const-string v5, "new_builtin_class_resolver"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_273

    const-string v5, "newBuiltinClassResolver"

    .line 2773
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c5

    goto/16 :goto_273

    .line 2820
    :cond_1c5
    const-string v0, "log_template_exceptions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26a

    const-string v0, "logTemplateExceptions"

    .line 2821
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    goto/16 :goto_26a

    .line 2823
    :cond_1d7
    const-string v0, "wrap_unchecked_exceptions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_261

    const-string v0, "wrapUncheckedExceptions"

    .line 2824
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e9

    goto/16 :goto_261

    .line 2826
    :cond_1e9
    const-string v0, "lazy_auto_imports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24d

    const-string v0, "lazyAutoImports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fa

    goto :goto_24d

    .line 2828
    :cond_1fa
    const-string v0, "lazy_imports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_244

    const-string v0, "lazyImports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20b

    goto :goto_244

    .line 2830
    :cond_20b
    const-string v0, "auto_include"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23b

    const-string v0, "autoInclude"

    .line 2831
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21c

    goto :goto_23b

    .line 2833
    :cond_21c
    const-string v0, "auto_import"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_232

    const-string v0, "autoImport"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_22a
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_22a} :catch_606

    if-eqz v0, :cond_22d

    goto :goto_232

    .line 2842
    :cond_22d
    invoke-virtual {p0, p1}, Lfreemarker/core/Configurable;->unknownSettingException(Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object p1

    throw p1

    .line 2834
    :cond_232
    :goto_232
    :try_start_232
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->parseAsImportList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setAutoImports(Ljava/util/Map;)V

    goto/16 :goto_605

    .line 2832
    :cond_23b
    :goto_23b
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->parseAsList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setAutoIncludes(Ljava/util/List;)V

    goto/16 :goto_605

    .line 2829
    :cond_244
    :goto_244
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setLazyImports(Z)V

    goto/16 :goto_605

    .line 2827
    :cond_24d
    :goto_24d
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_254

    goto :goto_25c

    :cond_254
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :goto_25c
    invoke-virtual {p0, v7}, Lfreemarker/core/Configurable;->setLazyAutoImports(Ljava/lang/Boolean;)V

    goto/16 :goto_605

    .line 2825
    :cond_261
    :goto_261
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setWrapUncheckedExceptions(Z)V

    goto/16 :goto_605

    .line 2822
    :cond_26a
    :goto_26a
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setLogTemplateExceptions(Z)V

    goto/16 :goto_605

    .line 2774
    :cond_273
    :goto_273
    const-string v5, "unrestricted"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_282

    .line 2775
    sget-object v0, Lfreemarker/core/TemplateClassResolver;->UNRESTRICTED_RESOLVER:Lfreemarker/core/TemplateClassResolver;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setNewBuiltinClassResolver(Lfreemarker/core/TemplateClassResolver;)V

    goto/16 :goto_605

    .line 2776
    :cond_282
    const-string v5, "safer"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_291

    .line 2777
    sget-object v0, Lfreemarker/core/TemplateClassResolver;->SAFER_RESOLVER:Lfreemarker/core/TemplateClassResolver;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setNewBuiltinClassResolver(Lfreemarker/core/TemplateClassResolver;)V

    goto/16 :goto_605

    .line 2778
    :cond_291
    const-string v5, "allows_nothing"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_379

    const-string v5, "allowsNothing"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a3

    goto/16 :goto_379

    .line 2780
    :cond_2a3
    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v11, :cond_33d

    .line 2781
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->parseAsSegmentedList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v6, v7

    move v9, v8

    .line 2784
    :goto_2b1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_333

    .line 2785
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lfreemarker/core/Configurable$KeyValuePair;

    .line 2786
    invoke-virtual {v10}, Lfreemarker/core/Configurable$KeyValuePair;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2787
    invoke-virtual {v10}, Lfreemarker/core/Configurable$KeyValuePair;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2788
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_32a

    .line 2789
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d6

    goto :goto_32a

    .line 2791
    :cond_2d6
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_328

    .line 2792
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e3

    goto :goto_328

    .line 2795
    :cond_2e3
    new-instance v5, Lfreemarker/core/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized list segment key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2796
    invoke-static {v11}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Supported keys are: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v8, v8}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;II)V

    throw v5

    :cond_328
    :goto_328
    move-object v6, v10

    goto :goto_32f

    .line 2790
    :cond_32a
    :goto_32a
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_32f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2b1

    .line 2805
    :cond_333
    new-instance v0, Lfreemarker/core/OptInTemplateClassResolver;

    invoke-direct {v0, v7, v6}, Lfreemarker/core/OptInTemplateClassResolver;-><init>(Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setNewBuiltinClassResolver(Lfreemarker/core/TemplateClassResolver;)V

    goto/16 :goto_605

    .line 2807
    :cond_33d
    const-string v0, "allow_nothing"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_371

    .line 2810
    const-string v0, "allowNothing"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_369

    .line 2813
    invoke-virtual {p2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v11, :cond_364

    .line 2814
    const-class v0, Lfreemarker/core/TemplateClassResolver;

    .line 2816
    invoke-static {}, Lfreemarker/core/_SettingEvaluationEnvironment;->getCurrent()Lfreemarker/core/_SettingEvaluationEnvironment;

    move-result-object v1

    .line 2814
    invoke-static {p2, v0, v8, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->eval(Ljava/lang/String;Ljava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/TemplateClassResolver;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setNewBuiltinClassResolver(Lfreemarker/core/TemplateClassResolver;)V

    goto/16 :goto_605

    .line 2818
    :cond_364
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/Configurable;->invalidSettingValueException(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    .line 2811
    :cond_369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The correct value would be: allowsNothing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2808
    :cond_371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The correct value would be: allows_nothing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2779
    :cond_379
    :goto_379
    sget-object v0, Lfreemarker/core/TemplateClassResolver;->ALLOWS_NOTHING_RESOLVER:Lfreemarker/core/TemplateClassResolver;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setNewBuiltinClassResolver(Lfreemarker/core/TemplateClassResolver;)V

    goto/16 :goto_605

    .line 2763
    :cond_380
    :goto_380
    const-string v0, "ascii"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38f

    .line 2764
    sget-object v0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->ASCII_INSTANCE:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setTruncateBuiltinAlgorithm(Lfreemarker/core/TruncateBuiltinAlgorithm;)V

    goto/16 :goto_605

    .line 2765
    :cond_38f
    const-string v0, "unicode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39e

    .line 2766
    sget-object v0, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;->UNICODE_INSTANCE:Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setTruncateBuiltinAlgorithm(Lfreemarker/core/TruncateBuiltinAlgorithm;)V

    goto/16 :goto_605

    .line 2768
    :cond_39e
    const-class v0, Lfreemarker/core/TruncateBuiltinAlgorithm;

    .line 2770
    invoke-static {}, Lfreemarker/core/_SettingEvaluationEnvironment;->getCurrent()Lfreemarker/core/_SettingEvaluationEnvironment;

    move-result-object v1

    .line 2768
    invoke-static {p2, v0, v8, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->eval(Ljava/lang/String;Ljava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/TruncateBuiltinAlgorithm;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setTruncateBuiltinAlgorithm(Lfreemarker/core/TruncateBuiltinAlgorithm;)V

    goto/16 :goto_605

    .line 2760
    :cond_3af
    :goto_3af
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setAPIBuiltinEnabled(Z)V

    goto/16 :goto_605

    .line 2757
    :cond_3b8
    :goto_3b8
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setShowErrorTips(Z)V

    goto/16 :goto_605

    .line 2755
    :cond_3c1
    :goto_3c1
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setAutoFlush(Z)V

    goto/16 :goto_605

    .line 2753
    :cond_3ca
    :goto_3ca
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setStrictBeanModels(Z)V

    goto/16 :goto_605

    .line 2750
    :cond_3d3
    :goto_3d3
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->setURLEscapingCharset(Ljava/lang/String;)V

    goto/16 :goto_605

    .line 2747
    :cond_3d8
    :goto_3d8
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->setOutputEncoding(Ljava/lang/String;)V

    goto/16 :goto_605

    .line 2745
    :cond_3dd
    :goto_3dd
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->setBooleanFormat(Ljava/lang/String;)V

    goto/16 :goto_605

    .line 2723
    :cond_3e2
    :goto_3e2
    invoke-virtual {v9, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3ff

    .line 2724
    instance-of v0, p0, Lfreemarker/template/Configuration;

    if-eqz v0, :cond_3f4

    .line 2725
    move-object v0, p0

    check-cast v0, Lfreemarker/template/Configuration;

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->unsetObjectWrapper()V

    goto/16 :goto_605

    .line 2727
    :cond_3f4
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_0:Lfreemarker/template/Version;

    invoke-static {v0}, Lfreemarker/template/Configuration;->getDefaultObjectWrapper(Lfreemarker/template/Version;)Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V

    goto/16 :goto_605

    .line 2729
    :cond_3ff
    const-string v0, "default_2_3_0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_412

    .line 2730
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_0:Lfreemarker/template/Version;

    invoke-static {v0}, Lfreemarker/template/Configuration;->getDefaultObjectWrapper(Lfreemarker/template/Version;)Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V

    goto/16 :goto_605

    .line 2731
    :cond_412
    const-string v0, "simple"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_421

    .line 2732
    sget-object v0, Lfreemarker/template/ObjectWrapper;->SIMPLE_WRAPPER:Lfreemarker/template/ObjectWrapper;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V

    goto/16 :goto_605

    .line 2733
    :cond_421
    const-string v0, "beans"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_430

    .line 2734
    sget-object v0, Lfreemarker/template/ObjectWrapper;->BEANS_WRAPPER:Lfreemarker/template/ObjectWrapper;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V

    goto/16 :goto_605

    .line 2735
    :cond_430
    const-string v0, "jython"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44f

    .line 2736
    const-string v0, "freemarker.ext.jython.JythonWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2738
    const-string v1, "INSTANCE"

    .line 2739
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/ObjectWrapper;

    .line 2738
    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V

    goto/16 :goto_605

    .line 2741
    :cond_44f
    const-class v0, Lfreemarker/template/ObjectWrapper;

    .line 2742
    invoke-static {}, Lfreemarker/core/_SettingEvaluationEnvironment;->getCurrent()Lfreemarker/core/_SettingEvaluationEnvironment;

    move-result-object v1

    .line 2741
    invoke-static {p2, v0, v8, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->eval(Ljava/lang/String;Ljava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/ObjectWrapper;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V

    goto/16 :goto_605

    .line 2710
    :cond_460
    :goto_460
    invoke-virtual {p2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v11, :cond_489

    .line 2711
    const-string v0, "bigdecimal"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_475

    .line 2712
    sget-object v0, Lfreemarker/core/ArithmeticEngine;->BIGDECIMAL_ENGINE:Lfreemarker/core/ArithmeticEngine$BigDecimalEngine;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setArithmeticEngine(Lfreemarker/core/ArithmeticEngine;)V

    goto/16 :goto_605

    .line 2713
    :cond_475
    const-string v0, "conservative"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_484

    .line 2714
    sget-object v0, Lfreemarker/core/ArithmeticEngine;->CONSERVATIVE_ENGINE:Lfreemarker/core/ArithmeticEngine$ConservativeEngine;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setArithmeticEngine(Lfreemarker/core/ArithmeticEngine;)V

    goto/16 :goto_605

    .line 2716
    :cond_484
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/Configurable;->invalidSettingValueException(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    .line 2719
    :cond_489
    const-class v0, Lfreemarker/core/ArithmeticEngine;

    .line 2720
    invoke-static {}, Lfreemarker/core/_SettingEvaluationEnvironment;->getCurrent()Lfreemarker/core/_SettingEvaluationEnvironment;

    move-result-object v1

    .line 2719
    invoke-static {p2, v0, v8, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->eval(Ljava/lang/String;Ljava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/ArithmeticEngine;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setArithmeticEngine(Lfreemarker/core/ArithmeticEngine;)V

    goto/16 :goto_605

    .line 2693
    :cond_49a
    :goto_49a
    invoke-virtual {p2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v11, :cond_4e7

    .line 2694
    const-string v0, "log_error"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e0

    const-string v0, "logError"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b1

    goto :goto_4e0

    .line 2697
    :cond_4b1
    const-string v0, "log_warn"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d9

    const-string v0, "logWarn"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c2

    goto :goto_4d9

    .line 2700
    :cond_4c2
    invoke-virtual {v9, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d4

    instance-of v0, p0, Lfreemarker/template/Configuration;

    if-eqz v0, :cond_4d4

    .line 2701
    move-object v0, p0

    check-cast v0, Lfreemarker/template/Configuration;

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->unsetAttemptExceptionReporter()V

    goto/16 :goto_605

    .line 2703
    :cond_4d4
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/Configurable;->invalidSettingValueException(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    .line 2698
    :cond_4d9
    :goto_4d9
    sget-object v0, Lfreemarker/template/AttemptExceptionReporter;->LOG_WARN_REPORTER:Lfreemarker/template/AttemptExceptionReporter;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setAttemptExceptionReporter(Lfreemarker/template/AttemptExceptionReporter;)V

    goto/16 :goto_605

    .line 2695
    :cond_4e0
    :goto_4e0
    sget-object v0, Lfreemarker/template/AttemptExceptionReporter;->LOG_ERROR_REPORTER:Lfreemarker/template/AttemptExceptionReporter;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setAttemptExceptionReporter(Lfreemarker/template/AttemptExceptionReporter;)V

    goto/16 :goto_605

    .line 2706
    :cond_4e7
    const-class v0, Lfreemarker/template/AttemptExceptionReporter;

    .line 2707
    invoke-static {}, Lfreemarker/core/_SettingEvaluationEnvironment;->getCurrent()Lfreemarker/core/_SettingEvaluationEnvironment;

    move-result-object v1

    .line 2706
    invoke-static {p2, v0, v8, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->eval(Ljava/lang/String;Ljava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/AttemptExceptionReporter;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setAttemptExceptionReporter(Lfreemarker/template/AttemptExceptionReporter;)V

    goto/16 :goto_605

    .line 2669
    :cond_4f8
    :goto_4f8
    invoke-virtual {p2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v11, :cond_55a

    .line 2670
    const-string v0, "debug"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50d

    .line 2671
    sget-object v0, Lfreemarker/template/TemplateExceptionHandler;->DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V

    goto/16 :goto_605

    .line 2673
    :cond_50d
    const-string v0, "html_debug"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_553

    const-string v0, "htmlDebug"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51e

    goto :goto_553

    .line 2676
    :cond_51e
    const-string v0, "ignore"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52d

    .line 2677
    sget-object v0, Lfreemarker/template/TemplateExceptionHandler;->IGNORE_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V

    goto/16 :goto_605

    .line 2679
    :cond_52d
    const-string v0, "rethrow"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53c

    .line 2680
    sget-object v0, Lfreemarker/template/TemplateExceptionHandler;->RETHROW_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V

    goto/16 :goto_605

    .line 2682
    :cond_53c
    invoke-virtual {v9, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54e

    instance-of v0, p0, Lfreemarker/template/Configuration;

    if-eqz v0, :cond_54e

    .line 2683
    move-object v0, p0

    check-cast v0, Lfreemarker/template/Configuration;

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->unsetTemplateExceptionHandler()V

    goto/16 :goto_605

    .line 2685
    :cond_54e
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/Configurable;->invalidSettingValueException(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    .line 2674
    :cond_553
    :goto_553
    sget-object v0, Lfreemarker/template/TemplateExceptionHandler;->HTML_DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V

    goto/16 :goto_605

    .line 2688
    :cond_55a
    const-class v0, Lfreemarker/template/TemplateExceptionHandler;

    .line 2689
    invoke-static {}, Lfreemarker/core/_SettingEvaluationEnvironment;->getCurrent()Lfreemarker/core/_SettingEvaluationEnvironment;

    move-result-object v1

    .line 2688
    invoke-static {p2, v0, v8, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->eval(Ljava/lang/String;Ljava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateExceptionHandler;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V

    goto/16 :goto_605

    :cond_56b
    :goto_56b
    if-eqz p2, :cond_578

    .line 2657
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_578

    .line 2658
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_579

    :cond_578
    move v0, v8

    .line 2662
    :goto_579
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_593

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_593

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_588

    goto :goto_593

    :cond_588
    if-eqz p2, :cond_58e

    .line 2665
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v8

    :cond_58e
    invoke-virtual {p0, v8}, Lfreemarker/core/Configurable;->setClassicCompatible(Z)V

    goto/16 :goto_605

    .line 2663
    :cond_593
    :goto_593
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setClassicCompatibleAsInt(I)V

    goto :goto_605

    .line 2653
    :cond_59b
    :goto_59b
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a2

    goto :goto_5a6

    :cond_5a2
    invoke-direct {p0, p2}, Lfreemarker/core/Configurable;->parseTimeZoneSettingValue(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    :goto_5a6
    invoke-virtual {p0, v7}, Lfreemarker/core/Configurable;->setSQLDateAndTimeTimeZone(Ljava/util/TimeZone;)V

    goto :goto_605

    .line 2650
    :cond_5aa
    :goto_5aa
    invoke-direct {p0, p2}, Lfreemarker/core/Configurable;->parseTimeZoneSettingValue(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_605

    .line 2644
    :cond_5b2
    :goto_5b2
    const-class v0, Ljava/util/Map;

    .line 2645
    invoke-static {}, Lfreemarker/core/_SettingEvaluationEnvironment;->getCurrent()Lfreemarker/core/_SettingEvaluationEnvironment;

    move-result-object v1

    .line 2644
    invoke-static {p2, v0, v8, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->eval(Ljava/lang/String;Ljava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2646
    const-class v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lfreemarker/core/_CoreAPI;->checkSettingValueItemsType(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 2647
    const-class v1, Lfreemarker/core/TemplateDateFormatFactory;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lfreemarker/core/_CoreAPI;->checkSettingValueItemsType(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 2648
    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setCustomDateFormats(Ljava/util/Map;)V

    goto :goto_605

    .line 2641
    :cond_5d4
    :goto_5d4
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->setDateTimeFormat(Ljava/lang/String;)V

    goto :goto_605

    .line 2639
    :cond_5d8
    :goto_5d8
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->setDateFormat(Ljava/lang/String;)V

    goto :goto_605

    .line 2637
    :cond_5dc
    :goto_5dc
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->setTimeFormat(Ljava/lang/String;)V

    goto :goto_605

    .line 2631
    :cond_5e0
    :goto_5e0
    const-class v0, Ljava/util/Map;

    .line 2632
    invoke-static {}, Lfreemarker/core/_SettingEvaluationEnvironment;->getCurrent()Lfreemarker/core/_SettingEvaluationEnvironment;

    move-result-object v1

    .line 2631
    invoke-static {p2, v0, v8, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->eval(Ljava/lang/String;Ljava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2633
    const-class v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lfreemarker/core/_CoreAPI;->checkSettingValueItemsType(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 2634
    const-class v1, Lfreemarker/core/TemplateNumberFormatFactory;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lfreemarker/core/_CoreAPI;->checkSettingValueItemsType(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 2635
    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setCustomNumberFormats(Ljava/util/Map;)V

    goto :goto_605

    .line 2628
    :cond_602
    :goto_602
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->setNumberFormat(Ljava/lang/String;)V
    :try_end_605
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_605} :catch_606

    :goto_605
    return-void

    :catch_606
    move-exception v0

    .line 2839
    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/core/Configurable;->settingValueAssignmentException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lfreemarker/template/TemplateException;

    move-result-object p1

    throw p1
.end method

.method public setSettings(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3007
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 3008
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 3009
    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->setSettings(Ljava/util/Properties;)V

    return-void
.end method

.method public setSettings(Ljava/util/Properties;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 2986
    invoke-static {}, Lfreemarker/core/_SettingEvaluationEnvironment;->startScope()Lfreemarker/core/_SettingEvaluationEnvironment;

    move-result-object v0

    .line 2988
    :try_start_4
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2989
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2990
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lfreemarker/core/Configurable;->setSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_28

    goto :goto_c

    .line 2993
    :cond_24
    invoke-static {v0}, Lfreemarker/core/_SettingEvaluationEnvironment;->endScope(Lfreemarker/core/_SettingEvaluationEnvironment;)V

    return-void

    :catchall_28
    move-exception p1

    invoke-static {v0}, Lfreemarker/core/_SettingEvaluationEnvironment;->endScope(Lfreemarker/core/_SettingEvaluationEnvironment;)V

    .line 2994
    throw p1
.end method

.method public setShowErrorTips(Z)V
    .registers 4

    .line 1646
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Configurable;->showErrorTips:Ljava/lang/Boolean;

    .line 1647
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v1, "show_error_tips"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setStrictBeanModels(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2876
    iget-object v0, p0, Lfreemarker/core/Configurable;->objectWrapper:Lfreemarker/template/ObjectWrapper;

    instance-of v1, v0, Lfreemarker/ext/beans/BeansWrapper;

    if-eqz v1, :cond_c

    .line 2880
    check-cast v0, Lfreemarker/ext/beans/BeansWrapper;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/BeansWrapper;->setStrict(Z)V

    return-void

    .line 2877
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The value of the object_wrapper setting isn\'t a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lfreemarker/ext/beans/BeansWrapper;

    .line 2878
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V
    .registers 4

    .line 1373
    const-string v0, "templateExceptionHandler"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1374
    iput-object p1, p0, Lfreemarker/core/Configurable;->templateExceptionHandler:Lfreemarker/template/TemplateExceptionHandler;

    .line 1375
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "template_exception_handler"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setTimeFormat(Ljava/lang/String;)V
    .registers 4

    .line 1111
    const-string v0, "timeFormat"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1112
    iput-object p1, p0, Lfreemarker/core/Configurable;->timeFormat:Ljava/lang/String;

    .line 1113
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v1, "time_format"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 4

    .line 697
    const-string v0, "timeZone"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 698
    iput-object p1, p0, Lfreemarker/core/Configurable;->timeZone:Ljava/util/TimeZone;

    .line 699
    iget-object v0, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    const-string v1, "time_zone"

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setTruncateBuiltinAlgorithm(Lfreemarker/core/TruncateBuiltinAlgorithm;)V
    .registers 3

    .line 1713
    const-string v0, "truncateBuiltinAlgorithm"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1714
    iput-object p1, p0, Lfreemarker/core/Configurable;->truncateBuiltinAlgorithm:Lfreemarker/core/TruncateBuiltinAlgorithm;

    return-void
.end method

.method public setURLEscapingCharset(Ljava/lang/String;)V
    .registers 4

    .line 1533
    iput-object p1, p0, Lfreemarker/core/Configurable;->urlEscapingCharset:Ljava/lang/String;

    .line 1535
    const-string v0, "url_escaping_charset"

    if-eqz p1, :cond_c

    .line 1536
    iget-object v1, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    invoke-virtual {v1, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_11

    .line 1538
    :cond_c
    iget-object p1, p0, Lfreemarker/core/Configurable;->properties:Ljava/util/Properties;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
    const/4 p1, 0x1

    .line 1540
    iput-boolean p1, p0, Lfreemarker/core/Configurable;->urlEscapingCharsetSet:Z

    return-void
.end method

.method public setWrapUncheckedExceptions(Z)V
    .registers 2

    .line 1790
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Configurable;->wrapUncheckedExceptions:Ljava/lang/Boolean;

    return-void
.end method

.method protected settingValueAssignmentException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lfreemarker/template/TemplateException;
    .registers 11

    .line 2940
    new-instance v6, Lfreemarker/core/Configurable$SettingValueAssignmentException;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->getEnvironment()Lfreemarker/core/Environment;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lfreemarker/core/Configurable$SettingValueAssignmentException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/Configurable$1;)V

    return-object v6
.end method

.method protected unknownSettingException(Ljava/lang/String;)Lfreemarker/template/TemplateException;
    .registers 6

    .line 2923
    new-instance v0, Lfreemarker/core/Configurable$UnknownSettingException;

    .line 2924
    invoke-virtual {p0}, Lfreemarker/core/Configurable;->getEnvironment()Lfreemarker/core/Environment;

    move-result-object v1

    invoke-virtual {p0, p1}, Lfreemarker/core/Configurable;->getCorrectedNameForUnknownSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lfreemarker/core/Configurable$UnknownSettingException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/Configurable$1;)V

    return-object v0
.end method
