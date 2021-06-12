.class public final Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/base/ItemViewable;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1

    const-string v0, "period"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->a:I

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->b:I

    iput p3, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->c:I

    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public final b()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->b:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->c:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->a:I

    iget v3, p1, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->a:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->b:I

    iget v3, p1, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->b:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->c:I

    iget v3, p1, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->c:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->d:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->d:Ljava/lang/String;

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

    const-string v1, "EconomyData(totalTracksCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", availableTracksCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listenedTracksCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
