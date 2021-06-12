.class public Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$c;,
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Random;

.field private static b:I


# instance fields
.field private c:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

.field private d:Z

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->a:Ljava/util/Random;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b:I

    return v0
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic a(I)V
    .locals 3

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0x800

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string v0, "[SA_SDK]SAFileTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTransferCompleted() error_code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string v0, "onTransferCompleted() -> ERROR_PEER_AGENT_REJECTED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string v0, "onTransferCompleted() -> ERROR_PEER_AGENT_BUSY"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string v0, "onTransferCompleted() -> ERROR_CONNECTION_LOST"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string v0, "onTransferCompleted() -> ERROR_PEER_AGENT_NO_RESPONSE"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_4
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string v0, "onTransferCompleted() -> ERROR_COMMAND_DROPPED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_5
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string v0, "onTransferCompleted() -> ERROR_FILE_IO"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_6
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string v0, "onTransferCompleted() -> ERROR_CHANNEL_IO"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_7
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string v0, "onTransferCompleted() -> ERROR_NONE"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_8
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string v0, "onTransferCompleted() -> ERROR_REQUEST_NOT_QUEUED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string v0, "onTransferCompleted() -> ERROR_FATAL"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string v0, "onTransferCompleted() -> ERROR_SPACE_NOT_AVAILABLE"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->d:Z

    return p1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "[SA_SDK]SAFileTransfer"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File successfully renamed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "File rename failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "[SA_SDK]SAFileTransfer"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File successfully renamed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static synthetic b()I
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->b:I

    return v0
.end method

.method static synthetic b(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->c:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    return-object p0
.end method

.method static synthetic b(I)V
    .locals 3

    packed-switch p0, :pswitch_data_0

    const-string v0, "[SA_SDK]SAFileTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCancelAllCompleted() error_code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string v0, "onCancelAllCompleted() -> ERROR_TRANSACTION_NOT_FOUND"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string v0, "onCancelAllCompleted() -> ERROR_NOT_SUPPORTED"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->d:Z

    return p0
.end method
