.class Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageViewerAdapter"
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "MultipleImageViewerActivity$ImageViewerAdapter"


# instance fields
.field protected a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;",
            ">;"
        }
    .end annotation
.end field

.field protected b:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/util/List;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->d:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->a:Landroid/util/SparseArray;

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 184
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->b:I

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 189
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->c:Ljava/lang/String;

    const-string v0, "getItem : illegal pos range"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 230
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->b(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 232
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 207
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0202e5

    .line 208
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setShowImageOnError(I)V

    .line 209
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->b:I

    if-eqz v3, :cond_0

    .line 212
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->b:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 214
    :cond_0
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->a(Ljava/lang/String;I)V

    .line 215
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 218
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
