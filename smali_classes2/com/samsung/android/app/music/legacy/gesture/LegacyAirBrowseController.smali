.class public Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# static fields
.field private static final a:Ljava/lang/String; = "LegacyAirBrowseController"


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->d:I

    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->e:Z

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->f:Z

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->b:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->c:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    .line 37
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->c:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->a(Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;)V

    return-void
.end method

.method private c()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->b(Landroid/content/Context;)Z

    move-result v0

    .line 111
    sget-object v1, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startGestureService() isFeatureOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->a:Ljava/lang/String;

    const-string v1, "startGestureService() can\'t start because player air gesture setting is off."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    sget-object v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->a:Ljava/lang/String;

    const-string v1, "startGestureService() can\'t start because lock screen is on."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->f:Z

    if-nez v0, :cond_2

    .line 122
    sget-object v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->a:Ljava/lang/String;

    const-string v1, "startGestureService() can\'t start because it\'s not playing."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->d:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    .line 126
    sget-object v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->a:Ljava/lang/String;

    const-string v1, "startGestureService() can\'t start because list item is one or none."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->e:Z

    if-eqz v0, :cond_4

    .line 130
    sget-object v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->a:Ljava/lang/String;

    const-string v1, "startGestureService() already started."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->c:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->a(Z)V

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->e:Z

    .line 135
    sget-object v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->a:Ljava/lang/String;

    const-string v1, "startGestureService"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 139
    iget-boolean v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->e:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->c:Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseManager;->a()V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->e:Z

    .line 142
    sget-object v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->a:Ljava/lang/String;

    const-string v1, "stopGestureService"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 101
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playNext()V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 106
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playPrev(Z)V

    return-void
.end method

.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroyCalled()V
    .locals 0

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueSize()J

    move-result-wide v0

    long-to-int p1, v0

    .line 73
    iget v0, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->d:I

    if-eq v0, p1, :cond_0

    .line 74
    iput p1, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->d:I

    :cond_0
    return-void
.end method

.method public onPauseCalled()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->d()V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 80
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->f:Z

    .line 81
    iget-boolean p1, p0, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->f:Z

    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->c()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->d()V

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

    return-void
.end method

.method public onResumeCalled()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;->c()V

    return-void
.end method

.method public onStartCalled()V
    .locals 0

    return-void
.end method

.method public onStopCalled()V
    .locals 0

    return-void
.end method
