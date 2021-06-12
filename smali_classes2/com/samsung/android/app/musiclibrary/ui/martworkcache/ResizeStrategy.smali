.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;
    }
.end annotation


# instance fields
.field private final a:[I

.field private b:[I

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>([I)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->c:Ljava/util/HashMap;

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->a:[I

    return-void
.end method

.method private a(I)I
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->b:[I

    .line 164
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_0

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 168
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 169
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    :cond_1
    return p1
.end method

.method private b()V
    .locals 8

    .line 200
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->a:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 201
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->a:[I

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget v6, v2, v5

    .line 204
    :try_start_0
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 207
    :catch_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 213
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, v4, 0x1

    .line 214
    aput v2, v1, v4

    move v4, v3

    goto :goto_2

    .line 217
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 218
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->d:Ljava/lang/Integer;

    .line 219
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->b:[I

    return-void
.end method

.method private b(I)V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->b:[I

    if-nez v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->b()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->b:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->b:[I

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->b()V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->b:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Abnormal height "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " normal heights are: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->b:[I

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 188
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "ArtWorkResizeStrategy"

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->b:[I

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->b()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->b:[I

    .line 60
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Ljava/lang/Integer;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->c:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider<",
            "TResult;>;)TResult;"
        }
    .end annotation

    .line 80
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->b(I)V

    .line 82
    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->d:Ljava/lang/Integer;

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->b:[I

    .line 95
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->a(I)I

    move-result v0

    .line 96
    iget v2, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->a(I)I

    move-result v2

    if-le v2, v0, :cond_2

    .line 104
    aget v0, v1, v0

    .line 105
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    if-lt v0, v2, :cond_5

    .line 108
    aget v3, v1, v0

    .line 109
    iget v4, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 113
    :cond_3
    invoke-static {p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)V
    .locals 4

    .line 127
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    iget v1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->b(I)V

    .line 138
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget v1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 143
    :goto_0
    iget v2, p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->a:I

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->b:I

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez p2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->c:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->c:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->b:[I

    .line 153
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->a(I)I

    move-result v1

    .line 158
    aget p2, p2, v1

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->c:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
