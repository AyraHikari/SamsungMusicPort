.class Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$2;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$2;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->c(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->c()V

    return-void
.end method
