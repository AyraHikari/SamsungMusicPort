.class public Lcom/samsung/android/sdk/ppmt/content/Card;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "Card"

.field private static final b:[I

.field private static final c:[J


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:J

.field private k:J

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:J

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    .line 46
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/sdk/ppmt/content/Card;->b:[I

    .line 48
    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->c:[J

    return-void

    :array_0
    .array-data 4
        0x6
        0x3
        0x2
    .end array-data

    :array_1
    .array-data 8
        0x493e0
        0x927c0
        0xdbba0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->e:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->f:Ljava/lang/String;

    .line 80
    iput p4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->w:I

    .line 81
    iput-object p5, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->o:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b(Ljava/lang/String;)I

    move-result v5

    .line 101
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    .line 103
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object v1

    .line 105
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->m(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->e(I)V

    .line 106
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->i(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/content/Card;->c(J)V

    .line 107
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->o()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 108
    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 112
    :catch_0
    :try_start_1
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get application icon"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    throw p0

    .line 93
    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get card. db open fail"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;-><init>()V

    throw p0

    .line 87
    :cond_2
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to get card. invalid params"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
        }
    .end annotation

    const-string v0, "1"

    .line 122
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "2"

    .line 124
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 127
    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] invalid marketingtype"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;-><init>()V

    throw p0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 6

    .line 345
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 347
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] handleCancelApiFail. dbHandler null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 351
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->g(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3ea

    if-eq p2, v2, :cond_1

    .line 356
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;I)Z

    :cond_1
    const/4 p2, 0x3

    if-le v1, p2, :cond_2

    .line 360
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    .line 361
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;I)Z

    .line 362
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->o:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->OVERCANCELRETRY:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v3, 0x0

    invoke-static {p1, p2, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 364
    new-instance p2, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {p2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_BASIC:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 365
    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    .line 366
    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    const-string v1, "extra_action"

    const-string v2, "download_resource"

    .line 367
    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    const-string v1, "mid"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    .line 368
    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    const-string v1, "targetid"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->o:Ljava/lang/String;

    .line 369
    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    .line 370
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object p2

    .line 371
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    goto :goto_0

    .line 373
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->f(I)J

    move-result-wide v4

    const/4 p2, 0x0

    add-long/2addr v2, v4

    .line 375
    new-instance p2, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {p2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_BASIC:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 376
    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    .line 377
    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    const-string v1, "extra_action"

    const-string v4, "req_cancel_status"

    .line 378
    invoke-virtual {p2, v1, v4}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    const-string v1, "mid"

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    .line 379
    invoke-virtual {p2, v1, v4}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    const-string v1, "targetid"

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->o:Ljava/lang/String;

    .line 380
    invoke-virtual {p2, v1, v4}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    .line 381
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object p2

    .line 383
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v1

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    throw p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 831
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 834
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;

    move-result-object v0

    .line 835
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->GONE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Fail to change card to [incomp_api] - Card not gone"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    .line 839
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 841
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    throw p1

    .line 844
    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Fail to change card to [incomp_api] - dbHandler is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 772
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 774
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to change card to [fail] - db null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 778
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 779
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;

    move-result-object v1

    .line 780
    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 781
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Fail to change card to [fail] - current state : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/content/CardState;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    .line 784
    :cond_2
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->FAILED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    .line 785
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/CardData;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->a(Ljava/lang/String;)Z

    .line 786
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 789
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method private a(Ljava/util/Calendar;IJI)V
    .locals 10

    .line 189
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr p3, v0

    const-wide/32 v0, 0x1b7740

    cmp-long v2, p3, v0

    if-lez v2, :cond_3

    const/16 v2, 0xb

    .line 191
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr p2, v2

    int-to-long v2, p2

    const-wide/32 v4, 0x36ee80

    mul-long v2, v2, v4

    const/16 p2, 0xc

    .line 192
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v4, p2

    const-wide/32 v6, 0xea60

    mul-long v4, v4, v6

    sub-long/2addr v2, v4

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v4, p2

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-gez p2, :cond_0

    const-wide/32 v8, 0x5265c00

    add-long/2addr v2, v8

    :cond_0
    int-to-long v8, p5

    mul-long v6, v6, v8

    cmp-long p2, v6, v2

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v6

    :goto_0
    const/4 p2, 0x0

    sub-long p2, p3, v0

    cmp-long p4, v2, p2

    if-lez p4, :cond_2

    goto :goto_1

    :cond_2
    move-wide p2, v2

    .line 205
    :goto_1
    invoke-static {v4, v5, p2, p3}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->a(JJ)J

    move-result-wide p2

    .line 206
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    add-long/2addr p4, p2

    invoke-virtual {p1, p4, p5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 207
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "["

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "] random display(s):"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 209
    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] do not random display. less than 30 min left until ttlTo"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static a(Lcom/samsung/android/sdk/ppmt/content/CardState;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 795
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 796
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->GONE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 797
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->FAILED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 798
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->CANCELED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 799
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 800
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "test"

    .line 741
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    .line 744
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "test"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b(Landroid/content/Context;I)V
    .locals 5

    const/16 v0, 0x190

    if-gt v0, p2, :cond_0

    const/16 v0, 0x1f4

    if-ge p2, v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->o:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DOWNLOAD_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, v2, p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x3ea

    if-eq p2, v0, :cond_4

    const/16 v0, 0x3ec

    if-eq p2, v0, :cond_3

    const/16 v0, 0x3f0

    if-eq p2, v0, :cond_3

    const/16 v0, 0x3f3

    if-eq p2, v0, :cond_3

    .line 505
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 507
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] resource download fail. dbHandler null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 511
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->g(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C1009_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 515
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->o:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DOWNLOAD_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p1, v1, v2, v3, p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    .line 518
    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    throw p1

    .line 498
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->o:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DOWNLOAD_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, v2, p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 524
    :cond_4
    :goto_0
    new-instance p2, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {p2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_BASIC:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 525
    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    .line 526
    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    const-string v0, "extra_action"

    const-string v1, "download_resource"

    .line 527
    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    const-string v0, "mid"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    .line 528
    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    const-string v0, "targetid"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->o:Ljava/lang/String;

    .line 529
    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    .line 530
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object p2

    .line 532
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 748
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "test"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    .line 753
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 755
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 756
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    const-string p0, "test"

    .line 757
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 805
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 808
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;

    move-result-object v1

    .line 809
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardState;->GONE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 810
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] card status is already [gone]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    .line 813
    :cond_0
    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 814
    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 815
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Fail to change card to [gone] - Card not displayed/incomp_api"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 821
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    .line 818
    :cond_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->GONE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    .line 819
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/CardData;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->a(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 821
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    throw p0

    .line 824
    :cond_2
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Fail to change card to [gone] - dbHandler is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const/16 v0, 0x3f7

    if-nez p2, :cond_0

    .line 287
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;I)V

    return-void

    .line 295
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "status"

    .line 296
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v2, "sts"

    .line 297
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "tip"

    .line 298
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0xc8

    const/4 v5, 0x0

    if-eq p2, v4, :cond_2

    const/16 v1, 0x190

    if-eq p2, v1, :cond_1

    .line 340
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 332
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 334
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->CANCELED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    .line 335
    iget-object p2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {p1, p2, v5}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;I)Z

    .line 336
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    goto :goto_1

    .line 307
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    int-to-long v0, v1

    const-wide/16 v8, 0x3e8

    mul-long v0, v0, v8

    cmp-long v0, v6, v0

    if-gtz v0, :cond_4

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->l()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    goto :goto_0

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    .line 318
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {p2, v0, v5}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;I)Z

    .line 319
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    .line 321
    new-instance p2, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {p2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_BASIC:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 322
    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    .line 323
    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    const-string v0, "extra_action"

    const-string v1, "download_resource"

    .line 324
    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    const-string v0, "mid"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    .line 325
    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    const-string v0, "targetid"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->o:Ljava/lang/String;

    .line 326
    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    .line 327
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object p2

    .line 328
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    goto :goto_1

    .line 312
    :cond_4
    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->USER_CHANGE_DATE_AND_TIME_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception p2

    .line 300
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to get cancel status. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private f(I)J
    .locals 5

    .line 391
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->m:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long v0, v0, v2

    packed-switch p1, :pswitch_data_0

    .line 408
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->b:[I

    const/4 v2, 0x2

    aget p1, p1, v2

    int-to-long v3, p1

    div-long/2addr v0, v3

    .line 409
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->c:[J

    aget-wide v3, p1, v2

    cmp-long p1, v0, v3

    if-gez p1, :cond_0

    .line 410
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->c:[J

    aget-wide v0, p1, v2

    goto :goto_0

    .line 402
    :pswitch_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->b:[I

    const/4 v2, 0x1

    aget p1, p1, v2

    int-to-long v3, p1

    div-long/2addr v0, v3

    .line 403
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->c:[J

    aget-wide v3, p1, v2

    cmp-long p1, v0, v3

    if-gez p1, :cond_0

    .line 404
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->c:[J

    aget-wide v0, p1, v2

    goto :goto_0

    .line 396
    :pswitch_1
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->b:[I

    const/4 v2, 0x0

    aget p1, p1, v2

    int-to-long v3, p1

    div-long/2addr v0, v3

    .line 397
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->c:[J

    aget-wide v3, p1, v2

    cmp-long p1, v0, v3

    if-gez p1, :cond_0

    .line 398
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->c:[J

    aget-wide v0, p1, v2

    :cond_0
    :goto_0
    const-wide/32 v2, 0x36ee80

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    move-wide v0, v2

    :cond_1
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private i(Landroid/content/Context;)V
    .locals 4

    .line 471
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 473
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] onResourceDownloadSuccess. dbHandler null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    .line 477
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;I)Z

    .line 478
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    .line 479
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->o:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DOWNLOADED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 481
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->g(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private j(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "marketing"

    .line 571
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "event"

    .line 572
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 575
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_2

    .line 577
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] fail to check optin. dbhandler null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "dberror"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 581
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->f()Z

    move-result v1

    if-nez v1, :cond_3

    .line 583
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] fail to display. currently opt out."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DISAGREE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 586
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return v1
.end method

.method private k(Landroid/content/Context;)Z
    .locals 5

    .line 593
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->w()Z

    move-result v0

    if-nez v0, :cond_2

    .line 594
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 598
    :try_start_0
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->s:I

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long v0, v0, v2

    .line 599
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(J)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->t:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 600
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] over frequency capping rule(day)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return v2

    .line 604
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->u:I

    int-to-long v0, v0

    const-wide/32 v3, 0x36ee80

    mul-long v0, v0, v3

    .line 605
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(J)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->v:I

    if-lt v0, v1, :cond_1

    .line 606
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] over frequency capping rule(hour)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    throw v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private l(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 626
    :try_start_0
    invoke-static {p1, p0}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/content/Card;)V

    .line 627
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->r()V
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$LocaleNotMatchException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 648
    :catch_0
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] fail to parse resource. IOException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v2, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return v0

    .line 644
    :catch_1
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] fail to parse resource"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v2, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return v0

    .line 640
    :catch_2
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] fail to parse resource. invalid card data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONTENTS_FILE_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v2, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return v0

    :catch_3
    move-exception v2

    .line 636
    sget-object v3, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] fail to parse resource. file not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONTENTS_FILE_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v2, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return v0

    .line 632
    :catch_4
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] fail to parse resource. not supported card type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->UNSUPPORTED_CARD_TYPE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v2, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return v0

    .line 629
    :catch_5
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] fail to parse resource. locale not matched"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->LOCALE_NOT_MATCHED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private static m(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 946
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 947
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 948
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    return p0
.end method

.method private u()Z
    .locals 5

    .line 140
    iget-wide v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->k:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->k:J

    .line 141
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->q:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private v()Z
    .locals 3

    .line 557
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 558
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    .line 559
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 560
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->i()I

    move-result v2

    if-gt v2, v1, :cond_1

    .line 561
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->j()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->j()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 566
    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] it\'s not display time ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private w()Z
    .locals 2

    .line 618
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->t:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->u:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->v:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private x()Z
    .locals 2

    .line 733
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "event"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 882
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->h:I

    return-void
.end method

.method public a(IIII)V
    .locals 0

    .line 960
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->s:I

    .line 961
    iput p2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->t:I

    .line 962
    iput p3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->u:I

    .line 963
    iput p4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->v:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 898
    iput-wide p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->j:J

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->i()I

    move-result v0

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->j()I

    move-result v3

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->k()J

    move-result-wide v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v1, v4

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->l()J

    move-result-wide v4

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->m()I

    move-result v6

    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v8, v8, v1

    if-gez v8, :cond_0

    .line 153
    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/16 v1, 0xb

    .line 156
    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v3, :cond_2

    if-ge v1, v0, :cond_1

    .line 159
    invoke-static {v7, v0, v2, v2}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->a(Ljava/util/Calendar;III)V

    goto :goto_0

    :cond_1
    if-gt v3, v1, :cond_3

    .line 161
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 162
    invoke-static {v7, v0, v2, v2}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->a(Ljava/util/Calendar;III)V

    goto :goto_0

    :cond_2
    if-gt v3, v1, :cond_3

    if-ge v1, v0, :cond_3

    .line 166
    invoke-static {v7, v0, v2, v2}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->a(Ljava/util/Calendar;III)V

    .line 170
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->x()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v1, p0

    move-object v2, v7

    .line 171
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Ljava/util/Calendar;IJI)V

    .line 174
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 180
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->q:J

    .line 181
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c(Ljava/lang/String;J)Z

    .line 182
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    .line 184
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] update expected display time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->q:J

    .line 185
    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 176
    :cond_5
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] fail to get card. dbhandler null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;-><init>()V

    throw p1
.end method

.method public a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 2

    .line 767
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->o:Ljava/lang/String;

    invoke-static {p1, v0, v1, p2, p3}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 7

    .line 674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    .line 677
    iget-wide v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->k:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    .line 679
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] over displayTime. expected :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ttlTo:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {v4, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 682
    sget-object p2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 687
    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    sget-object v3, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_BASIC:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 688
    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    .line 689
    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v2

    const-string v3, "extra_action"

    const-string v4, "display"

    .line 690
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v2

    const-string v3, "mid"

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    .line 691
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v2

    const-string v3, "targetid"

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->o:Ljava/lang/String;

    .line 692
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v2

    const-string v3, "is_first_display"

    .line 693
    invoke-virtual {v2, v3, p2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Z)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    .line 694
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object p2

    .line 695
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v2

    invoke-interface {v2, p1, p2, v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 979
    iput-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->r:Z

    return-void
.end method

.method public a()Z
    .locals 2

    const-string v0, "passive"

    .line 133
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "test"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->e:Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "marketing"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->e:Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "event"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->e:Ljava/lang/String;

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b(I)V
    .locals 0

    .line 890
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->i:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 906
    iput-wide p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->k:J

    return-void
.end method

.method public b(Landroid/content/Context;Z)V
    .locals 9

    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    .line 700
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/display/DisplayManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 703
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] fail to display card. displaymanager null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    sget-object p2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 707
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->q()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->l(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 708
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->t()Landroid/os/Bundle;

    move-result-object v1

    new-instance v8, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->o:Ljava/lang/String;

    iget-wide v5, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->k:J

    move-object v2, v8

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {v0, p1, v1, v8}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;)V

    :cond_3
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 926
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->n:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->j(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public c()J
    .locals 6

    .line 850
    iget-wide v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->q:J

    iget v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->m:I

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public c(I)V
    .locals 0

    .line 914
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->l:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 942
    iput-wide p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->q:J

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] over display time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", until:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->k:J

    .line 221
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 226
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_BASIC:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 229
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    .line 230
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    const-string v1, "extra_action"

    const-string v2, "req_cancel_status"

    .line 231
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    const-string v1, "mid"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    .line 232
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object v0

    .line 235
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->c()J

    move-result-wide v2

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V

    goto :goto_0

    .line 238
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    .line 244
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    .line 246
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_BASIC:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 247
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    .line 248
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    const-string v1, "extra_action"

    const-string v2, "download_resource"

    .line 249
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    const-string v1, "mid"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    .line 250
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    const-string v1, "targetid"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->o:Ljava/lang/String;

    .line 251
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object v0

    .line 253
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    goto :goto_0

    .line 240
    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] dbHandler null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 0

    .line 922
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->m:I

    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 7

    if-eqz p1, :cond_3

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", until:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->k:J

    .line 262
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] over display time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 268
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->p()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] fail to request get cancel status. appid null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "appid_error"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 275
    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/ppmt/network/request/GetCancelStatusRequest;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/sdk/ppmt/network/request/GetCancelStatusRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3c

    .line 276
    invoke-static {p1, v1, v0}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    move-result-object v0

    .line 277
    iget-boolean v1, v0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->a:Z

    if-eqz v1, :cond_2

    .line 278
    iget-object v0, v0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_2
    iget v0, v0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->b:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 2

    .line 854
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .line 956
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->p:I

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 8

    if-eqz p1, :cond_5

    .line 423
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->u()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", until:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->k:J

    .line 425
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] over display time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 433
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->n:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] fail to request resource. contents url not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v2, "contents_url_not_found"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "/"

    .line 439
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 440
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/samsung/android/sdk/ppmt/content/CardData;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x3c

    .line 452
    invoke-static {p1, v0, v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    move-result-object v0

    .line 454
    iget-boolean v4, v0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->a:Z

    if-eqz v4, :cond_4

    .line 455
    invoke-static {v3, v2, v3}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->i(Landroid/content/Context;)V

    goto :goto_0

    .line 458
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 459
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x3ef

    .line 461
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 465
    :cond_4
    iget v0, v0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->b:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->b(Landroid/content/Context;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 447
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] fail to request resource. invalid contents url. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 443
    :catch_1
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] fail to request resource"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f(Landroid/content/Context;)Z
    .locals 3

    .line 536
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 537
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->k(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 538
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->FC_LIMIT_OVER:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return v1

    .line 542
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 544
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;)V

    .line 545
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->g(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1

    .line 553
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->j(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g(Landroid/content/Context;)V
    .locals 4

    .line 656
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] over display time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 662
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_BASIC:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 663
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    .line 664
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    const-string v1, "extra_action"

    const-string v2, "display"

    .line 665
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    const-string v1, "mid"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    .line 666
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    const-string v1, "is_first_display"

    const/4 v2, 0x1

    .line 667
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Z)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object v0

    .line 670
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->q:J

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h(Landroid/content/Context;)V
    .locals 5

    .line 716
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 718
    sget-object p1, Lcom/samsung/android/sdk/ppmt/content/Card;->a:Ljava/lang/String;

    const-string v0, "fail to dismiss displayed card. dbHandler null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 722
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/display/DisplayManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 724
    iget v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->w:I

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->a(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 725
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 726
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->o:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->NONE_REACTION:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 729
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void
.end method

.method public i()I
    .locals 1

    .line 878
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->h:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 886
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->i:I

    return v0
.end method

.method public k()J
    .locals 2

    .line 894
    iget-wide v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->j:J

    return-wide v0
.end method

.method public l()J
    .locals 2

    .line 902
    iget-wide v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->k:J

    return-wide v0
.end method

.method public m()I
    .locals 1

    .line 910
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->l:I

    return v0
.end method

.method public n()I
    .locals 1

    .line 918
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->m:I

    return v0
.end method

.method public o()J
    .locals 2

    .line 938
    iget-wide v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->q:J

    return-wide v0
.end method

.method public p()I
    .locals 1

    .line 952
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->p:I

    return v0
.end method

.method public q()Z
    .locals 1

    .line 967
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->x:Z

    return v0
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x1

    .line 971
    iput-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->x:Z

    return-void
.end method

.method public s()Z
    .locals 1

    .line 975
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->r:Z

    return v0
.end method

.method public t()Landroid/os/Bundle;
    .locals 3

    .line 984
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mid"

    .line 985
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "targetid"

    .line 986
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "displayid"

    .line 987
    iget v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->w:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
