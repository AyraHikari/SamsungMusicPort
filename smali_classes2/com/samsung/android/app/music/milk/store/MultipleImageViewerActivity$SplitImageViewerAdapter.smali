.class Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;
.super Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SplitImageViewerAdapter"
.end annotation


# instance fields
.field c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field d:[Landroid/net/Uri;

.field e:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 1
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 247
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;-><init>(Ljava/util/List;I)V

    .line 239
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->c:Landroid/util/SparseArray;

    .line 248
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->e:Landroid/app/Activity;

    .line 249
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/net/Uri;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->d:[Landroid/net/Uri;

    const/4 p1, 0x0

    .line 250
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_0

    .line 251
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->d:[Landroid/net/Uri;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 1

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p1, 0x3

    return p1

    :pswitch_1
    const/4 p1, 0x1

    return p1

    :pswitch_2
    const/4 p1, 0x2

    return p1

    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x7f130180
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;Landroid/view/View;)I
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private a()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 316
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 317
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_1

    .line 319
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_1

    :cond_0
    move-object v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;)Z
    .locals 0

    .line 237
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->b()Z

    move-result p0

    return p0
.end method

.method private b()Z
    .locals 6

    .line 327
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 331
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 332
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    .line 333
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->c:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 334
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 335
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v2, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v5, v0, :cond_2

    .line 336
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->c:Landroid/util/SparseArray;

    invoke-static {v4, v2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 257
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0202e5

    .line 258
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setShowImageOnError(I)V

    .line 259
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->b:I

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->b:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040254

    const/4 v3, 0x0

    .line 267
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 268
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->d:[Landroid/net/Uri;

    new-instance v3, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;Landroid/view/ViewGroup;Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;)V

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;[Landroid/net/Uri;Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;)V

    .line 305
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 308
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$SplitImageViewerAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method
