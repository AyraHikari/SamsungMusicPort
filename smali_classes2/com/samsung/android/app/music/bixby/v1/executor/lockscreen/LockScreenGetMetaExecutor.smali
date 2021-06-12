.class public Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "LockScreenGetMetaExecutor"


# instance fields
.field private final b:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

.field private d:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

.field private e:Z

.field private final f:Landroid/content/ServiceConnection;

.field private final g:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->e:Z

    .line 148
    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->f:Landroid/content/ServiceConnection;

    .line 169
    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->g:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->e()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->d:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->d:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtistPage"

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "SongTitle"

    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->d:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->c()V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;)V
    .locals 3

    .line 97
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object p2

    .line 99
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "CurrentSongInfo"

    const-string v1, "Exist"

    const-string v2, "no"

    .line 100
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isCeleb()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CelebSong"

    const-string v1, "Valid"

    const-string v2, "yes"

    .line 104
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "ArtistName"

    const-string v1, "Exist"

    const-string v2, "yes"

    .line 107
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ArtistName"

    .line 109
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setResultParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    .line 113
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleArtistNameCommand artistName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->g:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 65
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startPlayerService()V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->f:Landroid/content/ServiceConnection;

    const-class v2, Lcom/samsung/android/app/music/service/PlayerService;

    const/4 v3, 0x0

    .line 67
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;Z)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-void
.end method

.method private b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;)V
    .locals 3

    .line 117
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object p2

    .line 119
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "CurrentSongInfo"

    const-string v1, "Exist"

    const-string v2, "no"

    .line 120
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isCeleb()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CelebSong"

    const-string v1, "Valid"

    const-string v2, "yes"

    .line 124
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "SongTitle"

    const-string v1, "Exist"

    const-string v2, "yes"

    .line 127
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SongTitle"

    .line 129
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setResultParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    .line 133
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSongTitleCommand songTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->e:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->g:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unregisterCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->e:Z

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->d()V

    return-void
.end method

.method private d()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->e()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method private e()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2

    .line 137
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 141
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 142
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ARTIST_DETAIL"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SONG_TITLE"

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 56
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->d:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->b()V

    const/4 p1, 0x1

    return p1
.end method
