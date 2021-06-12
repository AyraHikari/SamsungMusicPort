.class public final Lcom/samsung/android/app/music/player/lockplayer/LockActivity$keyListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$keyListener$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(I)Z
    .locals 0

    sparse-switch p1, :sswitch_data_0

    .line 207
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result p1

    goto :goto_0

    :sswitch_0
    const/4 p1, 0x1

    :goto_0
    return p1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
        0x17 -> :sswitch_0
        0x2d -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x6f -> :sswitch_0
        0x73 -> :sswitch_0
        0x74 -> :sswitch_0
        0x8f -> :sswitch_0
        0xa0 -> :sswitch_0
        0xab -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 192
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result p2

    if-eq p2, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$keyListener$1;->a(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$keyListener$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->b(F)V

    .line 194
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$keyListener$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$keyListener$1;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->f(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;->b(Landroid/view/View;)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
