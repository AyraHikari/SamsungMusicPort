.class Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/icu/SeslLocaleDataReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleDataApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/icu/SeslLocaleDataReflector$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/util/Locale;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "libcore.icu.LocaleData"

    const-string v1, "get"

    const/4 v2, 0x1

    .line 79
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/Locale;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v0, v2}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "libcore.icu.LocaleData"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object v1
.end method

.method public getField_amPm(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "libcore.icu.LocaleData"

    const-string v1, "amPm"

    .line 42
    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    const-class v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 45
    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    .line 46
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, "Am"

    const-string v0, "Pm"

    .line 50
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getField_narrowAm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "libcore.icu.LocaleData"

    const-string v1, "narrowAm"

    .line 55
    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    .line 58
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, "Am"

    return-object p1
.end method

.method public getField_narrowPm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "libcore.icu.LocaleData"

    const-string v1, "narrowPm"

    .line 67
    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    .line 70
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, "Pm"

    return-object p1
.end method

.method public getField_zeroDigit(Ljava/lang/Object;)C
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "libcore.icu.LocaleData"

    const-string v1, "zeroDigit"

    .line 30
    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    .line 33
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x30

    return p1
.end method
