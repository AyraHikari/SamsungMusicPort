.class final Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$initBottomBarMenu$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$initBottomBarMenu$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$initBottomBarMenu$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->b(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$initBottomBarMenu$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->c(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;

    .line 181
    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;->a(Landroid/view/MenuItem;)V

    return-void
.end method
