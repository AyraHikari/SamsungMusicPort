.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$3;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$3;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->isFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MusicPlay"

    const-string v1, "Move back to initial state of search UI on back pressed."

    .line 301
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$3;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
