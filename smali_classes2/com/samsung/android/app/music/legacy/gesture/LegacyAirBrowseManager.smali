.class public Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LegacyAirBrowseManager"

.field private static volatile b:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;


# instance fields
.field private c:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

.field private d:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;

.field private final e:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$1;-><init>(Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->e:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;

    .line 34
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->c:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    .line 35
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->c:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->e:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;

    .line 36
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->registerGestureEventChangedListener(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;)Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->d:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;
    .locals 2

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->b:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    if-nez v0, :cond_1

    .line 24
    const-class v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->b:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->b:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 30
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->b:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 56
    invoke-static {p0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    .line 60
    invoke-static {p0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->f(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 3

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "air_motion_turn"

    const/4 v1, 0x0

    const/4 v2, -0x2

    .line 66
    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/android/provider/SettingsSdlCompat$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 3

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "air_motion_turn_now_playing_on_music"

    const/4 v1, 0x0

    const/4 v2, -0x2

    .line 73
    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/android/provider/SettingsSdlCompat$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 3

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "air_motion_turn_bgm_on_lock_screen"

    const/4 v1, 0x0

    const/4 v2, -0x2

    .line 80
    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/android/provider/SettingsSdlCompat$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->c:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->c:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->unregisterGestureListener()V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->d:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->c:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->c:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->registerGestureListener(Z)V

    :cond_0
    return-void
.end method
