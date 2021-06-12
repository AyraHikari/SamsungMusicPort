.class public Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URIRecord"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 1

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "image_url_small"

    .line 384
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->a:Ljava/lang/String;

    const-string v0, "image_url_middle"

    .line 385
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->b:Ljava/lang/String;

    const-string v0, "image_url_big"

    .line 386
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->a:Ljava/lang/String;

    .line 391
    iput-object p2, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->b:Ljava/lang/String;

    .line 392
    iput-object p3, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", m - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", b - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper$URIRecord;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
