.class public Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/contents/Cursorable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/contents/Cursorable<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/database/MatrixCursor;

.field private final b:[Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;->d:I

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;->b:[Ljava/lang/String;

    .line 31
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;->a:Landroid/database/MatrixCursor;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;)Landroid/database/Cursor;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;->a()V

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;->getAutoCompleteList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;->a(Ljava/util/List;)V

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;->a:Landroid/database/MatrixCursor;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 0

    .line 17
    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;->a(Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;->b:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;->a:Landroid/database/MatrixCursor;

    return-void
.end method

.method public a(Landroid/database/MatrixCursor;Ljava/lang/String;I)V
    .locals 5

    .line 54
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;->b:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    const-string v4, "_id"

    .line 57
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_0
    const-string v4, "title"

    .line 59
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, p2

    goto :goto_1

    :cond_1
    const-string v4, "dummy"

    .line 64
    :goto_1
    invoke-virtual {p1, v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;->a:Landroid/database/MatrixCursor;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;->a(Landroid/database/MatrixCursor;Ljava/lang/String;I)V

    move v0, v3

    goto :goto_0

    :cond_0
    return-void
.end method
