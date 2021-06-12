.class final Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f130414

    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;->a:Landroid/view/View;

    .line 23
    iget-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;->a:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 24
    iget-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;->a:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController$1;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;->a:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 35
    iget-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;->a:Landroid/view/View;

    const v0, 0x7f0b0309

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;->b:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 50
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    sget p1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->a:I

    sget v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->f:I

    or-int/2addr p1, v0

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method
