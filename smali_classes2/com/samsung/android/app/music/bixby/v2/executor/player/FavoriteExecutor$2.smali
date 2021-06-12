.class Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;J)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;->b:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    iput-wide p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 4

    .line 104
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLocalFavorite() - isFavorite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;->b:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;)Z

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;->b:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;->b:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Music_12_4"

    goto :goto_0

    :cond_0
    const-string v0, "Music_13_4"

    :goto_0
    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 110
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;->b:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;)Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    move-result-object p1

    new-array v0, v0, [J

    iget-wide v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;->a:J

    aput-wide v2, v0, v1

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->deleteFavoriteTracksAsync([JLcom/samsung/android/app/music/list/favorite/DeleteResultListener;)V

    goto :goto_1

    .line 125
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;->b:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;)Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    move-result-object p1

    new-array v0, v0, [J

    iget-wide v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;->a:J

    aput-wide v2, v0, v1

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->addFavoriteTracksAsync([JLcom/samsung/android/app/music/list/favorite/AddResultListener;)V

    :goto_1
    return-void
.end method
