.class Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;-><init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Application;

.field final synthetic b:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Landroid/app/Application;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;->b:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;->a:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
