.class Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/Callback<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;Landroid/content/Context;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;->a(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;)V

    .line 43
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->b(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;)V

    .line 44
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;Landroid/content/Context;)V

    const/4 p1, 0x0

    return-object p1
.end method
