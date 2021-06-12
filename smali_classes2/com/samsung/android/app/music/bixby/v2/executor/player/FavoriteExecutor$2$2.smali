.class Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/favorite/AddResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;->onResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/app/music/list/favorite/AddResult;)V
    .locals 3

    .line 129
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/AddResult;->getFlag()I

    move-result p1

    const/4 v0, 0x0

    .line 131
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;->b:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    const-string v1, "Music_12_10"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;ILjava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not support Favorite. flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;->b:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    const/4 v0, -0x1

    const-string v1, "Music_12_6"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
