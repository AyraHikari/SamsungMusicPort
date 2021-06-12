.class public final Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->b:Ljava/lang/String;

    .line 718
    iput-wide p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->c:J

    .line 719
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->d:[Ljava/io/InputStream;

    .line 720
    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->e:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;)V
    .locals 0

    .line 707
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/io/InputStream;
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->d:[Ljava/io/InputStream;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public close()V
    .locals 4

    .line 748
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;->d:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 749
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/Util;->a(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
