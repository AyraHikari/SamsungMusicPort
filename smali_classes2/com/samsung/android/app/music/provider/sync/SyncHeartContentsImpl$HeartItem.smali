.class final Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeartItem"
.end annotation


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:I

.field d:Ljava/lang/String;

.field e:J

.field f:I

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:I

.field j:I


# direct methods
.method constructor <init>(JLjava/lang/String;ILjava/lang/String;JILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-wide p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->a:J

    .line 452
    iput-object p3, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->b:Ljava/lang/String;

    .line 453
    iput p4, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->c:I

    .line 454
    iput-object p5, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->d:Ljava/lang/String;

    .line 455
    iput-wide p6, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->e:J

    .line 456
    iput p8, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->f:I

    .line 457
    iput-object p9, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->g:Ljava/lang/String;

    .line 458
    iput-object p10, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->h:Ljava/lang/String;

    .line 459
    iput p11, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->i:I

    const/4 p1, -0x1

    .line 460
    iput p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->j:I

    return-void
.end method


# virtual methods
.method a(ILjava/lang/String;)I
    .locals 1

    .line 468
    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->c:I

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 470
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->c:I

    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 473
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method a(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 486
    iget-wide v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->e:J

    cmp-long p2, v0, p2

    if-nez p2, :cond_1

    iget p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->f:I

    if-ne p2, p4, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->g:Ljava/lang/String;

    .line 487
    invoke-virtual {p2, p5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->h:Ljava/lang/String;

    invoke-virtual {p2, p6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl$HeartItem;->b:Ljava/lang/String;

    .line 488
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

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
