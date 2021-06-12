.class final Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/background/cache/BlurBitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SearchKey"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:F

.field private final c:F

.field private final d:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;FFZ)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->a:Landroid/net/Uri;

    iput p2, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->b:F

    iput p3, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->c:F

    iput-boolean p4, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->d:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->a:Landroid/net/Uri;

    iget-object v3, p1, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->a:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->b:F

    iget v3, p1, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->c:F

    iget v3, p1, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->d:Z

    iget-boolean p1, p1, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->d:Z

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

    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->d:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchKey(uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isCenterCrop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/background/cache/BlurBitmapCache$SearchKey;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
