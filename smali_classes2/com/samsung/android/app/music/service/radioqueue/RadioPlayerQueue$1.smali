.class Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 175
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->count:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->g(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->getNotifier()Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyQueueHistory(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->h(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;III)V

    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;IIZ)Z

    return-void
.end method

.method public a(JI)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;JI)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;)V
    .locals 13

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->isLegalAgreedError(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V

    .line 153
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    const-string v0, "setList() but ignore this request. Because it is not legal agreed."

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;Ljava/lang/String;)V

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->c(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;Z)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->d(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    .line 163
    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->e(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->list:[J

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->isSameList([J[J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    iget v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->playMode:I

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->position:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;II)V

    return-void

    .line 167
    :cond_2
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->list:[J

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->f(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->ensurePlayItems([JLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 168
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->playMode:I

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->getUriType()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->getKeyWord()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->queueItems:Ljava/util/List;

    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    iget v9, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->position:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZZZ)V

    .line 171
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->history:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->b(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;Z)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->i(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V

    return-void
.end method

.method public b(IZ)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;IIZ)Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->j(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;I)I

    return-void
.end method
