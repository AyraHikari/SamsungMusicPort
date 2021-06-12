.class public final Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# instance fields
.field private a:Z

.field private final b:Landroid/content/ServiceConnection;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->a:Z

    .line 30
    new-instance v0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder$1;-><init>(Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->b:Landroid/content/ServiceConnection;

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->c:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->d:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 51
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->a:Z

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->b:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->a:Z

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->a:Z

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "com.samsung.android.app.music.core.state.HIDE_NOTIFICATION"

    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->c:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    .line 70
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->d:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->isShownNotification()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->c:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public release()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/observer/MilkServiceBinder;->b(Landroid/content/Context;)V

    return-void
.end method
