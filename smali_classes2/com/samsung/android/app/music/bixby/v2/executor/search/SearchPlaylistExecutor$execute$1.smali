.class final Lcom/samsung/android/app/music/bixby/v2/executor/search/SearchPlaylistExecutor$execute$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/SearchPlaylistExecutor;->execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
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

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/SearchPlaylistExecutor$execute$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/SearchPlaylistExecutor$execute$1;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/SearchPlaylistExecutor$execute$1;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 54
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/SearchPlaylistExecutor$execute$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/SearchPlaylistExecutor$execute$1;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)V

    .line 55
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;

    move-result-object v1

    .line 56
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;->a()Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    move-result-object v0

    .line 62
    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->a()Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const-string v2, "Music_8_25"

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Music_8_26"

    goto :goto_0

    :cond_1
    const-string v2, "Music_8_1"

    :goto_0
    const-string v4, "PlaylistExecutor"

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "search() done. nlg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", resultCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", playlistDataList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->a()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", inputData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-direct {v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    const-string v2, "resultCount"

    .line 82
    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "actionType"

    const-string v3, "Find"

    .line 83
    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "searchType"

    const-string v3, "Playlist"

    .line 84
    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "inputData"

    .line 85
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "playlistData"

    .line 88
    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->a()Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    .line 86
    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/SearchPlaylistExecutor$execute$1;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-interface {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method
