.class public Lcom/samsung/android/app/music/service/ShuffleRepeatController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->b:Landroid/util/SparseArray;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 146
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueUtils;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 149
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p0

    return p0
.end method

.method private c()Z
    .locals 1

    .line 116
    iget v0, p0, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()Z
    .locals 2

    .line 120
    iget v0, p0, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->b:Landroid/util/SparseArray;

    iget v1, p0, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->c:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-object v0
.end method

.method private f()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-object v0
.end method

.method private g()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->b:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-object v0
.end method

.method private h()Z
    .locals 2

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->g()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    const/16 v1, 0xd

    .line 137
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->c:I

    return-void
.end method

.method public a(II)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 88
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->b(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 90
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->c(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 142
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->d:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->f()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setShuffleMode(I)V

    .line 47
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->d:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->g()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setShuffleMode(I)V

    goto :goto_1

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->d:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->f()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setShuffleMode(I)V

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->g()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setShuffleMode(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "SMUSIC-SV-List"

    const-string v0, "setShuffleMode but fixed order playlist. "

    .line 53
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->f()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setRepeatMode(I)V

    .line 68
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->d:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->g()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setRepeatMode(I)V

    goto :goto_1

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->d:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->f()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setRepeatMode(I)V

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->g()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setRepeatMode(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "SMUSIC-SV-List"

    const-string v0, "setRepeatMode but fixed order playlist. "

    .line 74
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public d(I)I
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getMode(I)I

    move-result p1

    return p1
.end method

.method public e(I)I
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->e()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getMode(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getToggleMode(II)I

    move-result v0

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->a(II)V

    return v0
.end method

.method public f(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->g()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setShuffleMode(I)V

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->g()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setRepeatMode(I)V

    return-void

    .line 106
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->d:Z

    if-eqz p1, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->g()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->f()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getShuffleMode()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setShuffleMode(I)V

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->g()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->f()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getRepeatMode()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setRepeatMode(I)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->g()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setShuffleMode(I)V

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->g()Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->setRepeatMode(I)V

    :goto_0
    return-void
.end method
