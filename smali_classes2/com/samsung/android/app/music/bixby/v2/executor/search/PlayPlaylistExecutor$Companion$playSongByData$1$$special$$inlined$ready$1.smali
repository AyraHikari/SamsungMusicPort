.class public final Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic c:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;

.field final synthetic d:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;

.field final synthetic e:Z

.field final synthetic f:J

.field final synthetic g:Z

.field final synthetic h:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;ZJZZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;

    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;

    iput-boolean p5, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->e:Z

    iput-wide p6, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->f:J

    iput-boolean p8, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->g:Z

    iput-boolean p9, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "PlayUtils"

    const-string v2, "player service connected()"

    .line 270
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 272
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    .line 274
    sget-boolean v3, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 275
    iget-object v2, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/app/music/model/UserInfo;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/app/music/model/UserInfo;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "PlayUtils"

    .line 278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isTrialUser="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", isStreamingUser="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lcom/samsung/android/app/music/model/UserInfo;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object v7, v1

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", isDrmProductUser="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lcom/samsung/android/app/music/model/UserInfo;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/samsung/android/app/music/model/UserInfo;->isDrmProductUser()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_3

    :cond_4
    move-object v7, v1

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 276
    invoke-static {v3, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_5
    iget-object v3, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/app/music/model/UserInfo;

    .line 342
    iget-object v6, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->a()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v3, -0x1

    const-string v6, "Music_1_6"

    goto :goto_5

    .line 346
    :cond_6
    iget-boolean v6, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->e:Z

    if-eqz v6, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/UserInfo;->isDrmProductUser()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v6, "Music_0_11"

    goto :goto_4

    :cond_7
    const-string v6, "Music_1_10"

    .line 355
    iget-object v3, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->a()Ljava/util/ArrayList;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, -0x65

    const/16 v10, -0x64

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc0

    const/16 v16, 0x0

    .line 354
    invoke-static/range {v7 .. v16}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/Object;)I

    :goto_4
    const/4 v3, 0x0

    .line 365
    :goto_5
    check-cast v1, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;

    .line 366
    iget-object v7, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;

    iget-object v7, v7, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;->a:Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->b()Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    move-result-object v7

    const-string v8, "selectedData.resultData"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->e()Ljava/util/List;

    move-result-object v7

    const-string v8, "selectedData.resultData.playListDataList"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Iterable;

    .line 367
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;

    .line 368
    iget-wide v9, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->f:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v1, v8

    goto :goto_6

    :cond_9
    const-string v7, "PlaylistExecutor"

    .line 375
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "playByData done. playlistId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->f:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", trackDataList="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->b()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", inputData="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;

    iget-object v10, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;

    iget-object v10, v10, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;->a:Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;

    invoke-static {v9, v10}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 373
    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-direct {v7, v3, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    const-string v3, "resultCount"

    .line 382
    iget-object v6, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    const/4 v6, 0x1

    goto :goto_7

    .line 385
    :cond_a
    iget-object v6, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 382
    :goto_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 380
    invoke-virtual {v7, v3, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "actionType"

    const-string v6, "Play"

    .line 388
    invoke-virtual {v7, v3, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "searchType"

    const-string v6, "Playlist"

    .line 389
    invoke-virtual {v7, v3, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    iget-boolean v3, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->g:Z

    const/16 v6, 0x96

    if-nez v3, :cond_e

    if-eqz v2, :cond_d

    .line 392
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 393
    iget-boolean v2, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->h:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :goto_8
    const-string v3, "trialPlay"

    .line 394
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "transientTime"

    if-eqz v2, :cond_c

    const/16 v6, 0x32

    .line 396
    :cond_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 395
    invoke-virtual {v7, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    :cond_d
    const-string v2, "transientTime"

    .line 402
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    :cond_e
    const-string v2, "transientTime"

    .line 404
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_9
    const-string v2, "inputData"

    .line 409
    sget-object v3, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;

    iget-object v6, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;

    iget-object v6, v6, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;->a:Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;

    invoke-static {v3, v6}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->i()Lorg/json/JSONObject;

    move-result-object v3

    .line 407
    invoke-virtual {v7, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_f

    .line 412
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 413
    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;->i()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "playlistData"

    .line 414
    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_f
    const-string v1, "trackData"

    .line 419
    iget-object v2, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->b()Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_10

    .line 420
    iget-object v2, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/bixby/v2/result/Jsonable;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Lcom/samsung/android/app/music/bixby/v2/result/Jsonable;)Lorg/json/JSONArray;

    move-result-object v2

    goto :goto_a

    .line 422
    :cond_10
    iget-object v2, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->b()Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    .line 417
    :goto_a
    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 426
    iget-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-interface {v1, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    .line 283
    iget-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_11

    const-string v2, "serviceMetaReceiver"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_11
    check-cast v1, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    return-void
.end method
