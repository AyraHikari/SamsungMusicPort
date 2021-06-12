.class final Lcom/samsung/android/app/music/cover/CoverQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;,
        Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "CoverQueue"


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private final d:Landroid/support/v7/widget/LinearLayoutManager;

.field private final e:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

.field private f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1301ec

    .line 91
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const v1, 0x7f1301ed

    .line 92
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->b:Landroid/view/View;

    .line 93
    new-instance p2, Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager;

    invoke-direct {p2, v0}, Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->d:Landroid/support/v7/widget/LinearLayoutManager;

    .line 94
    iget-object p2, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->d:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 95
    new-instance p2, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string p1, "_id"

    .line 96
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;

    const-string p2, "title"

    .line 97
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;

    const-string p2, "artist"

    .line 98
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;

    const p2, 0x7f040050

    .line 99
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->a(I)Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->b()Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->e:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    .line 101
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->e:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    new-instance p2, Lcom/samsung/android/app/music/cover/CoverQueue$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/cover/CoverQueue$1;-><init>(Lcom/samsung/android/app/music/cover/CoverQueue;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object p2, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->e:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance p2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 110
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance p2, Lcom/samsung/android/app/music/cover/CoverQueue$2;

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/app/music/cover/CoverQueue$2;-><init>(Lcom/samsung/android/app/music/cover/CoverQueue;Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/cover/CoverQueue;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->d:Landroid/support/v7/widget/LinearLayoutManager;

    return-object p0
.end method

.method private a(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance v1, Lcom/samsung/android/app/music/cover/CoverQueue$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue$3;-><init>(Lcom/samsung/android/app/music/cover/CoverQueue;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 165
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;

    invoke-direct {v1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;-><init>(Ljava/lang/String;)V

    .line 168
    :try_start_0
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 169
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "play_list_name"

    .line 171
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 170
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 168
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_0

    .line 173
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p2

    :try_start_4
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw p1

    :cond_2
    :goto_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_3
    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->b:Landroid/view/View;

    const v1, 0x7f1301ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getChannelId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/cover/CoverQueue;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 179
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueuePosition()J

    move-result-wide v0

    long-to-int p1, v0

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->e:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->a(I)V

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/app/music/cover/CoverQueue;->c()V

    .line 183
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->b:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    return-void
.end method

.method private c()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->e:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->e:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-ne v0, p1, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 141
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 142
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz p1, :cond_2

    .line 143
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setEnabled(Z)V

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    .line 149
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    :goto_0
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->e:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->i(I)V

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/app/music/cover/CoverQueue;->c()V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
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

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->e:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    if-eqz v0, :cond_2

    .line 201
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;-><init>(Ljava/util/List;Landroid/os/Bundle;Z)V

    .line 202
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->e:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "extra.list_position"

    .line 210
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 212
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue;->e:Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->a(I)V

    .line 213
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/cover/CoverQueue;->a(I)V

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/app/music/cover/CoverQueue;->c()V

    :cond_2
    return-void
.end method
