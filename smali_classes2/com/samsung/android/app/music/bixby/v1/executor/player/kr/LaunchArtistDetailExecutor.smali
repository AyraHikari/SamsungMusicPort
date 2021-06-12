.class public final Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "LaunchArtistDetailExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

.field private f:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

.field private final g:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->g:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 49
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->c:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .line 50
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->d:Landroid/content/Context;

    .line 51
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->d:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->f:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;)Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->c:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 12
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ARTIST_DETAIL"

    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/MediaDataUtils;->b()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-string p1, "CurrentSongInfo"

    const-string v1, "Exist"

    const-string v2, "no"

    .line 62
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v1, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return v3

    .line 68
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v4

    long-to-int v2, v4

    const v4, 0x10001

    if-eq v2, v4, :cond_2

    packed-switch v2, :pswitch_data_0

    const-string p1, "ArtistInformation"

    const-string v1, "Exist"

    const-string v2, "no"

    .line 98
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v1, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_1

    .line 71
    :pswitch_0
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isCeleb()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "CelebSong"

    const-string v1, "Valid"

    const-string v2, "yes"

    .line 72
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v1, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return v3

    .line 77
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSourceId()Ljava/lang/String;

    move-result-object v0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->f:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->e:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->g:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a(Ljava/lang/String;Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;)V

    goto :goto_1

    .line 83
    :cond_2
    :pswitch_1
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtistId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 84
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v9

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->c:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    instance-of p1, p1, Lcom/samsung/android/app/music/navigate/NavigationManager;

    if-eqz p1, :cond_3

    .line 86
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->c:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    move-object v6, p1

    check-cast v6, Lcom/samsung/android/app/music/navigate/NavigationManager;

    const v7, 0x100003

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 87
    invoke-interface/range {v6 .. v11}, Lcom/samsung/android/app/music/navigate/NavigationManager;->navigate(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->d:Landroid/content/Context;

    const v2, 0x100003

    const/4 v4, 0x0

    invoke-static {p1, v2, v8, v9, v4}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :goto_0
    const-string p1, "ArtistName"

    const-string v2, "Exist"

    const-string v4, "yes"

    .line 92
    invoke-virtual {v0, p1, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ArtistName"

    .line 94
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setResultParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v1, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    :goto_1
    return v3

    :cond_4
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
