.class public Lfreemarker/core/_SettingEvaluationEnvironment;
.super Ljava/lang/Object;
.source "_SettingEvaluationEnvironment.java"


# static fields
.field private static final CURRENT:Ljava/lang/ThreadLocal;


# instance fields
.field private objectWrapper:Lfreemarker/ext/beans/BeansWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lfreemarker/core/_SettingEvaluationEnvironment;->CURRENT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endScope(Lfreemarker/core/_SettingEvaluationEnvironment;)V
    .registers 2

    .line 52
    sget-object v0, Lfreemarker/core/_SettingEvaluationEnvironment;->CURRENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static getCurrent()Lfreemarker/core/_SettingEvaluationEnvironment;
    .registers 1

    .line 38
    sget-object v0, Lfreemarker/core/_SettingEvaluationEnvironment;->CURRENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 40
    check-cast v0, Lfreemarker/core/_SettingEvaluationEnvironment;

    return-object v0

    .line 42
    :cond_b
    new-instance v0, Lfreemarker/core/_SettingEvaluationEnvironment;

    invoke-direct {v0}, Lfreemarker/core/_SettingEvaluationEnvironment;-><init>()V

    return-object v0
.end method

.method public static startScope()Lfreemarker/core/_SettingEvaluationEnvironment;
    .registers 3

    .line 46
    sget-object v0, Lfreemarker/core/_SettingEvaluationEnvironment;->CURRENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    .line 47
    new-instance v2, Lfreemarker/core/_SettingEvaluationEnvironment;

    invoke-direct {v2}, Lfreemarker/core/_SettingEvaluationEnvironment;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 48
    check-cast v1, Lfreemarker/core/_SettingEvaluationEnvironment;

    return-object v1
.end method


# virtual methods
.method public getObjectWrapper()Lfreemarker/ext/beans/BeansWrapper;
    .registers 3

    .line 56
    iget-object v0, p0, Lfreemarker/core/_SettingEvaluationEnvironment;->objectWrapper:Lfreemarker/ext/beans/BeansWrapper;

    if-nez v0, :cond_d

    .line 57
    new-instance v0, Lfreemarker/ext/beans/BeansWrapper;

    sget-object v1, Lfreemarker/template/Configuration;->VERSION_2_3_21:Lfreemarker/template/Version;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/BeansWrapper;-><init>(Lfreemarker/template/Version;)V

    iput-object v0, p0, Lfreemarker/core/_SettingEvaluationEnvironment;->objectWrapper:Lfreemarker/ext/beans/BeansWrapper;

    .line 59
    :cond_d
    iget-object v0, p0, Lfreemarker/core/_SettingEvaluationEnvironment;->objectWrapper:Lfreemarker/ext/beans/BeansWrapper;

    return-object v0
.end method
