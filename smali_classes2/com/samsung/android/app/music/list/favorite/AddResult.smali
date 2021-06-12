.class public final Lcom/samsung/android/app/music/list/favorite/AddResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;
    }
.end annotation


# instance fields
.field private final addedCount:I

.field private final duplicatedCount:I

.field private final flag:I

.field private final totalCount:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p4    # I
        .annotation runtime Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag$Def;
        .end annotation
    .end param

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->addedCount:I

    iput p2, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->duplicatedCount:I

    iput p3, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->totalCount:I

    iput p4, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->flag:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 174
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/favorite/AddResult;-><init>(IIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/favorite/AddResult;IIIIILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/AddResult;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->addedCount:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->duplicatedCount:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->totalCount:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->flag:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/favorite/AddResult;->copy(IIII)Lcom/samsung/android/app/music/list/favorite/AddResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->addedCount:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->duplicatedCount:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->totalCount:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->flag:I

    return v0
.end method

.method public final copy(IIII)Lcom/samsung/android/app/music/list/favorite/AddResult;
    .locals 1
    .param p4    # I
        .annotation runtime Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag$Def;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/AddResult;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/favorite/AddResult;-><init>(IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lcom/samsung/android/app/music/list/favorite/AddResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/samsung/android/app/music/list/favorite/AddResult;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->addedCount:I

    iget v3, p1, Lcom/samsung/android/app/music/list/favorite/AddResult;->addedCount:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->duplicatedCount:I

    iget v3, p1, Lcom/samsung/android/app/music/list/favorite/AddResult;->duplicatedCount:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->totalCount:I

    iget v3, p1, Lcom/samsung/android/app/music/list/favorite/AddResult;->totalCount:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->flag:I

    iget p1, p1, Lcom/samsung/android/app/music/list/favorite/AddResult;->flag:I

    if-ne v1, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v0
.end method

.method public final getAddedCount()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->addedCount:I

    return v0
.end method

.method public final getDuplicatedCount()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->duplicatedCount:I

    return v0
.end method

.method public final getFlag()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->flag:I

    return v0
.end method

.method public final getTotalCount()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->totalCount:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->addedCount:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->duplicatedCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->totalCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->flag:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddResult(addedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->addedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duplicatedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->duplicatedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/favorite/AddResult;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
