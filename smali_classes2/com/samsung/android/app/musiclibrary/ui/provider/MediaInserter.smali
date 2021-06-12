.class public Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->a:Ljava/util/HashMap;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->b:Landroid/content/Context;

    .line 44
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->c:I

    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .line 77
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 79
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->b:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    .line 81
    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->a(Landroid/net/Uri;Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return v1
.end method

.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->a:Ljava/util/HashMap;

    .line 49
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->c:I

    if-lt v0, v2, :cond_1

    .line 58
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->a(Landroid/net/Uri;Ljava/util/List;)I

    move-result p2

    :cond_1
    return p2
.end method
