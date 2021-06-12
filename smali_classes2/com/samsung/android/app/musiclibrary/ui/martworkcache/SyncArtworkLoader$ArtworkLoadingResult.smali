.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArtworkLoadingResult"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field private c:Landroid/graphics/Bitmap;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->c:Landroid/graphics/Bitmap;

    .line 120
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->a:I

    .line 121
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->b:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;IILcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$1;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;-><init>(Landroid/graphics/Bitmap;II)V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArtworkLoadingResult{bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->d:Ljava/lang/String;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->d:Ljava/lang/String;

    return-object v0
.end method
