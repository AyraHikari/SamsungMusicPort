.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;
    }
.end annotation


# instance fields
.field public final a:[I

.field public final b:I

.field public final c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

.field public final d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;


# direct methods
.method private constructor <init>([IILcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->a:[I

    .line 26
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->b:I

    .line 27
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    .line 28
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    return-void
.end method

.method synthetic constructor <init>([IILcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;-><init>([IILcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArtworkCacheSettings{supportedDimensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->a:[I

    .line 34
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", memCacheSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remoteDiskCacheSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localDiskCacheSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
