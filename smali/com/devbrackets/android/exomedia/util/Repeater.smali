.class public Lcom/devbrackets/android/exomedia/util/Repeater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;,
        Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;
    }
.end annotation


# instance fields
.field protected volatile a:Z

.field protected b:I

.field protected c:Landroid/os/Handler;

.field protected d:Landroid/os/HandlerThread;

.field protected e:Z

.field protected f:Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;

.field protected g:Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, v0}, Lcom/devbrackets/android/exomedia/util/Repeater;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->a:Z

    const/16 v1, 0x21

    .line 37
    iput v1, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->b:I

    .line 41
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->e:Z

    .line 44
    new-instance v0, Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;-><init>(Lcom/devbrackets/android/exomedia/util/Repeater;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->g:Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;

    if-eqz p1, :cond_0

    .line 55
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->c:Landroid/os/Handler;

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->e:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 91
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->a:Z

    .line 94
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->e:Z

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoMedia_Repeater_HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->d:Landroid/os/HandlerThread;

    .line 96
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->c:Landroid/os/Handler;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->g:Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/Repeater$PollRunnable;->a()V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->b:I

    return-void
.end method

.method public a(Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 130
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->f:Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;

    return-void
.end method

.method public b()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/Repeater;->a:Z

    return-void
.end method
