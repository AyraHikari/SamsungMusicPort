.class public final Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Landroid/graphics/Bitmap$CompressFormat;

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;I)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;->a:Ljava/lang/String;

    .line 73
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;->b:I

    .line 74
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;->c:Landroid/graphics/Bitmap$CompressFormat;

    .line 75
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;->d:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 86
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings{directory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", compressFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;->c:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", compressQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
