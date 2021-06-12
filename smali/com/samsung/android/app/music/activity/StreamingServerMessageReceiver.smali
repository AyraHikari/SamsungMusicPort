.class public Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

.field private final b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .line 46
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method

.method private a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 109
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 110
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 113
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    :goto_0
    return-void
.end method

.method private static a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 100
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v0, "streaming_server_dialog"

    .line 101
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/DialogFragment;

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver;->a(Landroid/support/v4/app/FragmentActivity;)V

    const-string v0, "SMUSIC-ServerMessage"

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "extra_result_code"

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x36b0

    if-ne v0, v1, :cond_1

    .line 76
    invoke-static {p0}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    new-instance p1, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;-><init>()V

    .line 78
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string p2, "streaming_server_dialog"

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_1
    invoke-static {p2, p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/PlayerMessageFactory;->a(ILandroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->gravity()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_3

    const/16 v2, 0x50

    if-eq v1, v2, :cond_2

    .line 94
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 89
    :cond_2
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;->a(Landroid/os/Bundle;I)Landroid/support/v4/app/DialogFragment;

    move-result-object p1

    .line 90
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string p2, "streaming_server_dialog"

    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_3
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment;->a(Landroid/os/Bundle;I)Landroid/support/v4/app/DialogFragment;

    move-result-object p1

    .line 86
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string p2, "streaming_server_dialog"

    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 63
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver;->a(I)V

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    .line 51
    invoke-static {}, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->a()Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    .line 56
    invoke-static {}, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->a()Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V

    return-void
.end method
