.class public final Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/base/ItemViewable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "period"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->a:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->b:I

    iput p3, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->c:I

    iput p4, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->d:I

    iput-object p5, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->b:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->c:I

    return v0
.end method

.method public final e()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->b:I

    iget v3, p1, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->b:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->c:I

    iget v3, p1, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->c:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->d:I

    iget v3, p1, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->d:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->f:Ljava/lang/String;

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

.method public final f()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->f:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioData(device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalTracksCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", availableTracksCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listenedTracksCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
