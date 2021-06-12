.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroid/graphics/Bitmap$Config;

.field private static final j:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/lang/Object;

.field private static final l:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Landroid/net/Uri;

.field public final c:I

.field public final d:Landroid/graphics/Bitmap$Config;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a:Landroid/graphics/Bitmap$Config;

    .line 55
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->j:Landroid/util/LruCache;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->k:Ljava/lang/Object;

    .line 59
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->l:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->g:I

    .line 50
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->h:I

    .line 52
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->i:I

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    .line 68
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    .line 69
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public static a(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .locals 1

    .line 73
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 82
    :cond_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->j:Landroid/util/LruCache;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    if-nez v2, :cond_1

    .line 85
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    .line 87
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->j:Landroid/util/LruCache;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$1;)V

    invoke-virtual {v3, v4, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_1
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object p0

    return-object p0
.end method

.method private a(Z)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p1, 0x3a

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static b(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;
    .locals 1

    .line 119
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;

    .line 120
    iput-object p0, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->a:Landroid/net/Uri;

    .line 121
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->b:I

    .line 122
    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey$SearchKey;->c:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)I
    .locals 5
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    .line 201
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    iget v2, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    const/4 v3, 0x1

    if-le v1, v2, :cond_2

    return v3

    .line 204
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    iget v2, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    const/4 v4, -0x1

    if-ge v1, v2, :cond_3

    return v4

    .line 207
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_4

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap$Config;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1

    .line 210
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_5

    return v4

    .line 213
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_6

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    if-nez p1, :cond_6

    return v3

    :cond_6
    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 140
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->f:Ljava/lang/String;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 4

    .line 163
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 164
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->g:I

    goto :goto_0

    .line 167
    :cond_0
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->g:I

    .line 170
    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->g:I

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public c()Z
    .locals 4

    .line 174
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 175
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->h:I

    goto :goto_0

    .line 178
    :cond_0
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->h:I

    .line 181
    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->h:I

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 102
    :cond_1
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .line 104
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    iget v3, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

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

    .line 109
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 113
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->i:I

    .line 115
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->i:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->e:Ljava/lang/String;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->e:Ljava/lang/String;

    return-object v0
.end method
