.class Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$4;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$4;->a(Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 2

    .line 170
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$4;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->n()Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    move-result-object p1

    if-nez p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$4;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$4;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$4;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    .line 174
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$4;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$4;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->a(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
