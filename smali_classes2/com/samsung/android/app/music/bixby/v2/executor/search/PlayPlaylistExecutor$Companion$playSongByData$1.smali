.class final Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion;->a(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;->a:Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;->a:Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/result/data/SelectedData;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "selectedData.selectedId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;->b:Landroid/content/Context;

    invoke-static {v0, v8, v9}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistExecutorKt;->a(Landroid/content/Context;J)Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;

    move-result-object v6

    .line 206
    invoke-virtual {v6}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->c()Z

    move-result v11

    .line 207
    invoke-virtual {v6}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->d()Z

    move-result v7

    .line 208
    invoke-virtual {v6}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->f()Z

    move-result v10

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-static {v6, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistExecutorKt;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;->b:Landroid/content/Context;

    .line 532
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/app/music/model/UserInfo;

    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 533
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v2, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 535
    new-instance v13, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;

    move-object v2, v13

    move-object v3, v1

    move-object v4, v12

    move-object v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1$$special$$inlined$ready$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$Companion$playSongByData$1;Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;ZJZZ)V

    check-cast v13, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    .line 536
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v2, :cond_1

    .line 537
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/list/common/PlayUtils$ready$1;

    invoke-direct {v3, v1, v12, v0, v13}, Lcom/samsung/android/app/music/list/common/PlayUtils$ready$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    check-cast v3, Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    goto :goto_0

    .line 543
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-direct {v1, v0, v13}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    iput-object v1, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 544
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_2

    const-string v1, "serviceMetaReceiver"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a()V

    :goto_0
    return-void
.end method
