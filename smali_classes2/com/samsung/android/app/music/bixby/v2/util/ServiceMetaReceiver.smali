.class public final Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ServiceMetaReceiver"

.field private static final b:Z


# instance fields
.field private final c:Landroid/content/Context;

.field private d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

.field private e:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

.field private f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

.field private g:Z

.field private h:Z

.field private final i:Landroid/content/ServiceConnection;

.field private final j:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->i:Landroid/content/ServiceConnection;

    .line 166
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->j:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->c:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->e:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->g:Z

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)I
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->e()I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->e:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 105
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->c(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    .line 106
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->e:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    :cond_0
    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->g:Z

    return-void
.end method

.method private b(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 132
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    return-object p1

    .line 134
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->d()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a(I)V

    return-void
.end method

.method private c(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 140
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    return-object p1

    .line 142
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->g:Z

    return p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->j:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->registerCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)Z

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->h:Z

    return-void
.end method

.method private e()I
    .locals 4

    .line 113
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a:Ljava/lang/String;

    const-string v1, "getActiveQueueType() - MusicExtras is null."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->c:Landroid/content/Context;

    const-string v1, "music_service_pref"

    const/4 v2, 0x4

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "queue_type"

    const/4 v2, 0x0

    .line 119
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 122
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 124
    :goto_0
    sget-boolean v1, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b:Z

    if-eqz v1, :cond_1

    .line 125
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveQueueType() type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 61
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a:Ljava/lang/String;

    const-string v1, "bindToService()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->wasServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a(I)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startPlayerService()V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->i:Landroid/content/ServiceConnection;

    const-class v2, Lcom/samsung/android/app/music/service/PlayerService;

    const/4 v3, 0x0

    .line 67
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;Z)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->d()V

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 91
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a:Ljava/lang/String;

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->e:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    .line 93
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->h:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->j:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unregisterCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->h:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a(Z)V

    return-void
.end method
