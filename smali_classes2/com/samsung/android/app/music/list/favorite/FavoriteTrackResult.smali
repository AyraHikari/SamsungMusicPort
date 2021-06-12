.class public final Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;->id:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;->id:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;->copy(Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;->id:Ljava/lang/String;

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

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FavoriteTrackResult(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
