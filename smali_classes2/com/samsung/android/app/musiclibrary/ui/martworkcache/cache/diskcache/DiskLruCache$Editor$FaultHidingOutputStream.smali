.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0

    .line 886
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor$FaultHidingOutputStream;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    .line 887
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;)V
    .locals 0

    .line 885
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 911
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 913
    :catch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor$FaultHidingOutputStream;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;Z)Z

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 920
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 922
    :catch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor$FaultHidingOutputStream;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;Z)Z

    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 893
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 895
    :catch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor$FaultHidingOutputStream;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;Z)Z

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 902
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 904
    :catch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor$FaultHidingOutputStream;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;Z)Z

    :goto_0
    return-void
.end method
