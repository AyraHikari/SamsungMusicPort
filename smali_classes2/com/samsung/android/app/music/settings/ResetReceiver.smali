.class public final Lcom/samsung/android/app/music/settings/ResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ResetReceiver.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 5

    const-string v0, "music_service_pref"

    const/4 v1, 0x4

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shuffle"

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "repeat"

    .line 4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->h:Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;

    move-result-object v0

    const-string v1, "play_speed"

    const/high16 v3, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->N(Ljava/lang/String;F)V

    const-string v1, "cross_fade"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->g(Ljava/lang/String;I)V

    const-string v1, "smart_volume"

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->e(Ljava/lang/String;Z)V

    const-string v1, "skip_silences"

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->e(Ljava/lang/String;Z)V

    .line 11
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/b;->d(Landroid/content/Context;)Z

    move-result v1

    const-string v3, "lock_screen"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->e(Ljava/lang/String;Z)V

    .line 12
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/utils/features/a;->d:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string v1, "screen_off_music"

    .line 13
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->e(Ljava/lang/String;Z)V

    .line 14
    :cond_0
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/settings/r;->s(Lcom/samsung/android/app/musiclibrary/core/settings/provider/c;I)V

    .line 15
    sget v1, Lcom/samsung/android/app/music/info/a;->a:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/settings/r;->p(Lcom/samsung/android/app/musiclibrary/core/settings/provider/c;I)V

    .line 16
    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/d;->l(Lcom/samsung/android/app/musiclibrary/core/settings/provider/c;Z)V

    .line 17
    sget-object v1, Lcom/samsung/android/app/music/info/b;->a:Ljava/lang/String;

    const-string v4, "AUTO_BACKUP_ALL_PLAYLISTS"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v4, Lcom/samsung/android/app/music/info/d;->a:Z

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->e(Ljava/lang/String;Z)V

    .line 18
    sget-object v1, Lcom/samsung/android/app/music/util/q;->a:Lcom/samsung/android/app/music/util/q;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/util/q;->D(Landroid/content/Context;)V

    .line 19
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/c0;->a:Lcom/samsung/android/app/musiclibrary/ui/c0;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/c0;->d()V

    const-string v1, "auto_play_in_background"

    .line 20
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->e(Ljava/lang/String;Z)V

    .line 21
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/a;->Z:Z

    if-eqz v1, :cond_1

    const-string v1, "mobile_data"

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->e(Ljava/lang/String;Z)V

    .line 23
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/settings/r;->r(Lcom/samsung/android/app/musiclibrary/core/settings/provider/c;Z)V

    const-string v1, "milk_streaming_quality_mobile"

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->g(Ljava/lang/String;I)V

    const-string v1, "milk_streaming_quality_wifi"

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->g(Ljava/lang/String;I)V

    const-string v1, "com.samsung.radio.settings.STREAMING_AUDIO_QUALITY_NEXT_HIGHEST_AVAILABLE_IS_DISPLAYED"

    .line 26
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/preferences/b;->k(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "streaming_video_quality_mobile"

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->g(Ljava/lang/String;I)V

    const-string v1, "streaming_video_quality_wifi"

    .line 28
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->g(Ljava/lang/String;I)V

    const-string v1, "milk_download_quality"

    .line 29
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->g(Ljava/lang/String;I)V

    const-string v1, "com.samsung.radio.settings.DOWNLOAD_AUDIO_QUALITY_NEXT_HIGHEST_AVAILABLE_IS_DISPLAYED"

    .line 30
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/preferences/b;->k(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "using_cache"

    .line 31
    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->e(Ljava/lang/String;Z)V

    .line 32
    sget-object p1, Lcom/samsung/android/app/music/settings/b;->a:Lcom/samsung/android/app/music/settings/b;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/settings/b;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/settings/r;->t(Lcom/samsung/android/app/musiclibrary/core/settings/provider/c;J)V

    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 2
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ResetReceiver"

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "action:"

    .line 5
    invoke-static {v1, p2}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/a;->n:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 7
    invoke-static {v0, p2}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/ResetReceiver;->a(Landroid/content/Context;)V

    :cond_2
    return-void
.end method
