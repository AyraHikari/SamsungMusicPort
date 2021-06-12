.class Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$2;->a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    .line 387
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 388
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$2;->a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$2;->a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
