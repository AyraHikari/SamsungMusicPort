.class public final Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final resultCode:I

.field private final updateDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->resultCode:I

    iput-object p2, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->updateDate:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->resultCode:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->id:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->updateDate:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->copy(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->resultCode:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;
    .locals 1

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->resultCode:I

    iget v3, p1, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->resultCode:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->updateDate:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->updateDate:Ljava/lang/String;

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

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->resultCode:I

    return v0
.end method

.method public final getUpdateDate()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->resultCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->id:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->updateDate:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteFavoriteResponse(resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->updateDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
