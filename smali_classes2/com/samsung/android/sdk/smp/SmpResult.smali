.class public Lcom/samsung/android/sdk/smp/SmpResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(ZLandroid/os/Bundle;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/SmpResult;->a:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/sdk/smp/SmpResult;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/SmpResult;->a:Z

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpResult;->b:Landroid/os/Bundle;

    return-object v0
.end method
