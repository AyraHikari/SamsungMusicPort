.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;
    }
.end annotation


# static fields
.field private static a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;
    .locals 2

    if-nez p1, :cond_1

    .line 24
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DLC:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    if-nez v0, :cond_5

    .line 28
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DLC:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    invoke-virtual {p1, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;

    invoke-direct {p1, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    goto :goto_1

    .line 32
    :cond_2
    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    invoke-virtual {p1, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;

    invoke-direct {p1, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    goto :goto_1

    .line 35
    :cond_3
    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DMA:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    invoke-virtual {p1, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 36
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    invoke-direct {p1, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    .line 39
    :cond_4
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 41
    :cond_5
    :goto_2
    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    return-object p0
.end method
