.class public final Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;

    .line 773
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->d(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->e(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->c:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;)V
    .locals 0

    .line 762
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;
    .locals 0

    .line 762
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;Z)Z
    .locals 0

    .line 762
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;)[Z
    .locals 0

    .line 762
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->c:[Z

    return-object p0
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 813
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->e(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;)I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 818
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    monitor-enter v0

    .line 819
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 822
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->d(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 823
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 825
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->b(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 831
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->f(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 833
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 839
    :goto_0
    :try_start_4
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;)V

    monitor-exit v0

    return-object p1

    .line 836
    :catch_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->b()Ljava/io/OutputStream;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 820
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 840
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 814
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "be greater than 0 and less than the maximum value count "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    .line 816
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->e(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 859
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;Z)V

    .line 861
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->c(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;Z)V

    .line 865
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->e:Z

    return-void
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 873
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;Z)V

    return-void
.end method
