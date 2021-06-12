.class Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender$1;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender$1;->a(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender$1;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;)V

    const/4 p1, 0x0

    return-object p1
.end method
