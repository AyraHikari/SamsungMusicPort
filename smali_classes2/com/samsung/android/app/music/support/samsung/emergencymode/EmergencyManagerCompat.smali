.class public Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyManagerCompat;
.super Ljava/lang/Object;
.source "EmergencyManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmergencyMode(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/emergencymode/EmergencyManagerSdlCompat;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
