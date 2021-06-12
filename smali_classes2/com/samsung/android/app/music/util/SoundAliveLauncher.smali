.class public Lcom/samsung/android/app/music/util/SoundAliveLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/support/v4/app/FragmentActivity;I)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/util/SoundAliveLauncher;->a(Landroid/support/v4/app/FragmentActivity;IZ)V

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;IZ)V
    .locals 5

    .line 23
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->v:Ljava/lang/String;

    .line 24
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->hasExternalSoundAlive(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "SMUSIC-SoundAlive"

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launch() is called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isExternal-SA : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", version :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 31
    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->launchExternalSA(Landroid/app/Activity;ZI)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "SMUSIC-SoundAlive"

    const-string p2, "Sound Alive is not operated because of unknown reason! launch internal sound alive"

    .line 33
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->shouldUseInternalSoundAlive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 37
    invoke-static {p0}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string p2, "more_sound_quality_effects"

    .line 41
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
