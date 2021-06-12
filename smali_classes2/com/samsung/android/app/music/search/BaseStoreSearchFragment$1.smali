.class Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->m()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

.field final synthetic b:Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$1;->b:Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$1;->b:Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->k()Ljava/lang/String;

    move-result-object v0

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

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->b(Z)V

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$1;->b:Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;

    iget v0, p1, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->c:I

    .line 106
    iget-object p1, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$1;->b:Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->s_()V

    return-void
.end method
