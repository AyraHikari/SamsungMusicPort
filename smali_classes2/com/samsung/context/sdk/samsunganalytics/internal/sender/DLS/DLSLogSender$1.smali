.class Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;
.super Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->e(Ljava/util/Map;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;I)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;

    iput p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;->a:I

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 156
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    :goto_0
    invoke-virtual {p1, v0, v1, p3, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    .line 157
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->b(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;)Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;->a:I

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    array-length p3, p3

    mul-int/lit8 p3, p3, -0x1

    invoke-static {p1, p2, p3}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->b(Landroid/content/Context;II)V

    return-void
.end method
