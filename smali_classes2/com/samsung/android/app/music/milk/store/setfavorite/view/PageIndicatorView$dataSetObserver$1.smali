.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$dataSetObserver$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$dataSetObserver$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    const-string v0, "Ui"

    const-string v1, "SetFavorite_PageIndicatorView | onChanged()"

    .line 141
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$dataSetObserver$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$dataSetObserver$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->b(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$dataSetObserver$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->c(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;II)V

    return-void
.end method

.method public onInvalidated()V
    .locals 3

    const-string v0, "Ui"

    const-string v1, "SetFavorite_PageIndicatorView | onInvalidated()"

    .line 146
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$dataSetObserver$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$dataSetObserver$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->b(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$dataSetObserver$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->c(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;II)V

    return-void
.end method
