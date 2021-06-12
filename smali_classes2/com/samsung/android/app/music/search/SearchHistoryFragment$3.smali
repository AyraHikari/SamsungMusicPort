.class Lcom/samsung/android/app/music/search/SearchHistoryFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/contents/Cursorable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/search/SearchHistoryFragment;->f()Lcom/samsung/android/app/music/contents/Cursorable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/contents/Cursorable<",
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

    .line 166
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$3;->a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 0

    .line 166
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchHistoryFragment$3;->a(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Landroid/database/Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchPreset;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 169
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;-><init>(Ljava/util/List;)V

    return-object v0
.end method
