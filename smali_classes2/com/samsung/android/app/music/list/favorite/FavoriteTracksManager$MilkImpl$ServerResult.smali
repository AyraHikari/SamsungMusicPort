.class final Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServerResult"
.end annotation


# instance fields
.field private final resultAudioIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final state:I


# direct methods
.method public constructor <init>(ILjava/util/HashSet;)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/samsung/android/app/music/list/favorite/ServerResultState$Def;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "resultAudioIdSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->state:I

    iput-object p2, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->resultAudioIdSet:Ljava/util/HashSet;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;ILjava/util/HashSet;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->state:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->resultAudioIdSet:Ljava/util/HashSet;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->copy(ILjava/util/HashSet;)Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->state:I

    return v0
.end method

.method public final component2()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->resultAudioIdSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public final copy(ILjava/util/HashSet;)Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/samsung/android/app/music/list/favorite/ServerResultState$Def;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;"
        }
    .end annotation

    const-string v0, "resultAudioIdSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;-><init>(ILjava/util/HashSet;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->state:I

    iget v3, p1, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->state:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->resultAudioIdSet:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->resultAudioIdSet:Ljava/util/HashSet;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getResultAudioIdSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->resultAudioIdSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 699
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->state:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->state:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->resultAudioIdSet:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerResult(state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultAudioIdSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->resultAudioIdSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
