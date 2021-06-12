.class final Lcom/sec/android/gradient_color_extractor/Kmeans$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gradient_color_extractor/Kmeans;->a([I[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;)I
    .locals 0

    .line 158
    iget p2, p2, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->b:F

    iget p1, p1, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->b:F

    sub-float/2addr p2, p1

    const p1, 0x47c35000    # 100000.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 155
    check-cast p1, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    check-cast p2, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gradient_color_extractor/Kmeans$1;->a(Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;)I

    move-result p1

    return p1
.end method
