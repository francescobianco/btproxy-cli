.class public final Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;
.super Ljava/lang/Object;
.source "TemplateCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/cache/TemplateCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MaybeMissingTemplate"
.end annotation


# instance fields
.field private final missingTemplateCauseException:Lfreemarker/template/MalformedTemplateNameException;

.field private final missingTemplateNormalizedName:Ljava/lang/String;

.field private final missingTemplateReason:Ljava/lang/String;

.field private final template:Lfreemarker/template/Template;


# direct methods
.method private constructor <init>(Lfreemarker/template/Template;)V
    .registers 2

    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 966
    iput-object p1, p0, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->template:Lfreemarker/template/Template;

    const/4 p1, 0x0

    .line 967
    iput-object p1, p0, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->missingTemplateNormalizedName:Ljava/lang/String;

    .line 968
    iput-object p1, p0, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->missingTemplateReason:Ljava/lang/String;

    .line 969
    iput-object p1, p0, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->missingTemplateCauseException:Lfreemarker/template/MalformedTemplateNameException;

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/template/Template;Lfreemarker/cache/TemplateCache$1;)V
    .registers 3

    .line 958
    invoke-direct {p0, p1}, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;-><init>(Lfreemarker/template/Template;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lfreemarker/template/MalformedTemplateNameException;)V
    .registers 4

    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 973
    iput-object v0, p0, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->template:Lfreemarker/template/Template;

    .line 974
    iput-object p1, p0, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->missingTemplateNormalizedName:Ljava/lang/String;

    .line 975
    iput-object v0, p0, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->missingTemplateReason:Ljava/lang/String;

    .line 976
    iput-object p2, p0, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->missingTemplateCauseException:Lfreemarker/template/MalformedTemplateNameException;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lfreemarker/template/MalformedTemplateNameException;Lfreemarker/cache/TemplateCache$1;)V
    .registers 4

    .line 958
    invoke-direct {p0, p1, p2}, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;-><init>(Ljava/lang/String;Lfreemarker/template/MalformedTemplateNameException;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 980
    iput-object v0, p0, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->template:Lfreemarker/template/Template;

    .line 981
    iput-object p1, p0, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->missingTemplateNormalizedName:Ljava/lang/String;

    .line 982
    iput-object p2, p0, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->missingTemplateReason:Ljava/lang/String;

    .line 983
    iput-object v0, p0, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->missingTemplateCauseException:Lfreemarker/template/MalformedTemplateNameException;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/cache/TemplateCache$1;)V
    .registers 4

    .line 958
    invoke-direct {p0, p1, p2}, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMissingTemplateNormalizedName()Ljava/lang/String;
    .registers 2

    .line 1012
    iget-object v0, p0, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->missingTemplateNormalizedName:Ljava/lang/String;

    return-object v0
.end method

.method public getMissingTemplateReason()Ljava/lang/String;
    .registers 2

    .line 999
    iget-object v0, p0, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->missingTemplateReason:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_f

    :cond_5
    iget-object v0, p0, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->missingTemplateCauseException:Lfreemarker/template/MalformedTemplateNameException;

    if-eqz v0, :cond_e

    .line 1002
    invoke-virtual {v0}, Lfreemarker/template/MalformedTemplateNameException;->getMalformednessDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0
.end method

.method public getTemplate()Lfreemarker/template/Template;
    .registers 2

    .line 990
    iget-object v0, p0, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->template:Lfreemarker/template/Template;

    return-object v0
.end method
