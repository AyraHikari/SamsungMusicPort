.class public abstract Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/context/sdk/samsunganalytics/LogBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "LogBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->a:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$1;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->d()Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "pn"

    .line 125
    invoke-virtual {p0, v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    .line 126
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->d()Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ts"

    .line 119
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    .line 120
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->a:Ljava/util/Map;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract d()Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
