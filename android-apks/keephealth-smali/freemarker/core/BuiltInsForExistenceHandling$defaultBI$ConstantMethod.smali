.class Lfreemarker/core/BuiltInsForExistenceHandling$defaultBI$ConstantMethod;
.super Ljava/lang/Object;
.source "BuiltInsForExistenceHandling.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForExistenceHandling$defaultBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConstantMethod"
.end annotation


# instance fields
.field private final constant:Lfreemarker/template/TemplateModel;


# direct methods
.method constructor <init>(Lfreemarker/template/TemplateModel;)V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lfreemarker/core/BuiltInsForExistenceHandling$defaultBI$ConstantMethod;->constant:Lfreemarker/template/TemplateModel;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    .line 75
    iget-object p1, p0, Lfreemarker/core/BuiltInsForExistenceHandling$defaultBI$ConstantMethod;->constant:Lfreemarker/template/TemplateModel;

    return-object p1
.end method
