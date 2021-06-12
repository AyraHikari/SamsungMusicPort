.class final Lcom/samsung/accessory/a/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/a/a/d$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:Z

.field private static g:Ljava/lang/String;

.field private static final h:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/accessory/a/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/samsung/accessory/a/a/d;->h:Ljava/util/TreeMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/accessory/a/a/d;->i:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    return-void
.end method

.method public static a(I)Lcom/samsung/accessory/a/a/a;
    .locals 1

    invoke-static {}, Lcom/samsung/accessory/a/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/accessory/a/a/d;->c(I)Lcom/samsung/accessory/a/a/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Bufferpool not initialised!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(II)Lcom/samsung/accessory/a/a/a;
    .locals 4

    sget-object v0, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/accessory/a/a/d;->d(I)Lcom/samsung/accessory/a/a/d$a;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/accessory/a/a/d$a;->b()Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_2

    sget v1, Lcom/samsung/accessory/a/a/d;->e:I

    array-length v3, v2

    sub-int/2addr v1, v3

    sput v1, Lcom/samsung/accessory/a/a/d;->e:I

    invoke-static {p0}, Lcom/samsung/accessory/a/a/d$a;->a(Lcom/samsung/accessory/a/a/d$a;)V

    new-instance v1, Lcom/samsung/accessory/a/a/a;

    invoke-direct {v1, v2, p1}, Lcom/samsung/accessory/a/a/a;-><init>([BI)V

    :cond_2
    monitor-exit v0

    return-object v1

    :cond_3
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a(ILjava/lang/String;)V
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/samsung/accessory/a/a/d;->g:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/samsung/accessory/a/a/d;->g:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    sget-object p0, Lcom/samsung/accessory/a/a/d;->g:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    sget-object p0, Lcom/samsung/accessory/a/a/d;->g:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_4
    sget-object p0, Lcom/samsung/accessory/a/a/d;->g:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/samsung/accessory/a/a/e;)V
    .locals 6

    invoke-static {}, Lcom/samsung/accessory/a/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x5

    const-string v0, "BufferPool already initialised!"

    invoke-static {p0, v0}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/samsung/accessory/a/a/d;->e:I

    iget v1, p0, Lcom/samsung/accessory/a/a/e;->c:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_6

    iget v1, p0, Lcom/samsung/accessory/a/a/e;->b:I

    iget v3, p0, Lcom/samsung/accessory/a/a/e;->c:I

    if-lt v1, v3, :cond_6

    iget-object v1, p0, Lcom/samsung/accessory/a/a/e;->a:Ljava/lang/String;

    sput-object v1, Lcom/samsung/accessory/a/a/d;->g:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/accessory/a/a/e;->b:I

    sput v1, Lcom/samsung/accessory/a/a/d;->a:I

    iget p0, p0, Lcom/samsung/accessory/a/a/e;->c:I

    sput p0, Lcom/samsung/accessory/a/a/d;->b:I

    const v1, 0x10400

    if-gt p0, v1, :cond_1

    sget p0, Lcom/samsung/accessory/a/a/d;->b:I

    goto :goto_0

    :cond_1
    const p0, 0x10400

    :goto_0
    sget v3, Lcom/samsung/accessory/a/a/d;->a:I

    const/4 v4, 0x4

    div-int/2addr v3, v4

    sput v3, Lcom/samsung/accessory/a/a/d;->c:I

    sget v3, Lcom/samsung/accessory/a/a/d;->a:I

    div-int/lit8 v3, v3, 0x2

    sput v3, Lcom/samsung/accessory/a/a/d;->d:I

    const/16 v3, 0x24

    const/16 v3, 0x18

    const/16 v5, 0x24

    :goto_1
    if-gt v3, p0, :cond_4

    if-gt v3, p0, :cond_2

    invoke-static {v3}, Lcom/samsung/accessory/a/a/d;->e(I)Z

    :cond_2
    if-eq v3, v2, :cond_3

    if-gt v5, p0, :cond_3

    invoke-static {v5}, Lcom/samsung/accessory/a/a/d;->e(I)Z

    :cond_3
    shl-int/lit8 v3, v3, 0x1

    shl-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/samsung/accessory/a/a/d;->e()V

    sget v2, Lcom/samsung/accessory/a/a/d;->b:I

    if-le v2, v1, :cond_5

    sget p0, Lcom/samsung/accessory/a/a/d;->b:I

    :cond_5
    invoke-static {p0}, Lcom/samsung/accessory/a/a/d;->e(I)Z

    const/4 p0, 0x1

    sput-boolean p0, Lcom/samsung/accessory/a/a/d;->f:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "BufferPool[v1.0.2] initialised with capacity "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/samsung/accessory/a/a/d;->a:I

    const/high16 v2, 0x100000

    div-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MB"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initialise the Bufferpool! [Cache size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/accessory/a/a/e;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; Max chunk size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/accessory/a/a/e;->c:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a()Z
    .locals 2

    sget-object v0, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/samsung/accessory/a/a/d;->f:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const/4 p0, 0x5

    const-string v1, "isLowMemoryDevice(): ActivityManager is null!"

    invoke-static {p0, v1}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    return v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0

    const/16 v1, 0x80

    if-ge p0, v1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static a([B)Z
    .locals 9

    invoke-static {}, Lcom/samsung/accessory/a/a/d;->a()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Failed to recycle buffer - Bufferpool not initialised!"

    :goto_0
    invoke-static {v1, p0}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "Cannot recycle null buffer!"

    goto :goto_0

    :cond_1
    array-length v0, p0

    sget-object v3, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v3

    const/16 v4, 0x18

    if-lt v0, v4, :cond_9

    :try_start_0
    sget v4, Lcom/samsung/accessory/a/a/d;->b:I

    if-le v0, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v3, Lcom/samsung/accessory/a/a/d;->h:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    sget-object v4, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    invoke-static {v3}, Lcom/samsung/accessory/a/a/d;->d(I)Lcom/samsung/accessory/a/a/d$a;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/samsung/accessory/a/a/d$a;->a()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/accessory/a/a/d$a;->e()Z

    move-result v7

    if-nez v7, :cond_4

    monitor-exit v4

    return v2

    :cond_4
    sget v7, Lcom/samsung/accessory/a/a/d;->e:I

    add-int/2addr v7, v0

    sget v8, Lcom/samsung/accessory/a/a/d;->a:I

    if-le v7, v8, :cond_6

    invoke-virtual {v5}, Lcom/samsung/accessory/a/a/d$a;->d()F

    move-result v5

    float-to-int v5, v5

    div-int/2addr v5, v3

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-lt v7, v5, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Cannot recycle buffer \'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\', Buffer chunk count("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") exceeded the limit"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    monitor-exit v4

    return v2

    :cond_5
    invoke-static {}, Lcom/samsung/accessory/a/a/d;->d()I

    sget v5, Lcom/samsung/accessory/a/a/d;->e:I

    add-int/2addr v5, v0

    sget v7, Lcom/samsung/accessory/a/a/d;->a:I

    if-le v5, v7, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Cannot recycle buffer \'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\', Buffer cache limit exceeded!!!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    monitor-exit v4

    return v2

    :cond_6
    if-ne v3, v0, :cond_7

    invoke-virtual {v6, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v6, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_2
    sget p0, Lcom/samsung/accessory/a/a/d;->e:I

    add-int/2addr p0, v0

    sput p0, Lcom/samsung/accessory/a/a/d;->e:I

    const/4 p0, 0x1

    monitor-exit v4

    return p0

    :cond_8
    monitor-exit v4

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_9
    :goto_3
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "Cannot recycle buffer \'"

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\', Non-matcing size!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    monitor-exit v3

    return v2

    :goto_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public static b(I)Z
    .locals 7

    invoke-static {}, Lcom/samsung/accessory/a/a/d;->a()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Failed to clear cache - Bufferpool not initialised!"

    invoke-static {v1, p0}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    return v2

    :cond_0
    sget-object v0, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v0

    if-eq p0, v1, :cond_3

    const/16 v3, 0xa

    if-eq p0, v3, :cond_2

    const/16 v3, 0xf

    if-eq p0, v3, :cond_1

    const/16 v3, 0x28

    if-eq p0, v3, :cond_3

    const/16 v3, 0x3c

    if-eq p0, v3, :cond_2

    const/16 v3, 0x50

    if-eq p0, v3, :cond_1

    :try_start_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    sget v3, Lcom/samsung/accessory/a/a/d;->d:I

    goto :goto_0

    :cond_3
    sget v3, Lcom/samsung/accessory/a/a/d;->c:I

    :goto_0
    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ClearCache["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] : Cache Size BEFORE = "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/samsung/accessory/a/a/d;->e:I

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    sget p0, Lcom/samsung/accessory/a/a/d;->e:I

    if-gt p0, v3, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "ClearCache : Current cache size is lesser than the threshold of "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    monitor-exit v0

    return v2

    :cond_4
    sget-object p0, Lcom/samsung/accessory/a/a/d;->i:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    :goto_1
    if-ge v2, p0, :cond_6

    sget-object v1, Lcom/samsung/accessory/a/a/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/a/a/d$a;

    invoke-virtual {v1}, Lcom/samsung/accessory/a/a/d$a;->b()Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_5

    :goto_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    sget v4, Lcom/samsung/accessory/a/a/d;->e:I

    if-le v4, v3, :cond_5

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    sget v5, Lcom/samsung/accessory/a/a/d;->e:I

    array-length v4, v4

    sub-int/2addr v5, v4

    sput v5, Lcom/samsung/accessory/a/a/d;->e:I

    goto :goto_2

    :cond_5
    sget v1, Lcom/samsung/accessory/a/a/d;->e:I

    if-le v1, v3, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/4 p0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClearCache : Cache Size AFTER = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/samsung/accessory/a/a/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/samsung/accessory/a/a/d;->a:I

    return v0
.end method

.method private static c(I)Lcom/samsung/accessory/a/a/a;
    .locals 6

    sget-object v0, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/samsung/accessory/a/a/d;->b:I

    if-le p0, v1, :cond_0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Buffer \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\' is not matching with the pool sizes! creating new..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    new-instance v1, Lcom/samsung/accessory/a/a/a;

    new-array v2, p0, [B

    invoke-direct {v1, v2, p0}, Lcom/samsung/accessory/a/a/a;-><init>([BI)V

    monitor-exit v0

    return-object v1

    :cond_0
    sget-object v1, Lcom/samsung/accessory/a/a/d;->h:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    move v1, p0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-static {v1, p0}, Lcom/samsung/accessory/a/a/d;->a(II)Lcom/samsung/accessory/a/a/a;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v3, 0x1

    move v4, v1

    :goto_1
    if-nez v2, :cond_3

    const/4 v5, 0x3

    if-gt v3, v5, :cond_3

    sget-object v5, Lcom/samsung/accessory/a/a/d;->h:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_2

    const v4, 0x7fffffff

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_2
    const/16 v5, 0x18

    if-lt v4, v5, :cond_3

    const v5, 0x10400

    if-gt v4, v5, :cond_3

    sget v5, Lcom/samsung/accessory/a/a/d;->b:I

    if-gt v4, v5, :cond_3

    invoke-static {v4, p0}, Lcom/samsung/accessory/a/a/d;->a(II)Lcom/samsung/accessory/a/a/a;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    new-instance v2, Lcom/samsung/accessory/a/a/a;

    new-array v3, v1, [B

    invoke-direct {v2, v3, p0}, Lcom/samsung/accessory/a/a/a;-><init>([BI)V

    invoke-static {v1}, Lcom/samsung/accessory/a/a/d;->d(I)Lcom/samsung/accessory/a/a/d$a;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/samsung/accessory/a/a/d$a;->a(Lcom/samsung/accessory/a/a/d$a;)V

    :cond_4
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static d()I
    .locals 10

    sget-object v0, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/samsung/accessory/a/a/d;->e:I

    sget-object v2, Lcom/samsung/accessory/a/a/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    sget-object v5, Lcom/samsung/accessory/a/a/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/accessory/a/a/d$a;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/samsung/accessory/a/a/d$a;->d()F

    move-result v6

    invoke-virtual {v5}, Lcom/samsung/accessory/a/a/d$a;->c()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5}, Lcom/samsung/accessory/a/a/d$a;->b()Ljava/util/LinkedList;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v7

    :cond_1
    :goto_1
    if-le v7, v6, :cond_2

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    sget v9, Lcom/samsung/accessory/a/a/d;->e:I

    array-length v8, v8

    sub-int/2addr v9, v8

    sput v9, Lcom/samsung/accessory/a/a/d;->e:I

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pool Stabilized; Cache size reduced from  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/accessory/a/a/d;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/accessory/a/a/d;->a(ILjava/lang/String;)V

    sget v2, Lcom/samsung/accessory/a/a/d;->e:I

    sub-int/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static d(I)Lcom/samsung/accessory/a/a/d$a;
    .locals 2

    sget-object v0, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/accessory/a/a/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/accessory/a/a/d$a;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static e()V
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sget-object v2, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    :try_start_0
    aget v4, v1, v3

    invoke-static {v4}, Lcom/samsung/accessory/a/a/d;->e(I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :array_0
    .array-data 4
        0x780b
        0x800b
        0xf00b
        0x10005
    .end array-data
.end method

.method private static e(I)Z
    .locals 5

    sget-object v0, Lcom/samsung/accessory/a/a/d;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/samsung/accessory/a/a/d;->b:I

    const/4 v2, 0x0

    if-gt p0, v1, :cond_0

    sget-object v1, Lcom/samsung/accessory/a/a/d;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    sget-object v1, Lcom/samsung/accessory/a/a/d;->h:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/accessory/a/a/d;->i:Landroid/util/SparseArray;

    new-instance v3, Lcom/samsung/accessory/a/a/d$a;

    invoke-direct {v3, p0, v2}, Lcom/samsung/accessory/a/a/d$a;-><init>(IB)V

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
