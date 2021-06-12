.class public final Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100086

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 73
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 74
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 85
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->b(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 0

    return-object p2
.end method


# virtual methods
.method public convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->a(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
