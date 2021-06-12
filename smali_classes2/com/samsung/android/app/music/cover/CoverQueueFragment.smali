.class public final Lcom/samsung/android/app/music/cover/CoverQueueFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# static fields
.field public static final a:Ljava/lang/String; = "CoverQueueFragment"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/samsung/android/app/music/cover/CoverQueueWrapper;

.field private d:Landroid/widget/FrameLayout;

.field private e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

.field private f:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

.field private final g:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 52
    new-instance v0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment$1;-><init>(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->g:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

    .line 198
    new-instance v0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment$2;-><init>(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 172
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 173
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 175
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->c:Lcom/samsung/android/app/music/cover/CoverQueueWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 111
    new-instance v0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;-><init>(Lcom/samsung/android/app/music/cover/CoverQueueFragment;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->c:Lcom/samsung/android/app/music/cover/CoverQueueWrapper;

    const v0, 0x7f1301ef

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->d:Landroid/widget/FrameLayout;

    return-void
.end method

.method private a(Landroid/view/Window;)V
    .locals 3

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 100
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    const/16 v1, 0x30

    .line 101
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 102
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x0

    .line 105
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->f:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->setCoverMode(Landroid/view/Window;I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->b()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->b:Landroid/content/Context;

    return-object p0
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x0

    .line 188
    invoke-static {v0}, Lcom/samsung/android/app/music/ActivityLauncher;->a(Z)Landroid/content/Intent;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->d:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Lcom/samsung/android/app/music/cover/CoverQueueWrapper;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->c:Lcom/samsung/android/app/music/cover/CoverQueueWrapper;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->dismissAllowingStateLoss()V

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 79
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->b:Landroid/content/Context;

    .line 68
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->f:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    .line 69
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->f:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->g:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->addOnCoverStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;)V

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->f:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isCoverOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->a()V

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->b()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v1, 0x1

    .line 88
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 90
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 92
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->a(Landroid/view/View;)V

    .line 93
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->a(Landroid/view/Window;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewCover-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onDestroyCalled()V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->c:Lcom/samsung/android/app/music/cover/CoverQueueWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->a()V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->f:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->g:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->removeOnCoverStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->f:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->release()V

    .line 142
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 166
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->a(I)V

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewCover-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMetadataChanged()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueSize()J

    move-result-wide v0

    long-to-int p1, v0

    if-nez p1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->a()V

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

.method public onStart()V
    .locals 4

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewCover-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->h:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewCover-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 132
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    return-void
.end method
