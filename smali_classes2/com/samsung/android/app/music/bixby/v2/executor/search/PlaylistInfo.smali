.class final Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "playlistDataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->a:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;",
            ">;"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 519
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->a:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->a:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->b:Z

    iget-boolean p1, p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->b:Z

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->b:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaylistInfo(playlistDataList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEmptyPlaylistExist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
