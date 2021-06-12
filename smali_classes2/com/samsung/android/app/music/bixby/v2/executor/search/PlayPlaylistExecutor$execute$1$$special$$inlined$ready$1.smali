.class public final Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic c:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;

.field final synthetic d:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;

.field final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic f:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic g:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic h:Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

.field final synthetic i:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic j:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;

    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;

    iput-object p5, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p7, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p8, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->h:Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    iput-object p9, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->i:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p10, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->j:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 13

    const-string p1, "PlayUtils"

    const-string p2, "player service connected()"

    .line 270
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 272
    move-object p2, p1

    check-cast p2, Ljava/lang/Boolean;

    .line 274
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 275
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/samsung/android/app/music/model/UserInfo;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/samsung/android/app/music/model/UserInfo;

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "PlayUtils"

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTrialUser="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isStreamingUser="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/app/music/model/UserInfo;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, p1

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isDrmProductUser="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/app/music/model/UserInfo;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/UserInfo;->isDrmProductUser()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_4
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/music/model/UserInfo;

    .line 342
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "Music_1_13"

    goto :goto_4

    .line 346
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "Music_1_6"

    goto :goto_4

    .line 350
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDrmProductUser()Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "Music_0_11"

    goto :goto_3

    :cond_8
    const-string p1, "Music_1_10"

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, -0x65

    const/16 v6, -0x64

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc0

    const/4 v12, 0x0

    .line 358
    invoke-static/range {v3 .. v12}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/Object;)I

    :goto_3
    const/4 v3, 0x0

    :goto_4
    const-string v0, "PlaylistExecutor"

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "search&play done. ngl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", playlistDataList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", trackDataList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", inputData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->h:Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 369
    invoke-static {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-direct {v4, v3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    const-string p1, "resultCount"

    .line 375
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "actionType"

    const-string v3, "Play"

    .line 376
    invoke-virtual {v4, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "searchType"

    const-string v3, "Playlist"

    .line 377
    invoke-virtual {v4, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->i:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/16 v3, 0x96

    if-nez p1, :cond_c

    if-eqz p2, :cond_b

    .line 380
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 381
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->j:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    const-string p1, "trialPlay"

    .line 382
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "transientTime"

    if-eqz v1, :cond_a

    const/16 v3, 0x32

    .line 384
    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 383
    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_b
    const-string p1, "transientTime"

    .line 390
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_c
    const-string p1, "transientTime"

    .line 392
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_6
    const-string p1, "inputData"

    .line 395
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->h:Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->i()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "playlistData"

    .line 398
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->a()Ljava/util/ArrayList;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    .line 396
    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    const-string p1, "trackData"

    .line 400
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 374
    invoke-interface {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    .line 283
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p1, :cond_d

    const-string p2, "serviceMetaReceiver"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_d
    check-cast p1, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    return-void
.end method
