.class public final Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# static fields
.field private static final a:Ljava/lang/String; = "LegacyAirBrowseUpdater"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

.field private final c:Landroid/content/Context;

.field private d:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->e:I

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->f:Z

    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->g:Z

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->c:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->b:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 39
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->d:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    .line 40
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->d:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->a(Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;)V

    return-void
.end method

.method private c()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->c(Landroid/content/Context;)Z

    move-result v0

    .line 89
    sget-object v1, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGestureService() isFeatureOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->a:Ljava/lang/String;

    const-string v1, "startGestureService() can\'t start because player air gesture setting is off."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->g:Z

    if-nez v0, :cond_2

    .line 101
    sget-object v0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->a:Ljava/lang/String;

    const-string v1, "startGestureService() can\'t start because it\'s not playing."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 104
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->e:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    .line 105
    sget-object v0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->a:Ljava/lang/String;

    const-string v1, "startGestureService() can\'t start because list item is one or none."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 108
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->f:Z

    if-eqz v0, :cond_4

    .line 109
    sget-object v0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->a:Ljava/lang/String;

    const-string v1, "startGestureService() already started."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->d:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->a(Z)V

    .line 113
    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->f:Z

    .line 114
    sget-object v0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->a:Ljava/lang/String;

    const-string v1, "startGestureService"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_5
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->a:Ljava/lang/String;

    const-string v1, "startGestureService() can\'t start because lock screen is off or screen is off."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 118
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->f:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->d:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->a()V

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->f:Z

    .line 121
    sget-object v0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->a:Ljava/lang/String;

    const-string v1, "stopGestureService"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->b:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->next()Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->b:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->prev(Z)Z

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 67
    sget-object p2, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExtraChanged() action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->c()V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->d()V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.USER_PRESENT"

    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueSize()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->e:I

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->g:Z

    .line 51
    iget-boolean p1, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->g:Z

    if-eqz p1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->c()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->d()V

    :goto_0
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

    if-eqz p2, :cond_0

    const-string p1, "extra.list_length"

    .line 61
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/service/observer/LegacyAirBrowseUpdater;->e:I

    :cond_0
    return-void
.end method
