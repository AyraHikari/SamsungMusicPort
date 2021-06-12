.class final Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$OnPageChangeListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnPageChangeListenerAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$OnPageChangeListenerAdapter;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$OnPageChangeListenerAdapter;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Landroid/util/SparseArray;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 522
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;

    if-ne v4, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 259
    :goto_1
    invoke-interface {v5, v4}, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;->a(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$OnPageChangeListenerAdapter;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;I)V

    return-void
.end method
