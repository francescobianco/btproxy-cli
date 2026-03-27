.class final Lfreemarker/core/NullTemplateModel;
.super Ljava/lang/Object;
.source "NullTemplateModel.java"

# interfaces
.implements Lfreemarker/template/TemplateModel;


# static fields
.field static final INSTANCE:Lfreemarker/core/NullTemplateModel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lfreemarker/core/NullTemplateModel;

    invoke-direct {v0}, Lfreemarker/core/NullTemplateModel;-><init>()V

    sput-object v0, Lfreemarker/core/NullTemplateModel;->INSTANCE:Lfreemarker/core/NullTemplateModel;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
