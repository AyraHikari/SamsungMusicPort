.class public Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;
.super Ljava/lang/Object;
.source "PersonaManagerSdlCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static isKioskModeEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isSecureFolderId(I)Z
    .locals 0

    invoke-static {p0}, Landroid/os/PersonaManager;->isSecureFolderId(I)Z

    move-result p0

    return p0
.end method
