.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V
    .locals 6

    const-string v1, ""

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->a:Ljava/lang/String;

    .line 19
    iput-wide p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->b:J

    .line 20
    iput-object p4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->c:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->b:J

    return-void
.end method

.method public a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->a:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->b:J

    return-wide v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    return-object v0
.end method
