.class public final Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/PlayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueueInfo"
.end annotation


# instance fields
.field private final a:[J

.field private final b:I


# direct methods
.method public constructor <init>([JI)V
    .locals 1

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->a:[J

    iput p2, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->b:I

    return-void
.end method


# virtual methods
.method public final a()[J
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->a:[J

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->a:[J

    iget-object v3, p1, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->a:[J

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->b:I

    iget p1, p1, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->b:I

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

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->a:[J

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueueInfo(queue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->a:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", queuePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
