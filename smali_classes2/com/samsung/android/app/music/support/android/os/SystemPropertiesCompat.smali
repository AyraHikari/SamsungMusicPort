.class public Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sGetInt:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 34
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 43
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 47
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "USA"

    return-object v0
.end method

.method public static getCountryIsoCode()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "USA"

    return-object v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 7

    const p0, 0xb55

    return p0
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "XAR"

    return-object v0
.end method
