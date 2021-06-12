.class public Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor$ExtractionResult;
    }
.end annotation


# direct methods
.method public static declared-synchronized a(Landroid/graphics/Bitmap;)Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor$ExtractionResult;
    .locals 11

    const-class v0, Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor;

    monitor-enter v0

    .line 63
    :try_start_0
    new-instance v1, Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor$ExtractionResult;

    invoke-direct {v1}, Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor$ExtractionResult;-><init>()V

    .line 64
    invoke-static {}, Lcom/sec/android/gradient_color_extractor/CallGradient;->a()[I

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/gradient_color_extractor/Kmeans;->a(Landroid/graphics/Bitmap;[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    move-result-object p0

    .line 66
    iput-object p0, v1, Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor$ExtractionResult;->d:[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 73
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 75
    array-length v5, p0

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v8, p0, v2

    .line 76
    iget v9, v8, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->a:I

    invoke-static {v9}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->b(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 77
    iget v9, v1, Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor$ExtractionResult;->a:F

    iget v8, v8, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->b:F

    add-float/2addr v9, v8

    iput v9, v1, Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor$ExtractionResult;->a:F

    goto :goto_1

    :cond_0
    if-nez v7, :cond_1

    .line 80
    iget v7, v8, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 83
    :cond_1
    iget v9, v8, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->b:F

    const v10, 0x3ca3d70a    # 0.02f

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_2

    .line 84
    iget v9, v8, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget v8, v8, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->b:F

    add-float/2addr v3, v8

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_3
    iget p0, v1, Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor$ExtractionResult;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float p0, v2, p0

    cmpl-float p0, v3, p0

    if-eqz p0, :cond_4

    sub-float p0, v2, v3

    .line 91
    iput p0, v1, Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor$ExtractionResult;->b:F

    goto :goto_2

    .line 93
    :cond_4
    iget p0, v1, Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor$ExtractionResult;->a:F

    iput p0, v1, Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor$ExtractionResult;->b:F

    :goto_2
    if-nez v7, :cond_5

    .line 97
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 100
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    iput p0, v1, Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor$ExtractionResult;->c:I

    .line 102
    iget p0, v1, Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor$ExtractionResult;->a:F

    const v3, 0x3f7ae148    # 0.98f

    cmpl-float p0, p0, v3

    if-gez p0, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_6

    goto :goto_3

    .line 111
    :cond_6
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->a(I)Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    move-result-object p0

    goto :goto_5

    .line 103
    :cond_7
    :goto_3
    iget p0, v1, Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor$ExtractionResult;->a:F

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->c(I)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    .line 106
    :cond_8
    invoke-static {}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->d()Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    move-result-object p0

    goto :goto_5

    .line 104
    :cond_9
    :goto_4
    invoke-static {}, Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;->c()Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    move-result-object p0

    .line 125
    :goto_5
    iput-object p0, v1, Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor$ExtractionResult;->e:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 62
    monitor-exit v0

    throw p0
.end method
