.class public Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/schedule/CardJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

.field private b:Landroid/os/Bundle;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->b:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob;-><init>(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mid should be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event should be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
