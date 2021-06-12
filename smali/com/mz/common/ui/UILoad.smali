.class public Lcom/mz/common/ui/UILoad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x4
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mz/common/ui/UILoad$ImageBaseUrl;,
        Lcom/mz/common/ui/UILoad$ImageName;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/mz/common/ui/UILoad;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lcom/mz/common/ui/UILoad;)Landroid/graphics/Bitmap;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mz/common/ui/UILoad;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic a(Lcom/mz/common/ui/UILoad;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/mz/common/ui/UILoad;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/widget/RelativeLayout;Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 48
    iget-object p2, p0, Lcom/mz/common/ui/UILoad;->a:Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    .line 49
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/mz/common/ui/UILoad$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/mz/common/ui/UILoad$1;-><init>(Lcom/mz/common/ui/UILoad;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 83
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 8

    .line 174
    iget-object v0, p0, Lcom/mz/common/ui/UILoad;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/mz/common/ui/UILoad$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mz/common/ui/UILoad$4;-><init>(Lcom/mz/common/ui/UILoad;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 208
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 89
    iget-object p2, p0, Lcom/mz/common/ui/UILoad;->a:Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    .line 90
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/mz/common/ui/UILoad$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/mz/common/ui/UILoad$2;-><init>(Lcom/mz/common/ui/UILoad;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
