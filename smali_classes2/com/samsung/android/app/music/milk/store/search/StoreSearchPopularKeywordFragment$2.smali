.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/contents/Cursorable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->f()Lcom/samsung/android/app/music/contents/Cursorable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/contents/Cursorable<",
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$2;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 0

    .line 130
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$2;->a(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Landroid/database/Cursor;
    .locals 2

    if-eqz p1, :cond_0

    .line 133
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 134
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 135
    instance-of v1, v1, Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;

    if-eqz v1, :cond_0

    .line 136
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$KeywordCursor;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$KeywordCursor;-><init>(Ljava/util/List;Z)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
