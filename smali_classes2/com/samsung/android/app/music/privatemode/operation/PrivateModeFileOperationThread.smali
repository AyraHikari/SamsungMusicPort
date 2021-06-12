.class Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

.field private h:I

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/os/Handler;

.field private n:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[JZ)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 81
    new-instance v0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;-><init>(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->g:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a:Landroid/content/Context;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->c:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->k:Ljava/lang/String;

    .line 108
    iput-boolean p4, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->b:Z

    .line 109
    new-instance p2, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;

    invoke-direct {p2, p1, p3, p4}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;-><init>(Landroid/content/Context;[JZ)V

    iput-object p2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->n:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;

    .line 111
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->k:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 112
    sget-object p1, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->k:Ljava/lang/String;

    .line 113
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->k:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "PrivateMode"

    const-string p2, "Fail to make directory"

    .line 115
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->k:Ljava/lang/String;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->k:Ljava/lang/String;

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->k:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->e:Z

    .line 124
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->b:Z

    if-eqz p1, :cond_3

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->i:Ljava/util/ArrayList;

    .line 126
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->j:Ljava/util/HashMap;

    .line 128
    :cond_3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->m:Landroid/os/Handler;

    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string v0, "PrivateMode"

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveFile() To :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$1;-><init>(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;)V

    invoke-static {p3, p4, v1}, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->a(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/privatemode/operation/FileOperation$IprogressCallback;)I

    move-result p3

    const/4 v1, -0x3

    if-eq p3, v1, :cond_2

    if-eqz p3, :cond_1

    const-string p1, "PrivateMode"

    .line 402
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "moveFile() - FAIL case :"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string p3, "PrivateMode"

    const-string v0, "moveFile() Success"

    .line 393
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a(JLjava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string p1, "PrivateMode"

    const-string p2, "moveFile() - Space Insufficient "

    .line 397
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a()V

    .line 399
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->m:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->h:I

    return p0
.end method

.method private a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "bucket_display_name"

    .line 311
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 313
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/music/util/UiUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Music"

    .line 314
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 317
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    :cond_0
    const-string p1, "/"

    .line 319
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 332
    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 334
    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->f:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 335
    iput v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->f:I

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->m:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "PrivateMode"

    const-string v1, "checkDuplicatedFile() there is duplicated file.So wait user action "

    .line 352
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 356
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v0, "PrivateMode"

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDuplicatedFile() mMoveAction :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->f:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    .line 363
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->l:Ljava/lang/String;

    goto :goto_1

    .line 365
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->f:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_2

    .line 366
    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_1
    return-object p1
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x2e

    .line 419
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x29

    const/16 v2, 0x28

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x0

    .line 421
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 422
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 427
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(ILjava/lang/String;I)V
    .locals 2

    .line 435
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "progress"

    .line 436
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "curFilename"

    .line 437
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "curPercent"

    .line 438
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 439
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->m:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->m:Landroid/os/Handler;

    const/4 p3, 0x6

    invoke-static {p2, p3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 7

    .line 489
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "selectionArgs"

    const/4 v2, 0x1

    .line 490
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE audio_playlists_map SET audio_data=? WHERE audio_data IS NOT NULL AND audio_data NOT LIKE \'dummy%\' AND audio_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 493
    iget-object v3, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "content://com.sec.android.app.music/"

    .line 494
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "exec_sql"

    invoke-virtual {v3, v5, v6, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 497
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "selectionArgs"

    .line 498
    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 499
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE favorite_tracks_map SET audio_data=? WHERE audio_data IS NOT NULL AND audio_data NOT LIKE \'dummy%\' AND audio_id="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 501
    iget-object p2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "content://com.sec.android.app.music/"

    .line 502
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v1, "exec_sql"

    invoke-virtual {p2, p3, v1, p1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .line 443
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 446
    invoke-static {}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 447
    new-array v0, v0, [Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/app/music/util/UiUtils;->e:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 448
    invoke-static {p1}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 450
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/music/util/UiUtils;->e:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 452
    :goto_0
    new-instance v1, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$2;-><init>(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;)V

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/support/android/media/MediaScannerConnectionCompat;->scanDirectories(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_1

    .line 466
    :cond_1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/MusicIntent;->ACTION_MEDIA_SCAN_LAUNCH:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/app/music/util/UiUtils;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 466
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 470
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    .line 471
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCAN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/app/music/util/UiUtils;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 472
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 471
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;ILjava/lang/String;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->l:Ljava/lang/String;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 411
    :goto_0
    new-instance v1, Ljava/io/File;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 1

    .line 483
    invoke-static {}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    invoke-static {p1}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a:Landroid/content/Context;

    .line 485
    invoke-static {p1}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a:Landroid/content/Context;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    .line 478
    iget-boolean v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->c:Ljava/lang/String;

    .line 479
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    const-string v0, "_data=?"

    const/4 v1, 0x1

    .line 508
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 511
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 512
    iget-object v2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a:Landroid/content/Context;

    invoke-static {v2, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 515
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    .line 516
    iget-object v3, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a:Landroid/content/Context;

    invoke-static {v3, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "PrivateMode"

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFromProvider : mediaProvider:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , musicProvider:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 13

    const-string v0, "PrivateMode"

    const-string v1, "moveSelectedItem() start"

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->n:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->b()V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->n:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 227
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->n:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->e(Landroid/database/Cursor;)V

    .line 236
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 239
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->k:Ljava/lang/String;

    const-string v4, ""

    .line 242
    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->d:Z

    if-eqz v5, :cond_2

    goto/16 :goto_2

    .line 245
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->b(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v3, "PrivateMode"

    const-string v4, "moveSelectedItem() At this time, Private mode off or private dir unmounted"

    .line 246
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 251
    :cond_3
    iget-boolean v5, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->b:Z

    if-eqz v5, :cond_4

    .line 253
    iget-object v5, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->n:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;

    invoke-virtual {v5, v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->d(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_4

    .line 254
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 255
    new-instance v3, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;-><init>(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$1;)V

    iput-object v3, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->g:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    .line 256
    iget-object v3, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v5

    .line 263
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->n:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;

    invoke-virtual {v5, v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->a(Landroid/database/Cursor;)J

    move-result-wide v5

    .line 264
    iget-object v7, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->n:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 265
    iget-object v8, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->n:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;

    invoke-virtual {v8, v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeCursorManager;->c(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    .line 266
    invoke-direct {p0, v7}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->c(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 267
    iget-object v5, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->g:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    iget v6, v5, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->b:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->b:I

    goto :goto_1

    .line 269
    :cond_5
    iput-object v8, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->l:Ljava/lang/String;

    .line 270
    iget-object v9, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->g:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    iget v10, v9, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->a:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v12, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->b:Z

    if-eqz v12, :cond_6

    move-object v12, v3

    goto :goto_0

    :cond_6
    iget-object v12, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->k:Ljava/lang/String;

    :goto_0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a(JLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    add-int/2addr v10, v5

    iput v10, v9, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->a:I

    .line 273
    :goto_1
    iget v5, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->h:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->h:I

    if-eqz v7, :cond_7

    .line 275
    iget-boolean v5, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->b:Z

    if-eqz v5, :cond_7

    .line 277
    iget-object v5, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->j:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->g:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x2f

    .line 280
    invoke-virtual {v7, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v7, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 281
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-static {v6}, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->a(Ljava/io/File;)I

    move-result v6

    if-nez v6, :cond_7

    .line 283
    invoke-static {v5}, Lcom/samsung/android/app/music/privatemode/operation/FileOperation;->a(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "PrivateMode"

    .line 284
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doMoveFolder() Delete SrcFolder : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 290
    :goto_2
    iget v3, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->h:I

    iget-object v4, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->l:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a(ILjava/lang/String;I)V

    .line 291
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 295
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "content://com.sec.android.app.music/audio/playlists/#/members"

    .line 296
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 295
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 298
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_8

    .line 299
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "content://com.sec.android.app.music/milk/playlists/#/members"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 304
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v3

    .line 290
    iget v4, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->h:I

    iget-object v5, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->l:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a(ILjava/lang/String;I)V

    .line 291
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 295
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "content://com.sec.android.app.music/audio/playlists/#/members"

    .line 296
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 295
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 298
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_9

    .line 299
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "content://com.sec.android.app.music/milk/playlists/#/members"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 304
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_a
    :goto_3
    const-string v1, "PrivateMode"

    const-string v2, "moveSelectedItem(), cursor is null or size is 0"

    .line 228
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_b

    .line 230
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_b
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->d:Z

    return-void
.end method

.method public a(IZ)V
    .locals 3

    const-string v0, "PrivateMode"

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAction() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " allApply "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    or-int/lit8 p1, p1, 0x8

    .line 161
    iput p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->f:I

    goto :goto_0

    .line 163
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->f:I

    .line 165
    :goto_0
    monitor-enter p0

    .line 167
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "PrivateMode"

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAction() Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->m:Landroid/os/Handler;

    return-void
.end method

.method public b()I
    .locals 4

    .line 180
    iget-boolean v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->b:Z

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 183
    iget-object v3, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->j:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    .line 184
    iget v2, v2, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->a:I

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->g:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    iget v1, v0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->a:I

    :cond_2
    return v1
.end method

.method public c()I
    .locals 4

    .line 196
    iget-boolean v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->b:Z

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 199
    iget-object v3, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->j:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    .line 200
    iget v2, v2, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->a:I

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->g:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;

    iget v1, v0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$MovedItemCnt;->b:I

    :cond_2
    return v1
.end method

.method public d()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->e:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->k:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->b:Z

    return v0
.end method

.method public run()V
    .locals 7

    const-wide/16 v0, 0xc8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 138
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->g()V

    .line 139
    iget-object v4, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->b()I

    move-result v4

    .line 142
    iget-boolean v5, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->d:Z

    if-eqz v5, :cond_0

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->m:Landroid/os/Handler;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->m:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->m:Landroid/os/Handler;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v4

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->b()I

    move-result v5

    .line 142
    iget-boolean v6, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->d:Z

    if-eqz v6, :cond_1

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->m:Landroid/os/Handler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 145
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->m:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->m:Landroid/os/Handler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v2, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 147
    :goto_1
    throw v4
.end method
