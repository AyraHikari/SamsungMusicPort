.class final Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor;->execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

.field final synthetic c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 101
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)V

    .line 102
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;

    move-result-object v7

    .line 103
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;->a()Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    move-result-object v11

    .line 105
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 106
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 107
    new-instance v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 108
    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 109
    new-instance v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v0, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 111
    invoke-virtual {v7}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->a()Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;->a:Landroid/content/Context;

    .line 115
    invoke-virtual {v7}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 113
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistExecutorKt;->a(Landroid/content/Context;J)Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 118
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->b()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 119
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->c()Z

    move-result v1

    iput-boolean v1, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 120
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->d()Z

    move-result v1

    iput-boolean v1, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 121
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->f()Z

    move-result v1

    iput-boolean v1, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistExecutorKt;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;->a:Landroid/content/Context;

    .line 532
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/app/music/model/UserInfo;

    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 533
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v2, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 535
    new-instance v2, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;

    move-object v3, v2

    move-object v4, v1

    move-object v5, v14

    move-object v6, p0

    invoke-direct/range {v3 .. v13}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1$$special$$inlined$ready$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayPlaylistExecutor$execute$1;Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v2, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    .line 536
    sget-boolean v3, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v3, :cond_1

    .line 537
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/list/common/PlayUtils$ready$1;

    invoke-direct {v4, v1, v14, v0, v2}, Lcom/samsung/android/app/music/list/common/PlayUtils$ready$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    check-cast v4, Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    goto :goto_0

    .line 543
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    iput-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 544
    iget-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_2

    const-string v1, "serviceMetaReceiver"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a()V

    :goto_0
    return-void
.end method
