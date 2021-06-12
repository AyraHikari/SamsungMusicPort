.class final Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Lcom/samsung/android/app/music/network/NetworkInfo;

.field private final h:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLcom/samsung/android/app/music/network/NetworkInfo;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;",
            ">;ZZZZ",
            "Lcom/samsung/android/app/music/network/NetworkInfo;",
            "Z)V"
        }
    .end annotation

    const-string v0, "audioIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackDataList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkInfo"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->b:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->c:Z

    iput-boolean p4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->d:Z

    iput-boolean p5, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->e:Z

    iput-boolean p6, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->f:Z

    iput-object p7, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->g:Lcom/samsung/android/app/music/network/NetworkInfo;

    iput-boolean p8, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;",
            ">;"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 525
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 526
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->d:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 527
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_6

    instance-of v1, p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->a:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->a:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->b:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->b:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->c:Z

    iget-boolean v3, p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->c:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->d:Z

    iget-boolean v3, p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->d:Z

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->e:Z

    iget-boolean v3, p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->e:Z

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->f:Z

    iget-boolean v3, p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->f:Z

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->g:Lcom/samsung/android/app/music/network/NetworkInfo;

    iget-object v3, p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->g:Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->h:Z

    iget-boolean p1, p1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->h:Z

    if-ne v1, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    return v2

    :cond_6
    :goto_5
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 528
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->f:Z

    return v0
.end method

.method public final g()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->g:Lcom/samsung/android/app/music/network/NetworkInfo;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 530
    iget-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->h:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->c:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->d:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->e:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->f:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->g:Lcom/samsung/android/app/music/network/NetworkInfo;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->h:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaylistTrackInfo(audioIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackDataList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFirstTrackStreaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFirstTrackDrm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isStreamingOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLocalOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", networkInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->g:Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMyMusicMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistTrackInfo;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
