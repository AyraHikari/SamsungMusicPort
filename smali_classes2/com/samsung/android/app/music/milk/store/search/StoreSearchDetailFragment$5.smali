.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->i()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$5;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    const-string v0, "StoreSearchDetailFragment"

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadMore - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$5;->a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->b(Z)V

    .line 485
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$5;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)I

    .line 486
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$5;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->s_()V

    return-void
.end method
