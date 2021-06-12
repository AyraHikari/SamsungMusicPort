.class public Landroid/support/v4/util/AtomicFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBackupName:Ljava/io/File;

.field private final mBaseName:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    .line 55
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bak"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    return-void
.end method

.method private static sync(Ljava/io/FileOutputStream;)Z
    .locals 0
    .param p0    # Ljava/io/FileOutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 211
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public delete()V
    .locals 1

    .line 71
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 72
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public failWrite(Ljava/io/FileOutputStream;)V
    .locals 2
    .param p1    # Ljava/io/FileOutputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 144
    invoke-static {p1}, Landroid/support/v4/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    .line 146
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 147
    iget-object p1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 148
    iget-object p1, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AtomicFile"

    const-string v1, "failWrite: Got exception:"

    .line 150
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
    .locals 2
    .param p1    # Ljava/io/FileOutputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 127
    invoke-static {p1}, Landroid/support/v4/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    .line 129
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 130
    iget-object p1, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AtomicFile"

    const-string v1, "finishWrite: Got exception:"

    .line 132
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getBaseFile()Ljava/io/File;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 64
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    return-object v0
.end method

.method public openRead()Ljava/io/FileInputStream;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 171
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 173
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public readFully()[B
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Landroid/support/v4/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 185
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 186
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 188
    :cond_0
    :goto_0
    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v4, :cond_1

    .line 205
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v1

    :cond_1
    add-int/2addr v3, v4

    .line 197
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v4

    .line 198
    array-length v5, v1

    sub-int/2addr v5, v3

    if-le v4, v5, :cond_0

    add-int/2addr v4, v3

    .line 199
    new-array v4, v4, [B

    .line 200
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 205
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 206
    throw v1
.end method

.method public startWrite()Ljava/io/FileOutputStream;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AtomicFile"

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t rename file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to backup file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 104
    :cond_1
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 106
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    .line 113
    :catch_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
