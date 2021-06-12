.class Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->d()Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$2;->a:Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$2;->a:Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;
    .locals 1

    .line 135
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->ACCURACY:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$2;->a:Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;

    iget v0, v0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->c:I

    return v0
.end method

.method public v_()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$2;->a:Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
