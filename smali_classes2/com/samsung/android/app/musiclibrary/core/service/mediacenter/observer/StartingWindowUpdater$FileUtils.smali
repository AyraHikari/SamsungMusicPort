.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileUtils"
.end annotation


# static fields
.field private static final S_IRGRP:I = 0x20

.field private static final S_IROTH:I = 0x4

.field private static final S_IRWXU:I = 0x1c0

.field private static final S_IXGRP:I = 0x8

.field private static final S_IXOTH:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Ljava/io/File;)V
    .locals 0

    .line 615
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$FileUtils;->setFileOthersPermission(Ljava/io/File;)V

    return-void
.end method

.method private static setFileOthersPermission(Ljava/io/File;)V
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0x1ed

    .line 618
    invoke-static {p0, v1, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$FileUtils;->setPermissions(Ljava/io/File;III)I

    return-void
.end method

.method private static setPermissions(Ljava/io/File;III)I
    .locals 0

    .line 645
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method private static setPermissions(Ljava/lang/String;III)I
    .locals 1

    .line 658
    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    .line 667
    :cond_0
    :try_start_1
    invoke-static {p0, p2, p3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p1

    const-string p2, "SMUSIC-ArtWork"

    .line 669
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to chown("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "): "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget p0, p1, Landroid/system/ErrnoException;->errno:I

    return p0

    :catch_1
    move-exception p1

    const-string p2, "SMUSIC-ArtWork"

    .line 660
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to chmod("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "): "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget p0, p1, Landroid/system/ErrnoException;->errno:I

    return p0
.end method
