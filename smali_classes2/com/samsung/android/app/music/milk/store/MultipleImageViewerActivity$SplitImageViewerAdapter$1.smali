.class Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;

.field final synthetic c:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;Landroid/view/ViewGroup;Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->c:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->b:Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 6

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->c:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->e:Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->c:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->c:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->e:Landroid/app/Activity;

    .line 273
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->c:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->c:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->c:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->a(Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;Landroid/view/View;)I

    move-result p1

    const v1, 0x7f0202e5

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->a:Landroid/view/ViewGroup;

    .line 278
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 277
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->c:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 282
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->c:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->a(Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "MultipleImageViewerActivity"

    const-string p2, "mBitmaps has null item"

    .line 283
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->b:Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->a:Landroid/view/ViewGroup;

    .line 285
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 284
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 289
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->c:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->c:Landroid/util/SparseArray;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->c:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    mul-int/lit8 v2, v0, 0x2

    .line 291
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->c:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->c:Landroid/util/SparseArray;

    .line 293
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 292
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 294
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 295
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->c:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->c:Landroid/util/SparseArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 296
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->c:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    int-to-float v0, v0

    invoke-virtual {v2, p2, v5, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 297
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->c:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;

    iget-object p2, p2, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->c:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    int-to-float p1, p1

    invoke-virtual {v2, p2, p1, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 298
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->c:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;

    iget-object p2, p2, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->c:Landroid/util/SparseArray;

    const/4 v3, 0x3

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {v2, p2, p1, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 300
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;->b:Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p1, "MultipleImageViewerActivity"

    const-string p2, "activity is null or destroyed."

    .line 274
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
