.class Lcom/samsung/android/app/music/privatemode/operation/FileOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/privatemode/operation/FileOperation$IprogressCallback;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "FileOperation"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)I
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 161
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 165
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 167
    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->a(Ljava/io/File;)I

    move-result v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/privatemode/operation/FileOperation$IprogressCallback;)I
    .locals 2

    .line 32
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->b(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/privatemode/operation/FileOperation$IprogressCallback;)I

    move-result p1

    if-nez p1, :cond_0

    .line 34
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_0

    .line 36
    sget-object p0, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doMoveFile : (Fail to delete  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 46
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/privatemode/operation/FileOperation$IprogressCallback;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 56
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_9

    .line 60
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, -0x7

    return v0

    :cond_1
    const/16 v6, 0x2f

    .line 64
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 65
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/temp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 67
    invoke-static {v6}, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->d(Ljava/lang/String;)V

    .line 68
    invoke-static {v6}, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->b(Ljava/lang/String;)J

    move-result-wide v9

    .line 69
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 71
    sget-object v11, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doCopyFile() - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-eqz v13, :cond_c

    cmp-long v5, v9, v5

    if-gez v5, :cond_2

    goto/16 :goto_8

    .line 75
    :cond_2
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 76
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    const-wide/16 v13, 0x64

    rem-long/2addr v9, v13

    .line 80
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v15

    div-long v19, v15, v13

    .line 81
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v13

    const-wide/32 v15, 0x100000

    const/16 v3, 0x63

    cmp-long v13, v13, v15

    if-gez v13, :cond_4

    const-wide/16 v14, 0x0

    .line 82
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v16

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v18

    move-object v13, v0

    invoke-virtual/range {v13 .. v18}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v9

    cmp-long v0, v9, v11

    if-nez v0, :cond_3

    .line 83
    sget-object v0, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->a:Ljava/lang/String;

    const-string v9, "doCopyFile() - fcin.transferTo size is 0"

    invoke-static {v0, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v2, :cond_8

    .line 86
    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/privatemode/operation/FileOperation$IprogressCallback;->a(I)V

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    :goto_0
    const/16 v13, 0x64

    if-ge v14, v13, :cond_8

    move-object/from16 v21, v8

    int-to-long v7, v14

    mul-long v7, v7, v19

    if-ne v14, v3, :cond_5

    move-wide v15, v9

    goto :goto_1

    :cond_5
    move-wide v15, v11

    :goto_1
    const/4 v13, 0x0

    add-long v16, v19, v15

    .line 91
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v18

    move-object v13, v0

    move v3, v14

    move-wide v14, v7

    .line 90
    invoke-virtual/range {v13 .. v18}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v7

    cmp-long v7, v7, v11

    if-nez v7, :cond_6

    .line 92
    sget-object v7, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doCopyFile() - fcin.transferTo size is 0, part "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_7

    .line 95
    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/privatemode/operation/FileOperation$IprogressCallback;->a(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    add-int/lit8 v14, v3, 0x1

    move-object/from16 v8, v21

    const/16 v3, 0x63

    const/4 v7, 0x0

    goto :goto_0

    :cond_8
    :goto_2
    move-object/from16 v21, v8

    .line 105
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 108
    sget-object v0, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inStream fail to close : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_3
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 115
    sget-object v0, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "outStream fail to close : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_4
    new-instance v0, Ljava/io/File;

    move-object/from16 v2, v21

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    .line 124
    :cond_9
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "PrivateMode"

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAIL renameTo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_a
    const/4 v1, 0x0

    return v1

    :cond_b
    :goto_5
    return v4

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v6, v3

    :goto_6
    move-object v3, v5

    goto/16 :goto_d

    :catch_3
    move-exception v0

    move-object v6, v3

    :goto_7
    move-object v3, v5

    goto :goto_a

    :cond_c
    :goto_8
    const/4 v0, -0x3

    return v0

    :cond_d
    :goto_9
    const/4 v0, -0x5

    return v0

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v6, v3

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v6, v3

    .line 100
    :goto_a
    :try_start_5
    sget-object v1, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_e

    .line 105
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 108
    sget-object v0, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inStream fail to close : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_b
    if-eqz v6, :cond_f

    .line 112
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 115
    sget-object v0, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "outStream fail to close : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_c
    return v4

    :catchall_3
    move-exception v0

    move-object v1, v0

    :goto_d
    if-eqz v3, :cond_10

    .line 105
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 108
    sget-object v0, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inStream fail to close : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_e
    if-eqz v6, :cond_11

    .line 112
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_f

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 115
    sget-object v0, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outStream fail to close : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_11
    :goto_f
    throw v1
.end method

.method public static b(Ljava/lang/String;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 136
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 143
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-void
.end method
