.class Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;ZII)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-ne p4, p3, :cond_0

    .line 91
    iget-object p3, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {p3}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->onMetaUpdated(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onMetaChanged mOnQueueChangedAdapterListener is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->b(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)I

    move-result v0

    .line 83
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result v1

    .line 85
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;ZII)V

    return-void
.end method

.method public onMetaUpdated(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onMetaUpdated(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    :cond_0
    return-void
.end method

.method public onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->b(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)I

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 p1, 0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object p1

    invoke-interface {p1, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 120
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iget-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object p1

    invoke-interface {p1, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onQueueChanged([J)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onQueueChanged([J)V

    :cond_0
    return-void
.end method

.method public onQueueComplete()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onQueueComplete()V

    :cond_0
    return-void
.end method

.method public onQueueComposed(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
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

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$1;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onQueueComposed(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
