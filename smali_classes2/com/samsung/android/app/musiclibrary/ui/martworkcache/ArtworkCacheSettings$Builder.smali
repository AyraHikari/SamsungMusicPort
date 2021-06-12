.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final a:Landroid/graphics/Bitmap$CompressFormat;

.field private static final b:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:[I

.field private e:I

.field private f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

.field private g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->a:Landroid/graphics/Bitmap$CompressFormat;

    .line 51
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->b:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    .line 66
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->c:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->d:[I

    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->a(Z)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;

    return-void
.end method

.method private a(F)I
    .locals 5

    .line 114
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const-string v1, "ArtWork"

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxMem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ") => mem for artwork "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public a(Z)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x3e4ccccd    # 0.2f

    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->a(F)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->e:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->e:I

    :goto_0
    return-object p0
.end method

.method public a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;
    .locals 7

    .line 122
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->d:[I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->e:I

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;-><init>([IILcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$1;)V

    return-object v6
.end method

.method public b(Z)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;
    .locals 4

    if-eqz p1, :cond_0

    .line 85
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->c:Landroid/content/Context;

    const-string v1, "albums"

    .line 86
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x12c00000

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->a:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;I)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    .line 89
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->c:Landroid/content/Context;

    const-string v1, "remote-albums"

    .line 90
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x6400000

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->b:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;I)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    goto :goto_0

    .line 94
    :cond_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    .line 95
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    :goto_0
    return-object p0
.end method
