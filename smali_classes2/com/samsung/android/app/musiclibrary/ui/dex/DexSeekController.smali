.class public Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;


# static fields
.field private static final a:Ljava/lang/String; = "DexSeekController"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private c:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->d:Z

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-void
.end method

.method private a()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->a()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 4

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->a()V

    .line 118
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a(Landroid/view/KeyEvent;)V
    .locals 4

    .line 90
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a(J)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    sub-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a(J)V

    :goto_0
    return-void
.end method

.method private b(Landroid/view/KeyEvent;)V
    .locals 4

    .line 98
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a(J)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a(J)V

    :goto_0
    return-void
.end method

.method private c(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 106
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onForward()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->g()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 34
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown keyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x15

    if-ne p1, v1, :cond_0

    .line 38
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->a(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x16

    if-ne p1, v1, :cond_1

    .line 41
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->b(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->c(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x22

    if-ne p1, v1, :cond_2

    .line 44
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->d:Z

    if-nez p1, :cond_4

    .line 45
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->a(I)V

    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->d:Z

    goto :goto_0

    .line 49
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->c(Landroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x2e

    if-ne p1, p2, :cond_3

    .line 50
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->d:Z

    if-nez p1, :cond_4

    const/4 p1, 0x2

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->a(I)V

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->d:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 61
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp keyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x16

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->c(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x22

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 70
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->c(Landroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x2e

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 73
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->a()V

    .line 74
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->d:Z

    return v1
.end method

.method public onRewind()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->f()V

    return-void
.end method
