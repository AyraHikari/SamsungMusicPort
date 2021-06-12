.class final Lcom/samsung/android/app/music/milk/store/IOUtils$RandomAccessFileOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomAccessFileOutputStream"
.end annotation


# instance fields
.field private final a:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 519
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 520
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/IOUtils$RandomAccessFileOutputStream;->a:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/IOUtils$RandomAccessFileOutputStream;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/IOUtils$RandomAccessFileOutputStream;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/IOUtils$RandomAccessFileOutputStream;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/IOUtils$RandomAccessFileOutputStream;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
