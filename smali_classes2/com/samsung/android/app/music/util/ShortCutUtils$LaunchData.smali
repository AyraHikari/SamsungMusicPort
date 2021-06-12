.class public final Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/util/ShortCutUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchData"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyword"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->a:I

    iput-object p2, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->c:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->d:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, -0x1

    .line 689
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 686
    iget v0, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 689
    iget v0, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    iget v1, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->a:I

    iget v3, p1, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->a:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->d:I

    iget p1, p1, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->d:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->b:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LaunchData(listType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extraValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
