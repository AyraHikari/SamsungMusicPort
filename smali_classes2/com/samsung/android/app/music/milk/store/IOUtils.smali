.class public Lcom/samsung/android/app/music/milk/store/IOUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/IOUtils$RandomAccessFileOutputStream;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 655
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/IOUtils;->b:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public static a()J
    .locals 4

    .line 614
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 615
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 616
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    .line 617
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 618
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    return-wide v0

    .line 621
    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 622
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public static a(Ljava/lang/String;J)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rwd"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 187
    new-instance p0, Lcom/samsung/android/app/music/milk/store/IOUtils$RandomAccessFileOutputStream;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/IOUtils$RandomAccessFileOutputStream;-><init>(Ljava/io/RandomAccessFile;)V

    return-object p0
.end method
