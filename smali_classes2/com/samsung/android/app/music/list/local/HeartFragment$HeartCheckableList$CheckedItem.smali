.class final Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CheckedItem"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    const-string v0, "keyword"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->a:I

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->b:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 495
    iget v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 497
    iget v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;

    iget v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->a:I

    iget v3, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->a:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->c:I

    iget p1, p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->c:I

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
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckedItem(listType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
