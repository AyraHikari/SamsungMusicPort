.class Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;Landroid/os/Looper;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$1;->a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 373
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 375
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$1;->a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$1;->a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V

    :goto_0
    return-void
.end method
