.class final Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RadioPlayControl"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/service/PlayerService;

.field private final b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

.field private final c:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

.field private final d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/PlayerService;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)V
    .locals 0

    .line 1754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1755
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a:Lcom/samsung/android/app/music/service/PlayerService;

    .line 1756
    iput-object p2, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .line 1757
    iput-object p3, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->c:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    .line 1758
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->c:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 p2, 0x2

    .line 1759
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-void
.end method

.method private a()Z
    .locals 1

    .line 1897
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 1898
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    return v0
.end method

.method private a(Z)Z
    .locals 6

    .line 1913
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 1915
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1916
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    goto :goto_0

    .line 1918
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->position()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 1919
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->c()V

    goto :goto_0

    .line 1921
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1922
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    goto :goto_0

    .line 1926
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(ZZ)Z
    .locals 3

    .line 1932
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerService;->z(Lcom/samsung/android/app/music/service/PlayerService;)V

    .line 1933
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1936
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1937
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToNext(ZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method private b()Z
    .locals 4

    .line 1902
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1903
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1904
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->c()V

    const/4 v0, 0x1

    return v0

    .line 1907
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a:Lcom/samsung/android/app/music/service/PlayerService;

    const v1, 0x7f0b00ff

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/PlayerService;->d(Lcom/samsung/android/app/music/service/PlayerService;I)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private b(ZZ)Z
    .locals 1

    .line 1942
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToNext(ZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method private c()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1947
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->seek(J)J

    return-void
.end method

.method private d()V
    .locals 1

    .line 1951
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1952
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 7

    .line 1957
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerService;->A(Lcom/samsung/android/app/music/service/PlayerService;)V

    .line 1958
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->i()V

    .line 1960
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 1961
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 1962
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1963
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1964
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 1965
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, v5, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->movePosition(II)V

    goto :goto_0

    .line 1967
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/PlayerService;->play()V

    :goto_0
    return-void

    .line 1972
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a:Lcom/samsung/android/app/music/service/PlayerService;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v6

    invoke-static {v1, v0, v6}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/music/service/PlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1973
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1974
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 1975
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    .line 1976
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getNowPlayingListPosition()I

    move-result v1

    invoke-interface {v0, v1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->movePosition(II)V

    goto :goto_1

    .line 1978
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->j()V

    .line 1979
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->play()V

    :goto_1
    return-void
.end method

.method private f()Z
    .locals 1

    .line 1984
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a:Lcom/samsung/android/app/music/service/PlayerService;

    .line 1985
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v0

    .line 1986
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getPlayListId()Ljava/lang/String;

    move-result-object v0

    .line 1987
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private g()V
    .locals 1

    .line 1991
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1992
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1993
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d()V

    goto :goto_0

    .line 1995
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->e()V

    goto :goto_0

    .line 1998
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->e()V

    :goto_0
    return-void
.end method

.method private h()Z
    .locals 2

    .line 2003
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a:Lcom/samsung/android/app/music/service/PlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/music/service/PlayerService;I)Z

    move-result v0

    return v0
.end method

.method private i()V
    .locals 3

    .line 2007
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 2008
    instance-of v0, v0, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;

    .line 2009
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a:Lcom/samsung/android/app/music/service/PlayerService;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/music/service/PlayerService;IZ)V

    return-void
.end method

.method private j()V
    .locals 4

    .line 2013
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v0

    .line 2014
    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->c:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 2015
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const/16 v0, 0x9

    .line 2014
    invoke-interface {v2, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public completePlaying(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1781
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b(ZZ)Z

    return-void
.end method

.method public duration()J
    .locals 2

    .line 1853
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public forward()V
    .locals 0

    return-void
.end method

.method public isSupportForward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportRewind()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public next()Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1806
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a(ZZ)Z

    move-result v0

    return v0
.end method

.method public next(ZZ)Z
    .locals 0

    .line 1811
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a(ZZ)Z

    move-result p1

    return p1
.end method

.method public openQueueId(JIZ)V
    .locals 3

    .line 1773
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerService;->w(Lcom/samsung/android/app/music/service/PlayerService;)V

    .line 1774
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1775
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 1776
    iget-object p4, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p4, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToQueueItem(JI)V

    return-void
.end method

.method public openQueuePosition(IIZ)V
    .locals 3

    const-string v0, "SMUSIC-SV"

    .line 1764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openQueuePosition position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " play : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerService;->v(Lcom/samsung/android/app/music/service/PlayerService;)V

    .line 1766
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1767
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 1768
    iget-object p3, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->movePosition(II)V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 1801
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d()V

    return-void
.end method

.method public play()V
    .locals 0

    .line 1796
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->e()V

    return-void
.end method

.method public position()J
    .locals 2

    .line 1858
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev(J)Z
    .locals 1

    .line 1825
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerService;->y(Lcom/samsung/android/app/music/service/PlayerService;)V

    .line 1826
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1829
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1830
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1831
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    goto :goto_0

    .line 1833
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public prev(Z)Z
    .locals 1

    .line 1816
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerService;->x(Lcom/samsung/android/app/music/service/PlayerService;)V

    .line 1817
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1818
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b()Z

    move-result p1

    return p1

    .line 1820
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a(Z)Z

    move-result p1

    return p1
.end method

.method public rewind()V
    .locals 0

    return-void
.end method

.method public seek(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1841
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->a:Lcom/samsung/android/app/music/service/PlayerService;

    .line 1842
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    .line 1843
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    .line 1844
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1845
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide p1

    return-wide p1

    .line 1848
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->seek(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public setSupposeToBePlaying(Z)V
    .locals 1

    .line 1786
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->b:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    return-void
.end method

.method public startForward(I)V
    .locals 0

    return-void
.end method

.method public startRewind(I)V
    .locals 0

    return-void
.end method

.method public stopForwardRewind(I)V
    .locals 0

    return-void
.end method

.method public togglePlay()V
    .locals 0

    .line 1791
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->g()V

    return-void
.end method
