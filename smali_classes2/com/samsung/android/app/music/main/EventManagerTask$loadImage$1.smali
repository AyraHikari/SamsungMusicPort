.class final Lcom/samsung/android/app/music/main/EventManagerTask$loadImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/EventManagerTask;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/EventManagerTask;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/EventManagerTask;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$loadImage$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    iput p2, p0, Lcom/samsung/android/app/music/main/EventManagerTask$loadImage$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 413
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xca

    goto :goto_0

    .line 417
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$loadImage$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/EventManagerTask;->f(Lcom/samsung/android/app/music/main/EventManagerTask;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 418
    iget-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$loadImage$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    iget v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask$loadImage$1;->b:I

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/main/EventManagerTask;->a(Lcom/samsung/android/app/music/main/EventManagerTask;I)V

    .line 419
    iget-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$loadImage$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/main/EventManagerTask;->b(Lcom/samsung/android/app/music/main/EventManagerTask;Z)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
