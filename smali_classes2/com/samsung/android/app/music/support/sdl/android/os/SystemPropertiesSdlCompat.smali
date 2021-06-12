.class public Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 11
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 0

    .line 7
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
