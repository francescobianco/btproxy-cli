.class Lfreemarker/core/BuiltInsForExistenceHandling$defaultBI;
.super Lfreemarker/core/BuiltInsForExistenceHandling$ExistenceBuiltIn;
.source "BuiltInsForExistenceHandling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForExistenceHandling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "defaultBI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BuiltInsForExistenceHandling$defaultBI$ConstantMethod;
    }
.end annotation


# static fields
.field private static final FIRST_NON_NULL_METHOD:Lfreemarker/template/TemplateMethodModelEx;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Lfreemarker/core/BuiltInsForExistenceHandling$defaultBI$1;

    invoke-direct {v0}, Lfreemarker/core/BuiltInsForExistenceHandling$defaultBI$1;-><init>()V

    sput-object v0, Lfreemarker/core/BuiltInsForExistenceHandling$defaultBI;->FIRST_NON_NULL_METHOD:Lfreemarker/template/TemplateMethodModelEx;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0}, Lfreemarker/core/BuiltInsForExistenceHandling$ExistenceBuiltIn;-><init>(Lfreemarker/core/BuiltInsForExistenceHandling$1;)V

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Lfreemarker/core/BuiltInsForExistenceHandling$defaultBI;->evalMaybeNonexistentTarget(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    if-nez p1, :cond_9

    .line 64
    sget-object p1, Lfreemarker/core/BuiltInsForExistenceHandling$defaultBI;->FIRST_NON_NULL_METHOD:Lfreemarker/template/TemplateMethodModelEx;

    goto :goto_f

    :cond_9
    new-instance v0, Lfreemarker/core/BuiltInsForExistenceHandling$defaultBI$ConstantMethod;

    invoke-direct {v0, p1}, Lfreemarker/core/BuiltInsForExistenceHandling$defaultBI$ConstantMethod;-><init>(Lfreemarker/template/TemplateModel;)V

    move-object p1, v0

    :goto_f
    return-object p1
.end method
