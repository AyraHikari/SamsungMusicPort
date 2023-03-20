.class public Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;
.super Ljava/lang/Object;
.source "SystemPropertiesCompat.java"


# static fields
.field private static sGetInt:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ro.csc.country_code"

    .line 3
    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCountryIsoCode()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ro.csc.countryiso_code"

    .line 3
    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->sGetInt:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Class;

    .line 3
    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v1

    const-string v4, "android.os.SemSystemProperties"

    const-string v5, "getInt"

    .line 4
    invoke-static {v4, v5, v0}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->getReflectionMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->sGetInt:Ljava/lang/reflect/Method;

    .line 5
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->sGetInt:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v0, v4, v3}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 6
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 7
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return p1

    .line 8
    :cond_2
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ro.csc.sales_code"

    .line 3
    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
