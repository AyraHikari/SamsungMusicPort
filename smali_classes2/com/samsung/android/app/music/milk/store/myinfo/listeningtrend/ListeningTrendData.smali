.class public final Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendItem;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->a:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->b:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->c:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->d:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->d:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->d:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListeningTrendData(mostPlayedGenres="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mostPlayedArtists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recentlyPlayedGenres="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recentlyPlayedArtists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendData;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
