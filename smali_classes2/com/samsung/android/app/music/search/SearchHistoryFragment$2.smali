.class Lcom/samsung/android/app/music/search/SearchHistoryFragment$2;
.super Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/search/SearchHistoryFragment;->d()Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever<",
        "Ljava/util/List<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchPreset;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/search/SearchHistoryFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$2;->a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$2;->a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$2;->a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->a(Lcom/samsung/android/app/music/search/SearchHistoryFragment;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 151
    new-instance v1, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;

    sget-object v2, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->FOOTER:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    .line 152
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->getViewType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$2;->a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    iget-object v2, v2, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->b:Landroid/content/Context;

    const v3, 0x7f0b0220

    .line 153
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;->build()Lcom/samsung/android/app/music/model/milksearch/SearchPreset;

    move-result-object v1

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/search/SearchHistoryFragment$2;->a(ILjava/lang/Object;)V

    return-void
.end method
