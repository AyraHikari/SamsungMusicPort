.class public final Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;
.super Lcom/samsung/android/app/musiclibrary/core/service/receiver/EmptyDataSchemeIntentReceiverObserver;
.source "SourceFile"


# static fields
.field private static final ACTIONS:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV"

.field private static final TAG:Ljava/lang/String; = "SV"


# instance fields
.field private final mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

.field private mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

.field private final mPlayerLoggers:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    .line 38
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.music.musicservicecommand"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "com.samsung.android.app.music.core.action.PLAYBACK_FORWARD"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "com.samsung.android.app.music.core.action.PLAYBACK_REWIND"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "com.samsung.android.app.music.core.action.MUSIC_AUTO_OFF"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "com.samsung.android.app.music.ui.dex.action.EXIT_MUSIC"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "com.sec.android.sidesync.source.SIDESYNC_CONNECTED"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "com.samsung.android.app.music.core.action.HIDE_NOTIFICATION"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "com.samsung.android.app.music.core.action.EXIT_MUSIC"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/util/SparseArray;)V
    .locals 0
    .param p2    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/EmptyDataSchemeIntentReceiverObserver;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 62
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mPlayerLoggers:Landroid/util/SparseArray;

    return-void
.end method

.method private getEmptyLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/logger/EmptyPlayerLogger;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/EmptyPlayerLogger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    :goto_0
    return-object v0
.end method

.method private getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mPlayerLoggers:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->getEmptyLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "tag"

    const/16 v1, 0x64

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mPlayerLoggers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-nez p1, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->getEmptyLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public getSupportedActions()[Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->ACTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.music.musicservicecommand"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "command"

    .line 74
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMUSIC-SV"

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " goggle legacy command action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " command : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->handleExtraCommand(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.samsung.android.app.music.core.action.PLAYBACK_FORWARD"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->forward()V

    goto :goto_1

    :cond_2
    const-string v0, "com.samsung.android.app.music.core.action.PLAYBACK_REWIND"

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->rewind()V

    goto :goto_1

    :cond_3
    const-string v0, "com.samsung.android.app.music.core.action.MUSIC_AUTO_OFF"

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->autoOff()V

    goto :goto_1

    :cond_4
    const-string v0, "com.samsung.android.app.music.ui.dex.action.EXIT_MUSIC"

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->exit()V

    goto :goto_1

    :cond_5
    const-string v0, "com.samsung.android.app.music.core.action.HIDE_NOTIFICATION"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->hideNotification()V

    goto :goto_1

    :cond_6
    const-string v0, "com.samsung.android.app.music.core.action.EXIT_MUSIC"

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 92
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->exit()V

    .line 93
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->e()V

    goto :goto_1

    .line 80
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->becomingNoisy()V

    :cond_8
    :goto_1
    return-void
.end method
