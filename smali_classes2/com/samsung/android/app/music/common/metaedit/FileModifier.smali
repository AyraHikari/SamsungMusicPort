.class public Lcom/samsung/android/app/music/common/metaedit/FileModifier;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/RandomAccessFile;Ljava/lang/String;JI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_TEMP_META_WORKING"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 85
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    int-to-long v2, p4

    add-long v3, p2, v2

    .line 88
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    sub-long v9, v5, v3

    move-object v2, v1

    move-wide v5, v9

    move-object v7, v8

    .line 91
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 93
    invoke-virtual {v1, p2, p3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 94
    invoke-virtual {p0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v2, 0x0

    .line 95
    invoke-virtual {v8, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object v2, v1

    move-object v3, v8

    move-wide v4, p2

    move-wide v6, v9

    .line 96
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 98
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 103
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 105
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "File remove is failed. temporary file still exist."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/RandomAccessFile;Ljava/lang/String;JJ[B)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-wide/from16 v1, p2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_TEMP_META_WORKING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 16
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 19
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    .line 21
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    sub-long v13, v6, p4

    move-object v6, v5

    move-wide/from16 v7, p4

    move-wide v9, v13

    move-object v11, v12

    .line 24
    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 26
    invoke-virtual {v5, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 28
    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v1, p6

    .line 29
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    const-wide/16 v1, 0x0

    .line 31
    invoke-virtual {v12, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 32
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    move-object p0, v5

    move-object/from16 p1, v12

    move-wide/from16 p2, v0

    move-wide/from16 p4, v13

    invoke-virtual/range {p0 .. p5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 34
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File remove is failed. temporary file still exist."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/io/RandomAccessFile;Ljava/lang/String;J[B)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_TEMP_META_WORKING"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 52
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 54
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    sub-long v9, v2, p2

    move-object v2, v1

    move-wide v3, p2

    move-wide v5, v9

    move-object v7, v8

    .line 57
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 59
    invoke-virtual {v1, p2, p3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 61
    invoke-virtual {p0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 62
    invoke-virtual {p0, p4}, Ljava/io/RandomAccessFile;->write([B)V

    const-wide/16 p2, 0x0

    .line 64
    invoke-virtual {v8, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 65
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    move-object v3, v8

    move-wide v6, v9

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 67
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 72
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "File remove is failed. temporary file still exist."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
