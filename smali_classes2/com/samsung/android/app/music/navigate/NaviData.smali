.class public final Lcom/samsung/android/app/music/navigate/NaviData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/navigate/NaviData;->a:I

    iput-object p2, p0, Lcom/samsung/android/app/music/navigate/NaviData;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/navigate/NaviData;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/navigate/NaviData;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/samsung/android/app/music/navigate/NaviData;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/app/music/navigate/NaviData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/samsung/android/app/music/navigate/NaviData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Landroid/os/Bundle;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/app/music/navigate/NaviData;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/samsung/android/app/music/navigate/NaviData;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/samsung/android/app/music/navigate/NaviData;

    iget v1, p0, Lcom/samsung/android/app/music/navigate/NaviData;->a:I

    iget v3, p1, Lcom/samsung/android/app/music/navigate/NaviData;->a:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/navigate/NaviData;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/navigate/NaviData;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/navigate/NaviData;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/navigate/NaviData;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/navigate/NaviData;->d:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/samsung/android/app/music/navigate/NaviData;->d:Landroid/os/Bundle;

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

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/app/music/navigate/NaviData;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/navigate/NaviData;->b:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/samsung/android/app/music/navigate/NaviData;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/navigate/NaviData;->d:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NaviData(listType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/navigate/NaviData;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/navigate/NaviData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/navigate/NaviData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/navigate/NaviData;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
