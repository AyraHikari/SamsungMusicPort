.class public final Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a:Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(I)Ljava/lang/String;
    .locals 3

    sparse-switch p0, :sswitch_data_0

    const-string v0, "FireBase"

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentTabName - invalid listType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :sswitch_0
    const-string p0, "my_music_tab_tracks"

    goto :goto_0

    :sswitch_1
    const-string p0, "my_music_tab_spotify"

    goto :goto_0

    :sswitch_2
    const-string p0, "my_music_tab_heart"

    goto :goto_0

    :sswitch_3
    const-string p0, "my_music_tab_composers"

    goto :goto_0

    :sswitch_4
    const-string p0, "my_music_tab_folders"

    goto :goto_0

    :sswitch_5
    const-string p0, "my_music_tab_genres"

    goto :goto_0

    :sswitch_6
    const-string p0, "my_music_tab_playlists"

    goto :goto_0

    :sswitch_7
    const-string p0, "my_music_tab_artists"

    goto :goto_0

    :sswitch_8
    const-string p0, "my_music_tab_albums"

    :goto_0
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_8
        0x10003 -> :sswitch_7
        0x10004 -> :sswitch_6
        0x10006 -> :sswitch_5
        0x10007 -> :sswitch_4
        0x10008 -> :sswitch_3
        0x10030 -> :sswitch_2
        0x10100 -> :sswitch_1
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "FireBase"

    const-string p1, "setCurrentScreen - activity is null"

    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "FireBase"

    const-string p1, "sendEvent - activity is null"

    .line 28
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 39
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p0

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "FireBase"

    const-string p1, "sendEvent - context is null"

    .line 41
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
