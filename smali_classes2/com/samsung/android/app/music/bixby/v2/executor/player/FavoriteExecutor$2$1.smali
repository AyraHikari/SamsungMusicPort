.class Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/favorite/DeleteResultListener;


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

    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/app/music/list/favorite/DeleteResult;)V
    .locals 2

    .line 114
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/DeleteResult;->getSuccessCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;->b:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    const/4 v0, 0x0

    const-string v1, "Music_13_9"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;ILjava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Can not support Favorite because can\'t delete."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;->b:Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;

    const/4 v0, -0x1

    const-string v1, "Music_13_6"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
