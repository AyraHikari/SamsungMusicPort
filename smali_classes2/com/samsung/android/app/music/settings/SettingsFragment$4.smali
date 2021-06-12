.class Lcom/samsung/android/app/music/settings/SettingsFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/SettingsFragment;)V
    .locals 0

    .line 1495
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$4;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1498
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicSettings"

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreferencesUpdaterReceiver - action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.samsung.android.app.music.core.action.AUDIO_PATH_CHANGED"

    .line 1500
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1501
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$4;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->d(Lcom/samsung/android/app/music/settings/SettingsFragment;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.samsung.android.app.music.core.action.MUSIC_AUTO_OFF"

    .line 1502
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1503
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$4;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->e(Lcom/samsung/android/app/music/settings/SettingsFragment;)V

    .line 1504
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$4;->a:Lcom/samsung/android/app/music/settings/SettingsFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->f(Lcom/samsung/android/app/music/settings/SettingsFragment;)V

    :cond_1
    :goto_0
    return-void
.end method
