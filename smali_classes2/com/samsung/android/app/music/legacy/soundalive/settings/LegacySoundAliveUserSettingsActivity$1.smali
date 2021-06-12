.class Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 226
    invoke-static {}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Audio path changed!"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;

    iget-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;

    invoke-static {p2}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->a(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->a(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;Z)V

    .line 228
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->b(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;)Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->a()V

    return-void
.end method
