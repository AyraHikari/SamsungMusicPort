.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchKey"
.end annotation


# instance fields
.field public a:Landroid/net/Uri;

.field public b:I

.field public c:Landroid/graphics/Bitmap$Config;


# direct methods
.method private constructor <init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->a:Landroid/net/Uri;

    .line 228
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->b:I

    .line 229
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->c:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$1;)V
    .locals 0

    .line 219
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 241
    :cond_1
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;

    .line 243
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->b:I

    iget v3, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->b:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->a:Landroid/net/Uri;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->c:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->c:Landroid/graphics/Bitmap$Config;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 250
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 251
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->c:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->c:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
