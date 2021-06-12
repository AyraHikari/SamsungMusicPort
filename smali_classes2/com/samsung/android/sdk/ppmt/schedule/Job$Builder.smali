.class public Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/schedule/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

.field private b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public a()Lcom/samsung/android/sdk/ppmt/schedule/Job;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->b:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Job;-><init>(Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;Landroid/os/Bundle;)V

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event should be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
