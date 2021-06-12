.class public Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gradient_color_extractor/Kmeans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DominantColorResult"
.end annotation


# instance fields
.field public a:I

.field public b:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->a:I

    .line 29
    iput p2, p0, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->b:F

    return-void
.end method
